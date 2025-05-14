#!/bin/bash

set -e
if [[ "$(id -u)" -eq 0 ]]; then
        echo "You are super user and good to go"
        read -p "Enter the dire name for user: " DIR
        mkdir /home/"$DIR"
else
        echo "You are not super user"
        exit 1
fi
if [[ -d /home/"$DIR" ]]; then
        read -p "Enter user name: " USER
        sudo useradd -d /home/"$DIR" "$USER"
        echo "User account is creating..........."
        sleep 2
        if grep -q "^$USER:" /etc/passwd; then
                echo "User \"$USER\" is created"
                sudo chown "$USER:$USER" /home/"$DIR"
                sudo getent passwd "$USER"
                ls -dl /home/"$DIR"
                echo "enter password for the '$USER'"
                sudo passwd "$USER"
                sudo grep "$USER" /etc/shadow
        else
                echo "User \"$USER\" is not created"
        fi
else
        echo "'$DIR' is not found in home directory"
fi
