# linuxTestWithBats

Linux test automation using Bats

## Check Bats version

bats --version

## Run bats test script

bats tests/firstTest.bats

## Run shell script on remote server using ssh

### Install and use sshpass

https://stackoverflow.com/questions/16937104/provide-password-to-ssh-command-inside-bash-script-without-the-usage-of-public

### Run shell script on remote server and pass arguments to the script with remote server password provided

sshpass -p "password" ssh root@192.XX.XX.XX 'bash -s' < /pathOfScriptFiles/script.sh arg1 arg2

## Run bats test scripts on remote server using ssh

### Steps

1. Install git and bats on remote server
2. Make sure ssh and port 22 is allowed on remote server (client can access to the remote server)
3. Add public ssh key of remote server to the git version control server (to allow remote server to git clone the project)
4. Create a sh script runBats.sh: to clone the project from git server on the remote server, run the bats scripts of the project on the remote server
5. On client use ssh to run runBats.sh on remote server, and get the tests results from the remote server to the client terminal
