#!/bin/bash

for file in *.cpp; do
    if [ -f "$file" ]; then
        g++ "$file" -o "${file%.cpp}"
    fi
done

