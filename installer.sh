#! /bin/bash
echo "Welcome to the HydrusOS installer, this script will install HydrusOS to your system, press c to continue"
read -s -n 1 'c' $key
if [$key = "c"] then
  ping -c 3 www.google.com
  echo "We just ran a network test by pinging Google. If you see packets being transmitted then you network is working. If you do not try consulting the Arch Linux wiki page for networking (https://wiki.archlinux.org/index.php/Network)."
end if
