#!/bin/bash

COUNT=${1:-3}
MSG=${2:-Awesome}  

LD_LIBRARY_PATH=$JAVA_HOME/lib/server ./HelloWorld $COUNT $MSG

