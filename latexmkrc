#!/usr/bin/perl
$out_dir = 'build';
$latex = 'platex -kanji=utf-8 -synctex=1 %O %S';
$dvipdf = 'dvipdfmx -d 5 -f ./font.map %O -o %D %S';
$bibtex = 'pbibtex %O %B';
$pdf_mode = 3; # use dvipdf
$pdf_update_method = 2;
$max_repeat = 5;
$pvc_view_file_via_temporary = 0;
