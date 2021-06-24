#!/bin/bash
function get_files(){
    for element in `ls $1*.sy`
    do
        dir_or_file=$element
        if [ -d $dir_or_file ]
        then
            getdir $dir_or_file
        else
            echo $dir_or_file
            ./main $dir_or_file
        fi
    done
}
#注意：input_dir路径需要写最后一个反斜杠/
input_dir="./test2/"
get_files $input_dir
