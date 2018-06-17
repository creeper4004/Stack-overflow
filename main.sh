#/bin/bash
sudo apt-get install build-essential
gcc -fno-stack-protector -z execstack vuln.c -o vuln
sudo chown root:root ./vuln
sudo chmod +s ./vuln
python ./exploit.py
