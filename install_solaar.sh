#!/bin/sh
#

sudo add-apt-repository ppa:solaar-unifying/ppa
sudo apt-get update

apt list -a solaar
Listing... Done
solaar/bionic,bionic 1.0.1+dfsg-3+git940-624247d-202004052005~ubuntu18.04.1 all [residual-config]
solaar/bionic,bionic,now 0.9.2+dfsg-8 all [residual-config]

sudo apt-get install solaar=1.0.1+dfsg-3+git940-624247d-202004052005~ubuntu18.04.1
