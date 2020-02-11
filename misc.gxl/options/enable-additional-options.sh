#!/bin/bash

cd /compile/source/linux-stable-am

./scripts/config -d CONFIG_EXT2_FS
./scripts/config -d CONFIG_EXT3_FS

for i in `cat /compile/doc/stable-am/misc.gxl/options/additional-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/stable-am/misc.gxl/options/additional-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done
