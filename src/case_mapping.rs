use std::char;
use std::collections::BTreeMap;
use std::fmt::{self, Write};

use crate::{UnicodeData, fmt_list};

const INDEX_MASK: u32 = 1 << 22;

pub(crate) fn generate_case_mapping(data: &UnicodeData) -> String {
    let mut file = String::new();

    write!(file, "const INDEX_MASK: UInt = 0x{:x};", INDEX_MASK).unwrap();
    file.push_str("\n\n");
    file.push_str(HEADER.trim_start());
    file.push('\n');
    file.push_str(&generate_tables("lower", &data.to_lower));
    file.push_str("\n\n");
    file.push_str(&generate_tables("upper", &data.to_upper));
    file
}

fn generate_tables(case: &str, data: &BTreeMap<u32, (u32, u32, u32)>) -> String {
    let mut mappings = Vec::with_capacity(data.len());
    let mut multis = Vec::new();

    for (&key, &(a, b, c)) in data.iter() {
        let key = char::from_u32(key).unwrap();

        if key.is_ascii() {
            continue;
        }

        let value = if b == 0 && c == 0 {
            a
        } else {
            multis.push((
                CharEscape(char::from_u32(a).unwrap()),
                CharEscape(char::from_u32(b).unwrap()),
                CharEscape(char::from_u32(c).unwrap()),
            ));

            INDEX_MASK | (u32::try_from(multis.len()).unwrap() - 1)
        };

        mappings.push((CharEscape(key), value));
    }

    let mut tables = String::new();

    write!(tables, "let {}case_table : FixedArray[(Char, UInt)] = [{}];", case, fmt_list(mappings))
        .unwrap();

    tables.push_str("\n\n");

    write!(tables, "let {}case_table_multi : FixedArray[(Char, Char, Char)] = [{}]", case, fmt_list(multis))
        .unwrap();

    tables
}

struct CharEscape(char);

impl fmt::Debug for CharEscape {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "'{}'", self.0.escape_default())
    }
}

static HEADER: &str = include_str!("header.mbt");