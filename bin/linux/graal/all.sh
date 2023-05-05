#!/bin/bash

./bin/linux/graal/clean.sh
./bin/linux/graal/compileJava.sh
./bin/linux/graal/nativeImage.sh
./bin/linux/graal/compileCpp.sh
./bin/linux/graal/runCpp.sh $1 $2
./bin/linux/graal/clean.sh


