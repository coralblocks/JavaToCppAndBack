#!/bin/bash

./bin/linux/graal/clean.sh
./bin/linux/graal/compileJava.sh
./bin/linux/graal/nativeImage.sh
./bin/linux/graal/compileCpp.sh
./bin/linux/graal/runCpp.sh


