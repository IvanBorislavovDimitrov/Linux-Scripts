#!/bin/bash
echo "Lines which end with whitespace"
echo "-----------------------"
sed -n '/^.* $/p' badFile.txt
echo "-----------------------"
echo "Done."