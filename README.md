# a5book

## Preparation
```
cd path/to/a5book
cp sample/index.txt sample/info.txt .
mkdir text
cp sample/lorem.txt text/
```

## Usage

1. Save latex source files under `text`.
2. Append `\input{text/foobar.txt}` to `index.txt`.
3. Replace CAPITALIZED items on `info.txt` with your infomation.
4. Run `latexmk`.
