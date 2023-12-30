#!/bin/bash

COUNT=${1:-3}
MSG=${2:-Awesome}

java --enable-native-access=ALL-UNNAMED --enable-preview -cp classes com.coralblocks.javatocppandback.ffm.HelloWorld $COUNT $MSG mac

