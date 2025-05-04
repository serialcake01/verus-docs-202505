#!/bin/bash

VERUS_CLI="${VERUS_CLI_PATH:-verus}"
INPUT_FILE="missing_commands.txt"
OUTPUT_FILE="help_check_results.txt"

echo "Checking command help availability..." > "$OUTPUT_FILE"

while IFS= read -r cmd; do
  echo -n "Checking $cmd... " >> "$OUTPUT_FILE"
  if "$VERUS_CLI" help "$cmd" >/dev/null 2>&1; then
    echo "✅ available" >> "$OUTPUT_FILE"
  else
    echo "❌ not found" >> "$OUTPUT_FILE"
  fi
done < "$INPUT_FILE"

echo "Done. Results saved to $OUTPUT_FILE"