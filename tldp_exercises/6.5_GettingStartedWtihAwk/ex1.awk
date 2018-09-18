awk 'BEGIN {FS=":"} \
{printf "dn: uid=%s, dc=example, dc=com\ncn: %s %s\nsn: %s\ntelephoneNumber:%s\n", $1, $2, $3, $3, $4}' \
input.txt
echo "------------------"
awk 'BEGIN {FS=":"} \
{printf "dn: uid=%s, dc=example, dc=com\ncn: %s %s\nsn: %s\ntelephoneNumber:%s\n", $1, $2, $3, $3, $4}' \
input1.txt
echo "------------------"