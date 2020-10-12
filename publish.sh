#!/bin/sh
set -e

msg=$1

if [ ${#msg} == 0 ]
then
    echo "Must add commit message, aborting.";
    exit 1
else
    echo "Adding and commiting files with commit message : $msg"
fi

hugo

cd public/

git checkout gh-pages
git add .
git commit -m "$msg"
git push

cd ..
