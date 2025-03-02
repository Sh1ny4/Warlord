#!/bin/bash

# Define the XML file path
XML_FILE="settlements.xml"

# Check if the file exists
if [[ ! -f "$XML_FILE" ]]; then
    echo "File $XML_FILE does not exist."
    exit 1
fi

# Extract id attributes from Village elements
ids=$(xmllint --xpath '//Village/@id' "$XML_FILE" 2>/dev/null | grep -o 'id="[^"]*"' | sed 's/id=//g' | tr -d '"')

# Check if xmllint failed
if [[ $? -ne 0 ]]; then
    echo "Error processing the XML file."
    exit 1
fi

# Find duplicate ids
duplicate_ids=$(echo "$ids" | sort | uniq -d)

# Display the duplicate ids
if [[ -n "$duplicate_ids" ]]; then
    echo "Duplicate Village ids found:"
    for id in $duplicate_ids; do
        count=$(echo "$ids" | grep -c "^$id$")
        echo "id: $id, Count: $count"
    done
else
    echo "No duplicate Village ids found."
fi