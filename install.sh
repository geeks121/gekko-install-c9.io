#!/bin/bash

cat << "EOF" 
---------------------------------------------------------------------------------------------------------------------------
   _____  ______  _  __ _  __ ____    _____  _   _   _____  _______         _       _         _____  ___    _____  ____  
  / ____||  ____|| |/ /| |/ // __ \  |_   _|| \ | | / ____||__   __| /\    | |     | |       / ____|/ _ \  |_   _|/ __ \ 
 | |  __ | |__   | ' / | ' /| |  | |   | |  |  \| || (___     | |   /  \   | |     | |      | |    | (_) |   | | | |  | |
 | | |_ ||  __|  |  <  |  < | |  | |   | |  | . ` | \___ \    | |  / /\ \  | |     | |      | |     \__, |   | | | |  | |
 | |__| || |____ | . \ | . \| |__| |  _| |_ | |\  | ____) |   | | / ____ \ | |____ | |____  | |____   / /_  _| |_| |__| |
  \_____||______||_|\_\|_|\_\\____/  |_____||_| \_||_____/    |_|/_/    \_\|______||______|  \_____| /_/(_)|_____|\____/ 
---------------------------------------------------------------------------------------------------------------------------
By. Linuxers                                                                                                                         
EOF

#!/bin/bash
echo 'installing nodejs version 8.12.0 please update as you want.'

nvm install 8.12.0
nvm alias default 8.12.0

echo 'uninstalling nodejs 6.11.2'
nvm uninstall 6.11.2
nvm alias default 8.12.0

echo 'Say welcome to gekko'

git clone https://github.com/askmike/gekko.git

echo 'installing Broker defendency in Gekko directory'

cd gekko && npm install --only=production

echo 'installing Broker in exchange directory'

cd exchange && npm install --only=production

cd ..

echo 'installing pm2'

npm install pm2 -g

cat << "EOF" 

  __  __  _            _                  _____                          _        _        
 |  \/  |(_)          (_)                / ____|                        | |      | |       
 | \  / | _  ___  ___  _   ___   _ __   | |      ___   _ __ ___   _ __  | |  ___ | |_  ___ 
 | |\/| || |/ __|/ __|| | / _ \ | '_ \  | |     / _ \ | '_ ` _ \ | '_ \ | | / _ \| __|/ _ \
 | |  | || |\__ \\__ \| || (_) || | | | | |____| (_) || | | | | || |_) || ||  __/| |_|  __/
 |_|  |_||_||___/|___/|_| \___/ |_| |_|  \_____|\___/ |_| |_| |_|| .__/ |_| \___| \__|\___|
                                                                 | |                       
Please Close this terminal i want go to toilet                                                                 |_|                       
EOF
