#!/bin/bash

# latest
sed "s/:{tag}//g" Dockerfile.template > Dockerfile

for t in $* 
do
   [[ -d $t/ ]] || mkdir $t
   sed "s/{tag}/$t/g" Dockerfile.template > $t/Dockerfile
done