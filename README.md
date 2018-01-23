# collate

> Command line filter for collating the top and bottom halves of a file

```bash
❯ cat foo.txt
1
2
3
a
b
c

❯ collate < foo.txt
1
a
2
b
3
c

❯ collate < foo.txt | uncollate
1
2
3
a
b
c
```

## Install

To build this project from source, use Haskell's [Stack].

[Stack]: https://docs.haskellstack.org/en/stable/README/

```bash
git clone https://github.com/jez/collate.git

stack build && stack install
```

If you've packaged this software for your operating system, let me know and I
can link to it from these instructions.

## License

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://jez.io/MIT-LICENSE.txt)
