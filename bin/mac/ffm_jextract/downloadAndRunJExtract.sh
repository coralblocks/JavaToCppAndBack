#!/bin/bash

mkdir -p lib/jextract_download

curl --output-dir lib/jextract_download -LJO https://download.java.net/java/early_access/jextract/1/openjdk-21-jextract+1-2_macos-x64_bin.tar.gz

tar -xzf lib/jextract_download/openjdk-21-jextract+1-2_macos-x64_bin.tar.gz

chmod 777 jextract-21/bin/jextract

./jextract-21/bin/jextract --output src/main/java -t com.coralblocks.javatocppandback.ffm_jextract.generated --source  src/main/c/com.coralblocks_javatocppandback_ffm_jextract.h --header-class-name hello


