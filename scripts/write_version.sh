#!/bin/bash

pushd `dirname $0` > /dev/null
version_dir="../artifacts/"
version_filepath="../artifacts/version.txt"
if [ ! -d "$version_dir" ]; then
  mkdir $version_dir
fi
version_txt=`git log -n1 --format="%h"`
touch $version_filepath
echo "$version_txt" >> $version_filepath
pushd $version_dir > /dev/null
echo Version $version_txt written to $PWD
popd > /dev/null
popd > /dev/null