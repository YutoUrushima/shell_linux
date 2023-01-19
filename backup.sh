#!/bin/bash
if [ "$file_compression" = "L" ]; then
  tar_opt=$tar_l
elif [ "$file_compression" = "M" ]; then
  tar_opt=$tar_m
else
  tar_opt=$tar_h
fi