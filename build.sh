#!/bin/sh
set -e
cd ./build
lb clean --purge || sudo lb clean --purge
lb config \
  --distribution bookworm \
  --architectures amd64 \
  --debian-installer none \
  --archive-areas "main contrib non-free non-free-firmware" \
  --binary-images iso-hybrid \
  --bootappend-live "boot=live components quiet splash persistence" \
  --apt-recommends true \
  --compression xz
sudo lb build
mv *.iso ../
lb clean --purge || sudo lb clean --purge