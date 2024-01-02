#!/bin/bash

javac -classpath src/main/java/com/coralblocks/javatocppandback/ffm_jextract --enable-preview -source 21 -d classes src/main/java/com/coralblocks/javatocppandback/ffm_jextract/generated/constants\$0.java src/main/java/com/coralblocks/javatocppandback/ffm_jextract/generated/RuntimeHelper.java src/main/java/com/coralblocks/javatocppandback/ffm_jextract/generated/hello.java src/main/java/com/coralblocks/javatocppandback/ffm_jextract/HelloWorld.java

