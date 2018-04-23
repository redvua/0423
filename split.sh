#!/bin/bash
l=$(cat $1 | wc -l)
let "h = l / 2"
head -n ${h} $1 > $1.part1
let "t = l - h"
tail -n ${t} $1 > $1.part2
