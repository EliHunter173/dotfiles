#!/bin/bash

# the path to this script (resolving symbolic links)
script_path=$(readlink -f $0)
# the name of this script (for display purposes)
script_basename=${script_path##*/}

# the dir that is used to find all of the config files
# here, the parent dir of this script
config_dir=${script_path%/*}

# the distination for all the config files
dest=$config_dir/config

# Display path of sourced file to stdout and then
# add that file to the end of the desination file
# ARGS:
#      1: The path to the sourced file
source() {
    echo "Sourcing $1"
    cat $1 >>$dest
}

# reset config file
echo  "; This config was autogenerated by $script_basename" >$dest

# load bars
for bar in $(find $config_dir/bars -name '*.bar'); do
    source $bar
done

# load modules
for module in $(find $config_dir/modules -name '*.bar'); do
    source $module
done

# load misc config
for file in $(find $config_dir/misc -name '*.bar'); do
    source $file
done