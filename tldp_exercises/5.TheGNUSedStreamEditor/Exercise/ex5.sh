#!/bin/bash
echo "The executing of command starts"
sed -i -e "1,3d" output.txt | sed -i -e "1,3d" output1.txt
sed -n '/^.*an.*$/p' output1.txt
echo "Done."
