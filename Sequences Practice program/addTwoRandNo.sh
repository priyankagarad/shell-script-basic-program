#!/bin/bash -x
a=$((RANDOM %10))
$a
b=$((RANDOM %10))
$b
c=$((a+b))
$c
