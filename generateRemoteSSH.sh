#!/bin/bash

echo -e "\n\n\n" | ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub


# Add the known hosts
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts