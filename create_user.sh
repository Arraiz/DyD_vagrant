#!/bin/bash
#run as sudo
useradd test20
echo "user $i added successfully!"
echo test20:test20"123" | chpasswd
echo "Password for user test20 changed successfully"

