# Structure and Interpretations of Computer Programs - Exercises

This is me solving the
[SICP](https://mitp-content-server.mit.edu/books/content/sectbyfn/books_pres_0/6515/sicp.zip/full-text/book/book-Z-H-4.html) 
exercises.
I'm using [`racket`](https://racket-lang.org/) as the Lisp engine and coding the exercises along with assertions.

You can run them by using

```bash
racket sec1/*.lisp
racket sec*/*.lisp
```

Example:
```bash
❯ racket sec1/*.lisp
Exercise 1.1

Expected: 101283619#f416616
Result: 101283619#f416616
Passed!


Exercise 1.2

Expected: -37/150
Result: -37/150
Passed!
```

Exercises are distributed according to section number
Section 1 exercises are placed on the `sec1` directory, so Section 2 will naturally
reside on `sec2`.

Use `racket` to run the exercises as kind-of unit tests.
