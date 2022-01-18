#!/bin/bash

cp $dir/wireguard-switching/wireguard.conf > /etc/wireguard/apcb2.conf 
*/2 * * * * wg-quick up apcb2
1-59/2 * * * * wg-quick down apcb2