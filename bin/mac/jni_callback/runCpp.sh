#!/bin/bash

COUNT=${1:-1000}

DYLD_LIBRARY_PATH=$JAVA_HOME/lib/server ./CallbackFromJava $COUNT

