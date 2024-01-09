#!/bin/bash

jextract --output src/main/java -t com.coralblocks.javatocppandback.ffm_jextract.generated --source src/main/c/com_coralblocks_javatocppandback_ffm_jextract_HelloWorld.h --header-class-name Hello

