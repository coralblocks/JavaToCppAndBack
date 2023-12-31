#!/bin/bash

mkdir -p lib/graal

native-image -H:+UnlockExperimentalVMOptions -classpath classes -H:Path=lib/graal -H:Name=libHelloWorld --shared

mv lib/graal/*.h src/main/c/

