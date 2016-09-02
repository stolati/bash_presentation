#!/usr/bin/env bash
set -eux

to_compress="mike-pres-dir"
dest="mike-pres.bash"

cd "$(dirname "$0")"

tar zcf payload.tgz "$to_compress"

cat decompress.bash payload.tgz > "$dest"

rm payload.tgz
