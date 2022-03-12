#!/bin/sh

set -e
 
/var/vcap/packages/pike-7.8-linux/bin/pike -x features | tee features.txt
