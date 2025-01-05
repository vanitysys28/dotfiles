#!/bin/sh

find $PWD -maxdepth 1 -type f -name ".*" | xargs -I {} ln -sf {} $HOME
