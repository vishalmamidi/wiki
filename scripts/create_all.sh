#!/bin/bash

# Define the output file
OUTPUT_FILE="All.md"

# Navigate one folder back
cd ..

# Override the output file instead of removing it
# Find all .md files one level above the current directory
# Add the file name as a title before concatenating its content into the output file
: > "$OUTPUT_FILE" # Truncate or create the output file
find ../ -type f -name "*.md" | while read -r file; do
    echo "# $(basename "$file")" >> "$OUTPUT_FILE"
    cat "$file" >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
done

echo "All .md files have been compiled into $OUTPUT_FILE."