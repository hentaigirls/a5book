# a5book

## Usage

1. Save latex source files under `./work/<author>/<title>/main.tex`.
2. Append `\input{./work/<author>/<title>/main.tex}` to `./work/input.tex`(in .gitignore) or `./works.txt`(NOT in .gitignore).
3. Replace CAPITALIZED items on `info.txt` with your infomation.
4. Run `latexmk`.

* If you add `./figure/form.pdf`, it will appear in questionnaire page.
* If you add `./figure/afterwords.png`, it will appear in afterwords page.
