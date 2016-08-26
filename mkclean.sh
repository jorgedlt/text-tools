#!/usr/bin/env bash

# mkclean.sh
# Generates a sanitized string suitable for playfair squares
#

# Uses new BASH 4.3 features
# Proverbs 1-31, and verse for month

dirty="$1"

# cleaning text to create crypt keys, etc
# dirty="The quick Brown 33 fox jumps over the lazy dog"

upper=$(echo $dirty | tr 'a-z' 'A-Z')
 # upper=${dirty,,}

clean=$(echo "$upper" | sed 's/[^A-Z]//g')
 # clean=${lower//[+=.,:;?!\'\-\— 1234567890]/}

echo Stripped: $clean
echo

echo $clean | fold -w 2 | tr '\012' ' ' | fold -s -w 50; echo

exit 0;

# by 5
# echo $clean | fold -w 5 | tr '\012' ' ' | fold -s -w 60; echo
