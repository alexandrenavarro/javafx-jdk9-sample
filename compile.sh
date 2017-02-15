#!/bin/bash


# Compile
rm -rf mods
javac -d mods/com.github.alexandrenavarro.javafxjdk9sample src/com.github.alexandrenavarro.javafxjdk9sample/module-info.java src/com.github.alexandrenavarro.javafxjdk9sample/com/github/alexandrenavarro/javafxjdk9sample/JavaFxApp.java


# Package
rm -rf mlib
mkdir -p mlib
jar --create --file mlib/com.github.alexandrenavarro.javafxjdk9sample.jar --main-class=com.github.alexandrenavarro.javafxjdk9sample.JavaFxApp -C mods/com.github.alexandrenavarro.javafxjdk9sample .


# Link a .exe
rm -rf exe
jlink --launcher javafxsample=com.github.alexandrenavarro.javafxjdk9sample/com.github.alexandrenavarro.javafxjdk9sample.JavaFxApp --module-path $JAVA_HOME/jmods:mlib --add-modules com.github.alexandrenavarro.javafxjdk9sample --output exe

# Run via exe
./exe/bin/javafxsample

# Run via java
java -modulepath mods -m com.github.alexandrenavarro.javafxjdk9sample/com.github.alexandrenavarro.javafxjdk9sample.JavaFxApp


