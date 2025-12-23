#!/bin/bash
set -e

echo "Compiling Java code..."
mkdir -p out
javac -d out src/Main.java

echo "Creating JAR file..."
jar cfe app.jar Main -C out .

echo "Build completed successfully"
