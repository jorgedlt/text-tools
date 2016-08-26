
# base32 & base64 Hacks using python
# - for base32, dirty but have not found another way
# source https://www.redspin.com/it-security-blog/2009/07/string-encoding-in-the-shell/

# base32en
 function base32en {
 printf "%s" ''; python -c "import base64; print base64.b32encode('''$1''')"
}

# base32de
 function base32de {
 printf "%s" ''; python -c "import base64; print base64.b32decode('''$1''')"
}

# $ base32en foobar
# MZXW6YTBOI======
# $ base32de 'MZXW6YTBOI======'
# foobar

# $ base32en '20160826'
# GIYDCNRQHAZDM===
# $  base32de 'GIYDCNRQHAZDM==='
# 20160826

# $ base32en $(cat file.bin)
# VMM7YKMM6TFJBUR6EVRZPGE4S763LWAZFMU4R6ZVH6M3VJWJGQHEZ7
# 3ZONMUWXCREEFU2GR6DIUP5ZTQQHNCH7XAHWHK23CVP72SLJPRY6MG
# VD4UCEXK3AJURORCQTL5DNT22PHJOJW277ES4XOEWOMFGGVESF4SVD
# DZTO6UFMTESSEIGQ24RN5T5COTPKVWBMGLRUH24O4DC===


# base32 with 5 group
 function base32-5 {
 base32en $1 | tr -d ' ' | fold -w 5 | tr '\012' ' ' | fold -s -w 50; echo
}
# w=50 -> 8 columns & w=80 -> 13 columns

# http://www.lipsum.com/
