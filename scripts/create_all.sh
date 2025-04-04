#!/bin/bash

# Define the output file
OUTPUT_FILE="All.md"


: > "$OUTPUT_FILE" # Truncate or create the output file
find ../ -type f -name "*.md" ! -name "README.md" | while read -r file; do
    echo "# $(basename "$file")" >> "$OUTPUT_FILE"
    cat "$file" >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
done

echo "All .md files have been compiled into $OUTPUT_FILE."