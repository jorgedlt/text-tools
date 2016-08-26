#!/usr/bin/env bash

# base32 & base64 Hacks using python 
# - for base32, dirty but have not found another way

# source https://www.redspin.com/it-security-blog/2009/07/string-encoding-in-the-shell/

# base32  
 function base32 {
 printf "%s" ''; python -c "import base64; print base64.b32encode('''$1''')"
}
#

# base32 with 5 group
 function base32-5 {
 base32 $1 | tr -d ' ' | fold -w 5 | tr '\012' ' ' | fold -s -w 50; echo             
}
# w=50 -> 8 columns & w=80 -> 13 columns

# base64  
 function base64 {
 printf "%-20s" 'Base64:'; echo -n $1 | openssl enc -e -base64
}
#

# http://www.lipsum.com/
