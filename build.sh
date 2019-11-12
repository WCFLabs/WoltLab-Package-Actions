#!/bin/sh

# build package
test -e acptemplates && echo "\nBuilding acptemplates.tar\n-------------------------" && cd acptemplates && tar cvf ../acptemplates.tar --exclude=".*" -- * && cd ..
test -e files && echo "\nBuilding files.tar\n------------------" && cd files && tar cvf ../files.tar -- * && cd ..
test -e templates && echo "\nBuilding templates.tar\n----------------------" && cd templates && tar cvf ../templates.tar -- * && cd ..
test -e files_wcf && echo "\nBuilding files_wcf.tar\n----------------------" && cd files_wcf && tar cvf ../files_wcf.tar -- * && cd ..

echo "\nBuilding package.tar"
tar cvf package.tar --exclude=".*" --exclude acptemplates --exclude README.md --exclude build.sh --exclude files --exclude files_wcf --exclude templates --exclude test -- *

exit 0
