#!/bin/bash
echo "Showing subdirectories"
ls -l | grep ^d # shows subdirectories
echo "Showing localhosts"
grep -n localhost /etc/hosts
echo
echo "Two commands have been executed"