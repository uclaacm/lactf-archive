use std::fs::OpenOptions;
use std::io::Write;
use std::iter::Peekable;
use std::path::Path;
use std::sync::LazyLock;
use std::{env, fs};

use indexmap::IndexSet;
use regex::Regex;

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        eprintln!("Usage: {} <file>", args[0]);
        std::process::exit(1);
    }
    let file_path = Path::new(&args[1]);
    let content = fs::read_to_string(file_path).expect("Unable to read file");

    let sections = parse_sections(&content);

    let mut dir_builder = fs::DirBuilder::new();
    dir_builder.recursive(true);

    let split = file_path.parent().unwrap().join("split");
    if fs::exists(&split).unwrap() {
        fs::remove_dir_all(&split).unwrap();
    }
    dir_builder.create(&split).unwrap();

    let mut main_s = IndexSet::new();

    let mut in_lanon_data = false;

    for section in sections {
        let mut name_pieces: Peekable<Box<dyn Iterator<Item = &str>>> =
            (Box::new(section.name.split(".")) as Box<dyn Iterator<Item = &str>>).peekable();
        let actual_section = name_pieces.nth(1).unwrap();
        if name_pieces.peek() == Some(&"unlikely") {
            name_pieces = (Box::new(name_pieces.skip(1)) as Box<dyn Iterator<Item = &str>>).peekable();
        }
        if name_pieces.peek() == Some(&"rel") {
            name_pieces = (Box::new(name_pieces.skip(2)) as Box<dyn Iterator<Item = &str>>).peekable();
        }
        if name_pieces.peek() == Some(&"") {
            name_pieces = (Box::new(name_pieces.skip(1)) as Box<dyn Iterator<Item = &str>>).peekable();
            if name_pieces.peek() == Some(&"Lswitch") {
                name_pieces = (Box::new(name_pieces.skip(2)) as Box<dyn Iterator<Item = &str>>).peekable();
            }
        }

        static HASH_REGEX: LazyLock<Regex> = LazyLock::new(|| Regex::new(r"\[[a-f0-9]+\]").unwrap());
        let mut symbol_name = rustc_demangle::demangle(&name_pieces.collect::<Vec<_>>().join(".")).to_string();
        symbol_name = HASH_REGEX.replace_all(&symbol_name, "").to_string();

        if in_lanon_data && symbol_name.starts_with("DW.") {
            in_lanon_data = false;
        } else if in_lanon_data || symbol_name.starts_with("Lanon") {
            in_lanon_data = true;
            symbol_name = "Lanon".to_owned();
        }
        symbol_name = symbol_name.replace("\"", "");

        assert!(!actual_section.contains(&['/', '\x00']));
        assert!(!symbol_name.contains(&['/', '\x00']));

        let mut dir = split.clone();

        let filename;
        if !in_lanon_data && symbol_name.contains("::") {
            symbol_name = symbol_name.replace("::", "/");
            filename = symbol_name.split_off(symbol_name.rmatch_indices("/").next().unwrap().0 + 1);
            dir = dir.join(symbol_name);
        } else {
            if !in_lanon_data && !["text", "data", "rodata", "bss", "tbss", "gcc_except_table"].contains(&actual_section) {
                symbol_name.insert_str(0, &(actual_section.to_owned() + "."));
            }
            filename = symbol_name;
        }

        dir_builder.create(&dir).unwrap();
        let final_path = dir.join(filename + ".s");
        OpenOptions::new()
            .create(true)
            .append(true)
            .open(&final_path)
            .unwrap()
            .write_all(
                section
                    .content
                    .into_iter()
                    .map(|x| x.to_owned() + "\n")
                    .collect::<String>()
                    .as_bytes(),
            )
            .unwrap();

        main_s.insert(final_path.strip_prefix(&split).unwrap().to_str().unwrap().to_owned());
    }

    fs::write(
        split.join("reflection.s"),
        main_s
            .iter()
            .map(|x| format!("\t.include \"{}\"\n", x))
            .collect::<String>()
            .as_bytes(),
    )
    .unwrap();
}

#[derive(Debug, Clone)]
struct Section<'a> {
    name: &'a str,
    content: Vec<&'a str>,
}

fn parse_sections(input: &str) -> Vec<Section<'_>> {
    let mut sections = Vec::new();
    let mut lines_iter = input.lines().peekable();

    let mut content = vec![];
    while let Some(line) = lines_iter.next() {
        content.push(line);
        if line.trim().starts_with(".section") {
            let full_section_name = get_full_section_name(line).unwrap();

            while let Some(next_line) = lines_iter.peek() {
                if next_line.trim().is_empty() || next_line.trim().starts_with(".section") {
                    break;
                }
                let next_line = lines_iter.next().unwrap();
                content.push(next_line);
            }
            sections.push(Section {
                name: full_section_name,
                content,
            });
            content = vec![];
        }
    }

    sections
}

fn get_full_section_name(section_line: &str) -> Option<&str> {
    section_line
        .trim()
        .split_whitespace()
        .nth(1)
        .and_then(|s| s.split(',').next())
}
