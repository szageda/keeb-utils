# Contributing

## KMonad Style Guide

https://lisp-lang.org/style-guide

Exception for single line comments: KMonad interprets ";" as the QWERTY key <kbd>;:</kbd> (next to <kbd>L</kbd>),
use two semicolons instead (;;).

## AutoHotkey Style Guide

There aren't famous style guides or standards agreed upon by the AutoHotkey community, so stick to [K&R](https://en.wikipedia.org/wiki/Indentation_style#K&R), and max. 100 characters line length.

## Comment Style Guide (KMonad + AutoHotkey)

Comments should usually be complete sentences. Start with a capital letter, end with a period (.). An inline block comment may be treated as a note without punctuation.

Source lines which are entirely a comment should be limited to 80 characters in length (including comment sigils, but excluding indentation) or the maximum width of the line (including comment sigils and indentation), whichever is smaller:

``` Rust
// This comment goes up to the ................................. 80 char margin.

{
    // This comment is .............................................. 80 chars wide.
}

{
    {
        {
            {
                {
                    {
                        // This comment is limited by the ........................ 100 char margin.
                    }
                }
            }
        }
    }
}
```

*Source: [The Rust Style Guide - Comments](https://doc.rust-lang.org/beta/style-guide/index.html#comments)*
