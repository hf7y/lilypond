#!/bin/bash

dir=$(dirname $1)
name=$(basename $1 | cut -d "." -f 1)

if [ -f $dir$name.ly ]; then
  pdffile=$name.pdf
  vimid=$(xdotool search --name $pdffile) 
  if [ -f $dir$pdffile ]; then
    if [ "$vimid" == "" ]; then
      mupdf -r 61 $pdffile &
    fi
  fi
fi

cd $dir
tmux new \; new-window vim $name.ly
