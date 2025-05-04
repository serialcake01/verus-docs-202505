#!/bin/bash

# Correct path to Verus CLI binary
VERUS_CLI="/Applications/Verus-Desktop.app/Contents/Resources/app/assets/bin/osx/verusd/verus"

# Output directory
OUTDIR="$HOME/Desktop/verus_help_outputs"
mkdir -p "$OUTDIR"

# Check that the binary exists
if [ ! -x "$VERUS_CLI" ]; then
  echo "Error: Verus CLI not found at $VERUS_CLI"
  exit 1
fi

# Extract command names from verus_help.txt
COMMANDS=$(grep -E '^[a-z]' verus_help.txt | awk '{print $1}')

for CMD in $COMMANDS; do
    echo "Dumping help for: $CMD"
    "$VERUS_CLI" help "$CMD" > "$OUTDIR/${CMD}.txt" 2>&1
done

echo "✅ Help export complete. Files saved in: $OUTDIR"