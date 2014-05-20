#! /bin/bash
echo "Welcome to the HydrusOS installer, this script will install HydrusOS to your system, press c to continue"
read -s -n 1 key
if [$key = "c"] then
  ping -c 3 www.google.com
  echo "We just ran a network test by pinging Google. If you see packets being transmitted then you network is working. If you do not try consulting the Arch Linux wiki page for networking (https://wiki.archlinux.org/index.php/Network)."
end if
echo "Now we are ready to partition your hard drive, if you would like to use a GUID partition table (for 64 bit machines) press g, if you would like to use an MBR partition table for 32 bit machines press m, if you would like to skip partitioning press c"
read -s -n 1 key
if [$key = "m"] then
  cfdisk /dev/sda
end if
if [$key = "g"] then
  cgdisk /dev/sda
end if
if [$key = "c"] then
  goto 19
end if
echo "now we will format your root partition please enter the /dev entry for your root partition (eg. /dev/sda1)"
read key
echo "Please choose a filesystem for the root partition to use, press 1 for ext4 (recommended), 2 for ext3, 3 for ext2, 4 for btrfs (possibly unstable) or 5 for jfs"
