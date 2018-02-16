#!/bin/sh

dir="./src"
pushd ${dir}
for a in `ls`
do
	gcc -fpreprocessed -dD -E ${a} | sed "/^$/d"  > ../nocomment/${a}
done
popd
