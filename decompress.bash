#!/usr/bin/env bash
set -eux
echo ""
echo "Self Extracting Installer"
echo ""

dest_dir="$(cd "$(dirname "$0")" ; pwd)"

ARCHIVE=`awk '/^__ARCHIVE_BELOW__/ {print NR + 1; exit 0; }' $0`

tail -n+$ARCHIVE $0 | tar xzv -C "$dest_dir"

exit 0

__ARCHIVE_BELOW__
