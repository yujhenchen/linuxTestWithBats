# linuxTestWithBats

Linux test automation using Bats

## Check Bats version

bats --version

## Run test script

bats tests/firstTest.bats

## Run shell script on remote server using ssh

ssh root@192.XX.XX.XX 'bash -s' < /pathOfScriptFiles/script.sh arg1 arg2

## Run bats script on remote server using ssh (remote server has bats)
Haven't found a way yet