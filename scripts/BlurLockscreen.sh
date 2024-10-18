#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 input_image output_image"
  exit 1
fi

# Input and output image paths
input_image="$1"
output_image="$2"

# Blur the first left quarter portion of the image
convert "$input_image" -region 30%x0 -blur 0x20 "$output_image"
