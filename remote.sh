#erl-project-id
sudo echo 'runner:runner' | sudo chpasswd && apt update && wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip && unzip ngrok-stable-linux-386.zip && chmod +x ./ngrok && sudo apt-get install -qq -o=Dpkg::Use-Pty=0 openssh-server pwgen >/dev/null && rm -f .ngrok.log
./ngrok authtoken isitokenNgrok && ./ngrok tcp 22 --log ".ngrok.log" & && sleep 10 && echo $(grep -o -E "tcp://(.+)" < .ngrok.log | sed "s/tcp:\/\//ssh runner@/" | sed "s/:/ -p /")
