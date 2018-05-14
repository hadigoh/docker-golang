#! /bin/sh

if [ -f ~/.ssh/id_rsa ]; then 
  echo "There's an existing SSH key"
elif [ -z "$SSH_PRIVATE_KEY" ]; then
  echo "SSH_PRIVATE_KEY not found"
else
  mkdir -p ~/.ssh
  echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
  chmod 700 ~/.ssh
fi

# Enables running this script as docker entrypoint
$* 
