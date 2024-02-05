#!/bin/bash

myvar=1

while [ -f ~/script_testing/testfile ]
do
    echo "The test file exists."
done

echo "The file no longer exists.  Exiting."
