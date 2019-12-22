#!/bin/bash

# latest
sed "s/:{tag}//g" Dockerfile.template > Dockerfile

for py_ver in $*
do
   [[ -d $py_ver/ ]] || mkdir $py_ver
   sed "s/{tag}/$py_ver/g" Dockerfile.template > $py_ver/Dockerfile
done
