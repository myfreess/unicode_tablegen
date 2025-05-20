///|
fn to_ascii_lower(c : Char) -> Char {
  if c is ('A'..='Z') {
    Int::unsafe_to_char(c.to_int() + 32)
  } else {
    return c
  }
}

///|
fn to_ascii_upper(c : Char) -> Char {
  if c is ('a'..='z') {
    Int::unsafe_to_char(c.to_int() - 32)
  } else {
    return c
  }
}

///|
pub fn to_lower(c : Char) -> (Char, Char, Char) {
  if c.is_ascii() {
    (to_ascii_lower(c), '\u{0}', '\u{0}')
  } else {
    binary_search_by(lowercase_table, fn { (key, _) => key.compare(c) })
    .map(fn(i) {
      let u = lowercase_table[i].1
      u
      .reinterpret_as_int()
      .to_char()
      .map(fn(c) { (c, '\u{0}', '\u{0}') })
      .or_else(fn() {
        lowercase_table_multi.unsafe_get(
          (u & (INDEX_MASK - 1)).reinterpret_as_int(),
        )
      })
    })
    .or_else(fn() { (c, '\u{0}', '\u{0}') })
  }
}

///|
pub fn to_upper(c : Char) -> (Char, Char, Char) {
  if c.is_ascii() {
    (to_ascii_upper(c), '\u{0}', '\u{0}')
  } else {
    binary_search_by(uppercase_table, fn { (key, _) => key.compare(c) })
    .map(fn(i) {
      let u = uppercase_table[i].1
      u
      .reinterpret_as_int()
      .to_char()
      .map(fn(c) { (c, '\u{0}', '\u{0}') })
      .or_else(fn() {
        uppercase_table_multi.unsafe_get(
          (u & (INDEX_MASK - 1)).reinterpret_as_int(),
        )
      })
    })
    .or_else(fn() { (c, '\u{0}', '\u{0}') })
  }
}
