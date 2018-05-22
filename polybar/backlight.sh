#/bin/bash

light -G | awk -F'.' '{ print $1 }'
