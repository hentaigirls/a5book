#!/usr/bin/perl
$out_dir = 'build';
$lualatex = 'lualatex -synctex=1 -file-line-error -halt-on-error -interaction=nonstopmode %O %S';
$pdf_mode = 4;
