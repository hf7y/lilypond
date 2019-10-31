#!/bin/bash

w=683
h=767
dir=$(dirname $1)
base=$(basename $1 | cut -d "." -f 1)

resize_this () {
  this_id=$(xdotool getactivewindow)
  xdotool windowsize $this_id $w $h
  xdotool windowmove $this_id $w 0; }

resize_pdf () {
  mupdf_id=$(xdotool search --name $base.pdf)
  echo $mupdf_id
  xdotool windowsize $mupdf_id $w $h
  xdotool windowmove $mupdf_id 0 0; }

if [ -f $dir/$base.ly ]; then
  resize_this
  if [ -f $dir/$base.pdf ]; then
    mupdf -I -r 62 $dir/$base.pdf &
    sleep 0.1
    resize_pdf
  fi
fi

tmux new \; new-window vim $dir/$base.ly
