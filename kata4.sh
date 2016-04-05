#!/bin/bash

source util.sh

echo "KATA 4 - SQUASHING COMMITS"
echo ""
echo "SCENARIO DESCRIPTION"
echo "Working on your feature branch, you've made a whole bunch
of commits. Some of them are very granular and would pollute
master branch if merged in. Squash them into a single commit and
push the single commit to the remote branch"

commitChange "Old MACDONALD had a farm" "commit 1"
commitChange "E-I-E-I-O" "commit 2"
commitChange "And on his farm he had a cow" "commit 3"
commitChange "E-I-E-I-O" "commit 4"
