#!/bin/bash
set -e

mkdir -p dummy_data
echo "🛠 Generating ~2 GiB of dummy data in ./dummy_data"

# 20 files × 100MB = 2 GiB total
for i in {1..20}; do
  FILE="dummy_data/file_$i.bin"
  if [ ! -f "$FILE" ]; then
    echo "Creating $FILE"
    dd if=/dev/zero of="$FILE" bs=100M count=1 status=none
  fi
done

echo "✅ Dummy data generation complete."
