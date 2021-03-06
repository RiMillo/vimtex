source common.vim

silent edit test-markdown.tex

if empty($INMAKE) | finish | endif

call vimtex#test#assert(vimtex#syntax#in('texMarkdownRegion', 7, 1))
call vimtex#test#assert(vimtex#syntax#in('markdownItalic', 7, 1))
call vimtex#test#assert(vimtex#syntax#in('markdownLink', 11, 12))
call vimtex#test#assert(vimtex#syntax#in('texFileArg', 16, 16))

quit!
