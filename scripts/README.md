# AUTOPCB
PCB rapid deployment // by TJGEIRK
 - Simple whittlem/pycryptobot deployment script.
 - Optimised for RaspberryPi, even runs 5+ bots at the same time perfectly well on the new RaspberryPi Zero2 W 
 - Writes as many systemd daemons as you could want in only seconds (starting them may take a little while, however)!
 - Writes Kubernetes Pod configurations at the same time as PCB configs and systemd services
 - Not suited for deployment in docker containers just yet, as the use of systemd is not ideal for docker environments. 
 - Please use kubernetes pods or manually configure systemd first if you want to run in a container. Any additions to the
   script that expand it's compatibility are welcome!

# TO INSTALL
 - user@host:~$ git clone https://github.com/tjgeirk/autopcb
 - user@host:~$ cd autopcb
 - user@host:~$ sudo nano config
 - [ modify your config, and then save and exit with CTRL+X, Y, ENTER ]
 - user@host:~$ sudo bash run
 - [ system will run journalctl -f after all installations are completed ]

# TO UPDATE AN ALREADY ACTIVE INSTALLATION
 - user@host:~$ cd autopcb
 - user@host:~$ sudo nano config
 - [ modify your config, and then save and exit with CTRL+X, Y, ENTER ]
 - user@host:~$ sudo bash update

# TO START A STOPPED INSTALLATION
 - user@host:~$ cd autopcb
 - user@host:~$ sudo bash start

# TO STOP A STARTED INSTALLATION
 - user@host:~$ cd autopcb
 - user@host:~$ sudo bash stop

# TO UNINSTALL AND REMOVE ALL CONTENTS
 - user@host:~$ cd autopcb
 - user@host:~$ sudo bash remove
