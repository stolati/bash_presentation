#!/usr/bin/env bash
set -eux

# current directory
read dummy
cur_dir="$(cd "$(dirname "$0")" ; pwd)"

# Creating a directory from that
read dummy
spaced_dir="$cur_dir/my dir has space in name"

read dummy
mkdir -p "$spaced_dir"

read dummy
cd "$spaced_dir"

read dummy
echo "$(file "$(pwd)")"

read dummy
echo "$(file $(pwd) )" || true

read dummy
cd "$cur_dir"

read dummy
find . -type d -print0 | xargs -t -0 -I % file %

read dummy
rm -rf "$spaced_dir"

