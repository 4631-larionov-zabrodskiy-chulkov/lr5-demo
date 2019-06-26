#!/usr/bin/env bash
echo "Test #2 - Run code with error"
octave myLr3error.m &> ./tests/out.txt
grep -A 5 "error"  ./tests/out.txt
if grep "error" ./tests/out.txt;
then
    echo -e "\nTest passed\n"
else
    echo -e "\nTest fail\n"
    exit 1
fi
