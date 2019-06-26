#!/usr/bin/env bash
echo "Test #1 - Run code without errors"
octave myLr3.m &> ./tests/out.txt
if grep "error" ./tests/out.txt;
then
    echo -e "\nTest fail\n"
    exit 1
else
    echo -e "\nTest passed\n"
fi
