#!/bin/sh
# Build the dist file based on individual modules
# TODO: minify dist file

sources="auth.js identity.js status.js utils.js web.js"
target="solid.js"
dist="dist/solid.js"

echo > $target

for src in "$sources"
do
  cat $src >> $target
done

cp $target $dist

echo "\nBuilt dist file in $dist\n"
exit 0
