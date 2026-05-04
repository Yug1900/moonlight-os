#!/bin/sh
set -e
cd ./build
sudo lb clean --purge
sudo lb build
