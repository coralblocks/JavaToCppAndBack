#!/bin/bash

COUNT=${1:-3}

LD_LIBRARY_PATH=lib/jni:$JAVA_HOME/lib/server ./CallbackFromJava $COUNT

