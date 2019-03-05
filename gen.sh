#!/bin/bash

for t in $* 
do
   mkdir $t
   sed "s/{tag}/$t/g" Dockerfile.template > $t/Dockerfile
done