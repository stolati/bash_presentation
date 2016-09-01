#!/usr/bin/env bash
set -eux

to_compress="mike-presentation"
dest="mick-pres.bash"

cd "$(dirname "$0")"

tar zcf payload.tgz "$to_compress"

cat decompress.bash payload.tgz > "$dest"

rm payload.tgz
