#!/bin/sh

for d in hg-*; do
    pushd $d >/dev/null
    npm install && [ -f typings.json ] && npm run typings install
    tsc
    popd
done
