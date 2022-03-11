#!/bin/sh

set -e
 
/var/vcap/packages/pike-8.0-linux/bin/pike -x features > features.txt
