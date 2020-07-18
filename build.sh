#!/usr/bin/bash
ionic cordova resources android
ionic cordova build android --release
bash sign.sh
