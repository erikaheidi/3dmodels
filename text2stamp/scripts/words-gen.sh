#!/usr/bin/env bash

# Input file containing words (one per line)
input_file="scripts/words.txt"

# Output directory
output_dir="examples/words"

# Ensure the output directory exists
mkdir -p "$output_dir"

# Check if the input file exists
if [[ ! -f "$input_file" ]]; then
    echo "Input file '$input_file' not found."
    exit 1
fi

# Loop through each line in the file
while IFS= read -r str; do
    # Skip empty lines
    [[ -z "$str" ]] && continue
    echo "Generating stamp for string: $str"
    ./t2s --stamp "$str" --size 30 --output_dir "$output_dir" --withborder
done < "$input_file"

echo "All stamps generated successfully."