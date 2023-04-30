#!/bin/bash

COUNT=${1:-3}
MSG=${2:-Awesome}

java -Djava.library.path=lib/jnr -cp jars/jnr-ffi-2.2.13-all.jar:classes com.coralblocks.javatocppandback.jnr.HelloWorld $COUNT $MSG

