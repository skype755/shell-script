#!/bin/bash
tail -f "$LOG_FILE" | while read LINE; do
    # Search for keywords in each line
    echo "$LINE" | grep -E "$KEYWORDS" >> "$OUTPUT_FILE"
done