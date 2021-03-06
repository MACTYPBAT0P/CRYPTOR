#!/bin/bash
architecture=$(dpkg --print-architecture)

mobile="cryptor"
pc="amd64"

if [ $architecture = "$pc" ];
then
cp amd64/cryptor ~/../usr/bin
chmod +x ~/../usr/bin/cryptor
echo "Installation on architecture amd64 completed"
fi

if [ $architecture = "$mobile" ];
then
cp /cryptor ~/../usr/bin
chmod +x ~/../usr/bin/cryptor
echo "Installation on architecture aarch64 completed"
fi
