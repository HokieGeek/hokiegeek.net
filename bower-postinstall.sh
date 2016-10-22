#!/bin/sh

for d in hg-*; do
    pushd $d
    [ -f package.json ] && {
        npm install
        [ -f typings.json ] && npm run typings install
    }
    [ `find . -name "*.ts" -print | wc -l` -gt 0 ] && tsc
    popd
done
