#!/bin/bash
cd ./functional_test/
filenames=$(ls *.sy)
for file in ${filenames};do
    /home/linux/Desktop/compiler/Sys2021_v3/build/main ${file}
done
filenames=$(ls *.s)
for file in ${filenames};do
    echo ${file%.*}
    arm-linux-gnueabi-gcc -o ${file%.*} -g ${file} ../../libsylib.a
    if [ -e ${file%.*}.in ] ;then
	    echo ${file%.*}.in
	    qemu-arm -L /usr/arm-linux-gnueabi ${file%.*} <  ${file%.*}.in > ${file%.*}.txt
    else
	    qemu-arm -L /usr/arm-linux-gnueabi ${file%.*} > ${file%.*}.txt
    fi
    result=$(echo $?)
    echo -e >> ${file%.*}.txt
    echo ${result} >> ${file%.*}.txt
done