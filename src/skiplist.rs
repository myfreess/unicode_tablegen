use std::fmt::{self, Write as _};
use std::ops::Range;

use crate::fmt_list;
use crate::raw_emitter::RawEmitter;

/// This will get packed into a single u32 before inserting into the data set.
#[derive(PartialEq)]
struct ShortOffsetRunHeader {
    /// Note, we actually only allow for 11 bits here. This should be enough --
    /// our largest sets are around ~1400 offsets long.
    start_index: u16,

    /// Note, we only allow for 21 bits here.
    prefix_sum: u32,
}

impl fmt::Debug for ShortOffsetRunHeader {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "ShortOffsetRunHeader::new(start_index={}, prefix_sum={})", self.start_index, self.prefix_sum)
    }
}

impl RawEmitter {
    pub fn emit_skiplist(&mut self, ranges: &[Range<u32>], postfix: &str) {
        let first_code_point = ranges.first().unwrap().start;
        let mut offsets = Vec::<u32>::new();
        let points = ranges.iter().flat_map(|r| [r.start, r.end]).collect::<Vec<u32>>();
        let mut offset = 0;
        for pt in points {
            let delta = pt - offset;
            offsets.push(delta);
            offset = pt;
        }
        // Guaranteed to terminate, as it's impossible to subtract a value this
        // large from a valid char.
        offsets.push(std::char::MAX as u32 + 1);
        let mut coded_offsets: Vec<u8> = Vec::new();
        let mut short_offset_runs: Vec<ShortOffsetRunHeader> = vec![];
        let mut iter = offsets.iter().cloned();
        let mut prefix_sum = 0;
        loop {
            let mut any_elements = false;
            let mut inserted = false;
            let start = coded_offsets.len();
            for offset in iter.by_ref() {
                any_elements = true;
                prefix_sum += offset;
                if let Ok(offset) = offset.try_into() {
                    coded_offsets.push(offset);
                } else {
                    short_offset_runs.push(ShortOffsetRunHeader {
                        start_index: start.try_into().unwrap(),
                        prefix_sum,
                    });
                    // This is just needed to maintain indices even/odd
                    // correctly.
                    coded_offsets.push(0);
                    inserted = true;
                    break;
                }
            }
            if !any_elements {
                break;
            }
            // We always append the huge char::MAX offset to the end which
            // should never be able to fit into the u8 offsets.
            assert!(inserted);
        }
        writeln!(
            &mut self.file,
            "let short_offset_runs_{} : FixedArray[ShortOffsetRunHeader] = [{}];",
            postfix,
            fmt_list(short_offset_runs.iter())
        )
        .unwrap();
        self.bytes_used += 4 * short_offset_runs.len();
        writeln!(
            &mut self.file,
            "let offsets_{} : Bytes = [{}];",
            postfix,
            fmt_list(&coded_offsets)
        )
        .unwrap();
        self.bytes_used += coded_offsets.len();

        if first_code_point > 0x7f {
            writeln!(&mut self.file, "pub fn is_{}(c : Char) -> Bool {{", postfix).unwrap();
            writeln!(&mut self.file, "    c.to_uint() >= {first_code_point:#04x} && lookup_slow_{postfix}(c)")
                .unwrap();
            writeln!(&mut self.file, "}}").unwrap();
            writeln!(&mut self.file, "fn lookup_slow_{}(c : Char) -> Bool {{", postfix).unwrap();
        } else {
            writeln!(&mut self.file, "pub fn is_{}(c : Char) -> Bool {{", postfix).unwrap();
        }
        writeln!(
            &mut self.file,
            "    // SAFETY: We just ensured the last element of `short_offset_runs_{postfix}` is greater than `@char.max_value`",
        )
        .unwrap();
        writeln!(
            &mut self.file,
            "    // and the start indices of all elements in `short_offset_runs_{postfix}` are smaller than `offsets_{postfix}.len()`.",
        )
        .unwrap();
        writeln!(
            &mut self.file,
            "    skip_search(c, short_offset_runs_{postfix}, offsets_{postfix})"
        )
        .unwrap();
        writeln!(&mut self.file, "}}").unwrap();
    }
}