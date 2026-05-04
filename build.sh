#!/bin/sh
set -e

sudo lb clean --purge
sudo lb build
