fn main() {
    let my_string = String::from("hello world");

    // burrow
    let word = first_word(&my_string[..]);

    let my_string_literal = "hello world";

    // burrow
    let word = first_word(&my_string_literal[..]);

    // copy
    let word = first_word(my_string_literal);
}

fn first_word(s: &String) -> &str {
    let bytes = s.as_bytes();

    for (i, &item) in bytes.iter().enumerate() {
        if item == b' ' {
            return &s[0..i]
        }
    }

    &s[..]
}