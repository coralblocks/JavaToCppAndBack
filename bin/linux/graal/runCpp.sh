#!/bin/bash

COUNT=${1:-3}
MSG=${2:-Awesome}

LD_LIBRARY_PATH=lib/graal ./HelloWorld $COUNT $MSG

