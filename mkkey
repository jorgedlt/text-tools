#!/usr/bin/env bash

# mkkey.sh
# Generates a sanitized strings suitable for playfair squares
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

# creating the key - take 2 - making sure there is only one of each
strgp=$clean

for i in $(echo {A..Z}); do
     strg=$(echo $strgp | tr -d ' ')
     strgp=$(echo $strg | sed "s/${i}//2g")
done

misschar=$(echo ABCDEFGHIJKLMNOPQRSTUVWXYZ | tr -d "$strgp")

echo Key: $strgp    Size: ${#strgp}  Missing: ${misschar}

# number greater 26, would suggest double chars

echo
echo ${strgp}$(echo ${misschar} | rev) | tr -d 'jJ' | sed 's/\(.\{1\}\)/\1 /g' | fold -w 10
echo

exit 0;
