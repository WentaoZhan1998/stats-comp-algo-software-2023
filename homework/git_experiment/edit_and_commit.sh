#!/usr/bin/env bash

for commit_count in {2..100}
do
  let linenum="9+$commit_count"
  sed -i "$linenum i This is the $commit_count th sentence." foo.tex
  pdflatex foo.tex
  git add -u
  git commit -m "Add another sentence to the Tex file"
done
