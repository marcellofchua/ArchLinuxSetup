#!/bin/sh
read -p "Input filename: " input
read -p "Output filename: " output
INPUT="$input"
OUTPUT="$output"
ffmpeg -hide_banner -v warning -i $INPUT -filter_complex "[0:v] scale=640:-1:flags=lanczos,split [a][b]; [a] palettegen=reserve_transparent=on:transparency_color=ffffff [p]; [b][p] paletteuse" $OUTPUT
