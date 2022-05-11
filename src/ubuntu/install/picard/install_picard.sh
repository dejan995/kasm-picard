#!/usr/bin/env bash
set -ex

echo "##### Install Packages #####"
    add-apt-repository ppa:musicbrainz-developers/stable
    apt update
    apt install --no-install-recommends -y picard epiphany-browser

echo "##### Clean Up #####"
rm -rf \
  /var/lib/apt/lists/* \
  /var/tmp/*

# Default settings and desktop icon
cp /usr/share/applications/picard.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/picard.desktop
