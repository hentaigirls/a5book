# a5book

## 使い方

### 統括を行う人

1. `./info.txt` を編集します。
1. `./works.txt` に完成した本文の `input` 命令を追加します。 例: `\input{./work/author/title/main.tex}`
1. アンケートページが必要な場合は、 `./figure/form.pdf` にQRコードを追加します。
1. あとがきページが必要な場合は、 `./figure/afterwords.png` にあとがき画像を追加します。

### 本文を追加する人

（ブランチ名をディレクトリに合わせて設定しなければならない制約がありましたが、廃止されました）

1. `./work/example-author/example-title/` を `./work/<author>/<title>/` にコピーします。
1. `./work/<author>/<title>/main.tex` を編集します。
1. `./work/<author>/<title>/LICENSE` に適切なライセンス表示を追加します。
1. `./work/input.tex` に `\input{./work/<author>/<title>/main.tex}` を追加するか、 `./script/make_story_list.sh` を実行します。なお、 `./work/input.tex` はgitで管理されていません。
1. `latexmk` を実行するか、push後にCIの結果を確認します。

### 解説ページを追加する人

（解説ページは廃止されました）

### 冒頭ページを追加する人

1. `./work/example-opening/` を `./work/opening/` にコピーします。
1. `./work/opening/main.tex` を編集します。
1. `./work/opening/LICENSE` に適切なライセンス表示を追加します。
1. `latexmk` を実行するか、push後にCIの結果を確認します。
