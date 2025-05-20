#!/usr/bin/env python

# This script uses the following Unicode tables:
# - UnicodeData.txt



import csv
from typing import Generator, Iterable, NamedTuple, Tuple

NUM_CODEPOINTS = 0x110000


def to_ranges(iter : Generator[int, None, None]) -> Generator[Tuple[int, int], None, None]:
    current : None | list[int] = None
    for i in iter:
        if current is None or i != current[1] or i in (0x10000, 0x20000):
            if current is not None:
                yield (current[0], current[1])
            current = [i, i + 1]
        else:
            current[1] += 1
    if current is not None:
        yield (current[0], current[1])



class Codepoint(NamedTuple):
    value: int
    class_ : str | None



def get_escaped(codepoints: Generator[Codepoint, None, None]) -> Generator[int, None, None]:
    for c in codepoints:
        if (c.class_ or "Cn") in "Cc Cf Cs Co Cn Zl Zp Zs".split() and c.value != ord(
            " "
        ):
            yield c.value


def get_file(f : str) -> Iterable[str]:
    try:
        return open(f)
    except FileNotFoundError:
        print("require UnicodeData.txt")
        exit(1)


def get_codepoints(f : Iterable[str]) -> Generator[Codepoint, None, None]:
    r = csv.reader(f, delimiter=";")
    prev_codepoint = 0
    class_first: str | None = None
    for row in r:
        codepoint = int(row[0], 16)
        name = row[1]
        class_ = row[2]

        if class_first is not None:
            if not name.endswith("Last>"):
                raise ValueError("Missing Last after First")

        for c in range(prev_codepoint + 1, codepoint):
            yield Codepoint(c, class_first)

        class_first = None
        if name.endswith("First>"):
            class_first = class_

        yield Codepoint(codepoint, class_)
        prev_codepoint = codepoint

    if class_first is not None:
        raise ValueError("Missing Last after First")

    for c in range(prev_codepoint + 1, NUM_CODEPOINTS):
        yield Codepoint(c, None)


def compress_singletons(singletons: list[int]) -> Tuple[list[Tuple[int, int]], list[int]]:
    uppers: list[Tuple[int, int]] = []  # (upper, # items in lowers)
    lowers: list[int] = []

    for i in singletons:
        upper = i >> 8
        lower = i & 0xFF
        if len(uppers) == 0 or uppers[-1][0] != upper:
            uppers.append((upper, 1))
        else:
            upper, count = uppers[-1]
            uppers[-1] = upper, count + 1
        lowers.append(lower)

    return uppers, lowers


def compress_normal(normal: list[Tuple[int, int]]) -> list[list[int]]:
    # lengths 0x00..0x7f are encoded as 00, 01, ..., 7e, 7f
    # lengths 0x80..0x7fff are encoded as 80 80, 80 81, ..., ff fe, ff ff
    compressed: list[list[int]] = []  # [truelen, (truelenaux), falselen, (falselenaux)]

    prev_start = 0
    for start, count in normal:
        truelen = start - prev_start
        falselen = count
        prev_start = start + count

        assert truelen < 0x8000 and falselen < 0x8000
        entry: list[int] = []
        if truelen > 0x7F:
            entry.append(0x80 | (truelen >> 8))
            entry.append(truelen & 0xFF)
        else:
            entry.append(truelen & 0x7F)
        if falselen > 0x7F:
            entry.append(0x80 | (falselen >> 8))
            entry.append(falselen & 0xFF)
        else:
            entry.append(falselen & 0x7F)

        compressed.append(entry)

    return compressed


def print_singletons(uppers : list[Tuple[int, int]], lowers: list[int], uppersname: str, lowersname: str):
    print("let {} : FixedArray[(Byte, Byte)] = [".format(uppersname))
    for u, c in uppers:
        print("    ({:#04x}, {}),".format(u, c))
    print("]")
    print("let {} : Bytes = [".format(lowersname))
    for i in range(0, len(lowers), 8):
        print(
            "    {}".format(" ".join("{:#04x},".format(x) for x in lowers[i : i + 8]))
        )
    print("]")


def print_normal(normal: list[list[int]], normalname: str):
    print("let {} : Bytes = [".format(normalname))
    for v in normal:
        print("    {}".format(" ".join("{:#04x},".format(i) for i in v)))
    print("]")


def main():
    file = get_file("unicode-downloads/UnicodeData.txt")

    codepoints = get_codepoints(file)

    CUTOFF = 0x10000
    singletons0: list[int] = []
    singletons1: list[int] = []
    normal0: list[Tuple[int, int]] = []
    normal1: list[Tuple[int, int]] = []
    extra: list[Tuple[int, int]] = []

    for a, b in to_ranges(get_escaped(codepoints)):
        if a > 2 * CUTOFF:
            extra.append((a, b - a))
        elif a == b - 1:
            if a & CUTOFF:
                singletons1.append(a & ~CUTOFF)
            else:
                singletons0.append(a)
        elif a == b - 2:
            if a & CUTOFF:
                singletons1.append(a & ~CUTOFF)
                singletons1.append((a + 1) & ~CUTOFF)
            else:
                singletons0.append(a)
                singletons0.append(a + 1)
        else:
            if a >= 2 * CUTOFF:
                extra.append((a, b - a))
            elif a & CUTOFF:
                normal1.append((a & ~CUTOFF, b - a))
            else:
                normal0.append((a, b - a))

    singletons0u, singletons0l = compress_singletons(singletons0)
    singletons1u, singletons1l = compress_singletons(singletons1)
    normal0_: list[list[int]] = compress_normal(normal0)
    normal1_: list[list[int]] = compress_normal(normal1)

    print("""\
// NOTE: The following code was generated by "../src/printable.py",
//       do not edit directly!

fn check(x: UInt, singletonuppers: FixedArray[(Byte, Byte)], singletonlowers: Bytes, normal: Bytes) -> Bool {
    let xupper = (x >> 8).to_byte();
    let mut lowerstart = 0;
    for pair in singletonuppers {
        let (upper, lowercount) = pair
        let lowerend = lowerstart + lowercount.to_int()
        if xupper == upper {
            for lower in singletonlowers[lowerstart:lowerend] {
                if lower == x.to_byte() {
                    return false;
                }
            }
        } else if xupper < upper {
            break;
        }
        lowerstart = lowerend;
    }

    let mut x = x.reinterpret_as_int();
    let mut i = 0
    let mut current = true;
    while i < normal.length() {
        let v = normal[i]
        let len = if (v & 0x80) != 0 {
            i += 1
            ((v & 0x7f).to_uint() << 8 | normal[i].to_uint()).reinterpret_as_int()
        } else {
            v.to_int()
        };
        x -= len;
        if x < 0 {
            break;
        }
        current = not(current);
    }
    current
}

pub fn is_printable(x : Char) -> Bool {
    let x = x.to_uint();
    let lower = x & 0x0000_FFFF;

    if x < 32 {
        // ASCII fast path
        false
    } else if x < 127 {
        // ASCII fast path
        true
    } else if x < 0x10000 {
        check(lower, singletons0u, singletons0l, normal0)
    } else if x < 0x20000 {
        check(lower, singletons1u, singletons1l, normal1)
    } else {\
""")
    for a, b in extra:
        print("        if x is 0x{:x}U..<0x{:x}U {{".format(a, a + b))
        print("            return false;")
        print("        }")
    print("""\
        true
    }
}\
""")
    print()
    print_singletons(singletons0u, singletons0l, "singletons0u", "singletons0l")
    print_singletons(singletons1u, singletons1l, "singletons1u", "singletons1l")
    print_normal(normal0_, "normal0")
    print_normal(normal1_, "normal1")


if __name__ == "__main__":
    main()