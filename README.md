# a5book

[![wercker status](https://app.wercker.com/status/20d9d80cf879d1398b0f2c925a00cd4f/s/master "wercker status")](https://app.wercker.com/project/byKey/20d9d80cf879d1398b0f2c925a00cd4f)

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

## Tips

### `./figure/form.pdf`

おおよそ1181x1181（600dpi/5cm）の画像を含んだPDFの作り方のサンプルです。

```
qrencode "https://goo.gl/forms/XXXXXXXXXX" -o /tmp/qrcode.png
WIDTH=$(identify /tmp/qrcode.png | cut -f3 -d" " | cut -f1 -d "x")
mogrify -scale $(echo "(1181/$WIDTH+1)*$WIDTH" | bc) /tmp/qrcode.png
convert -density 600x600 -units PixelsPerInch /tmp/qrcode.png ./figure/form.pdf
```

### `./figure/afterwords.png`

過去、2634x4050の画像が使われています。
