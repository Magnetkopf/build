#!/bin/sh
apt-get download libxcb-cursor0
ar x *.deb
tar --zstd -xf data.tar.zst
