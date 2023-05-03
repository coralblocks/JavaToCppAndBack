#!/bin/bash

COUNT=${1:-1000}

LD_LIBRARY_PATH=$JAVA_HOME/lib/server ./CallbackFromJava $COUNT

