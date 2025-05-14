#!/usr/bin/env bash

# Output directory
output_dir="examples/alphabet"

# Ensure the output directory exists
mkdir -p "$output_dir"

# Loop through each letter of the alphabet
for letter in {a..z}; do
    echo "Generating stamp for letter: $letter"
    ./t2s --stamp "$letter" --size 30 --output_dir $output_dir
done

echo "All stamps generated successfully."