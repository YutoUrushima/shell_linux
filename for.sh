#!/bin/bash
for u in bob joe ; do
useradd $u
echo "$u:Password1" | chpasswd
passwd -e $u
done