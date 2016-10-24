#!/bin/sh

set -x
for d in bower_components/hg-*; do
    pushd $d
    [ -f package.json ] && {
        npm install
        [ -f typings.json ] && npm run typings install
    }
    [ `find . -name "*.ts" -a ! -path "./node_modules/*" -a ! -path "./typings/*" -print | wc -l` -gt 0 ] && tsc
    popd
done
