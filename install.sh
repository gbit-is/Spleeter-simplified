apt-get update
apt-get install ffmpeg -y 
apt-get install libsndfile-dev -y 
apt-get install python3-pip -y
pip3 install spleeter
chmod +x /mnt/c/splee/bin/*
ln -s /mnt/c/splee/bin/wrapper.sh /usr/local/bin/spleet
