#!/bin/bash

COUNT=${1:-3}

LD_LIBRARY_PATH=$JAVA_HOME/lib/server ./CallbackFromJava $COUNT

