///|
fn bitset_search(
  needle : Int,
  chunk_idx_map : Bytes,
  bitset_chunk_idx : FixedArray[Bytes],
  bitset_canonical : FixedArray[UInt64],
  bitset_canonicalized : FixedArray[(Byte, Byte)]
) -> Bool {
  // let n = chunk_idx_map.length()
  // let n1 = bitset_chunk_idx.length()
  let chunk_size = bitset_chunk_idx[0].length()
  // let canonical = bitset_canonical.length()
  // let canonicalized = bitset_canonicalized.length()
  let bucket_idx = needle / 64
  let chunk_map_idx = bucket_idx / chunk_size
  let chunk_piece = bucket_idx % chunk_size
  let chunk_idx = if chunk_map_idx < chunk_idx_map.length() {
    chunk_idx_map[chunk_map_idx].to_int()
  } else {
    return false
  }
  let idx = bitset_chunk_idx[chunk_idx][chunk_piece].to_int()
  let word = if idx < bitset_canonical.length() {
    bitset_canonical[idx]
  } else {
    let (real_idx, mapping) = bitset_canonicalized[idx -
      bitset_canonical.length()]
    let mut word = bitset_canonical[real_idx.to_int()]
    let should_invert = (mapping.to_uint() & (1U << 6)) != 0
    if should_invert {
      word = word.lnot()
    }
    // Lower 6 bits
    let quantity = (mapping.to_uint() & ((1U << 6) - 1)).reinterpret_as_int()
    if (mapping.to_uint() & (1U << 7)) != 0 {
      // shift
      word = word >> quantity
    } else {
      // rotate left
      word = (word << quantity) | (word >> (64 - quantity % 64))
    }
    word
  }
  (word & (1UL << (needle % 64))) != 0
}

///|
priv type ShortOffsetRunHeader UInt

///|
fn ShortOffsetRunHeader::new(
  start_index~ : UInt,
  prefix_sum~ : UInt
) -> ShortOffsetRunHeader {
  // start_index < (1 << 11)
  // prefix_sum <  (1 << 21)
  ShortOffsetRunHeader((start_index << 21) | prefix_sum)
}

///|
fn start_index(self : ShortOffsetRunHeader) -> Int {
  (self._ >> 21).reinterpret_as_int()
}

///|
fn prefix_sum(self : ShortOffsetRunHeader) -> UInt {
  self._ & ((1U << 21) - 1)
}

///|
fn[T] binary_search_by(
  arr : FixedArray[T],
  cmp : (T) -> Int
) -> Result[Int, Int] {
  let len = arr.length()
  for i = 0, j = len; i < j; {
    let h = i + (j - i) / 2
    // Note even if self[h] == value, we still continue the search
    // because we want to find the leftmost match
    if cmp(arr.unsafe_get(h)) < 0 {
      continue h + 1, j
    } else {
      continue i, h
    }
  } else {
    if i < len && cmp(arr.unsafe_get(i)) == 0 {
      Ok(i)
    } else {
      Err(i)
    }
  }
}

///|
fn skip_search(
  needle : Char,
  short_offset_runs : FixedArray[ShortOffsetRunHeader],
  offsets : Bytes
) -> Bool {
  let needle = needle.to_uint()
  let last_idx = match
    binary_search_by(short_offset_runs, fn(header) {
      (header._ << 11).compare(needle << 11)
    }) {
    Err(idx) => idx
    Ok(idx) => idx + 1
  }
  // last_idx < short_offset_runs.length()
  let mut offset_idx = short_offset_runs[last_idx].start_index()
  let length = if short_offset_runs.length() > last_idx + 1 {
    let next = short_offset_runs[last_idx + 1]
    next.start_index() - offset_idx
  } else {
    offsets.length() - offset_idx
  }
  let prev = {
    let r = last_idx - 1
    if r < 0 {
      0U
    } else {
      short_offset_runs[r].prefix_sum()
    }
  }
  let total = needle - prev
  let mut prefix_sum = 0U
  for _ in 0..<(length - 1) {
    //     length <= offsets.length() - offset_idx
    // ==> length - 1 + offset_idx < offsets.length()
    let offset = offsets[offset_idx]
    prefix_sum = prefix_sum + offset.to_uint()
    if prefix_sum > total {
      break
    }
    offset_idx += 1
  }
  offset_idx % 2 == 1
}
