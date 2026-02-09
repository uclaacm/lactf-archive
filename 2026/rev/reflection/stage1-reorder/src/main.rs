use std::collections::HashMap;
use std::fs;
use std::io::Write;
use regex::Regex;

fn main() -> std::io::Result<()> {
    let hash_regex = Regex::new(r"\[[a-f0-9]+\]").unwrap();
    
    let target_content = include_str!("../target.nm");
    let target_order: HashMap<String, usize> = target_content
        .lines()
        .enumerate()
        .map(|(i, line)| {
            let demangled = rustc_demangle::demangle(line).to_string();
            let processed = demangled.replace("::", "/");
            let processed = hash_regex.replace_all(&processed, "").to_string();
            (processed, i)
        })
        .collect();

    let input_content = fs::read_to_string("../stage1-src/split/reflection.s")?;

    let mut reorderable: Vec<(usize, &str)> = Vec::new();
    let mut unmatched: Vec<&str> = Vec::new();

    let include_regex = Regex::new(r#"^\.include "(.*)"$"#).unwrap();

    for line in input_content.lines() {
        if let Some(caps) = include_regex.captures(line) {
            let path = &caps[1];
            let no_hashes = hash_regex.replace_all(path, "");
            let key = no_hashes.trim_end_matches(".s");
            
            if let Some(&order) = target_order.get(key) {
                reorderable.push((order, line));
            } else {
                unmatched.push(line);
            }
        } else {
            unmatched.push(line);
        }
    }

    reorderable.sort_by_key(|(order, _)| *order);

    let mut output_file = fs::File::create("output.s")?;
    for (_, line) in &reorderable {
        writeln!(output_file, "{}", line)?;
    }

    println!("reordered {}/{}\nfailed to reorder:", reorderable.len(), reorderable.len() + unmatched.len());

    for line in &unmatched {
        println!("{}", line);
        writeln!(output_file, "{}", line)?;
    }

    Ok(())
}