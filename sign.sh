#!/usr/bin/expect
cd /home/nivesh/Desktop/moodle-app/platforms/android/app/build/outputs/apk/release/
my_script=$(expect -c "spawn jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore app-release-unsigned.apk moodle
expect \"Enter Passphrase for keystore:\"
send \"India123\r\"
expect \"#\"
send \"exit \r\"
")

echo "$my_script"
rm LaaRaa.apk
/home/nivesh/Android/Sdk/build-tools/29.0.1/zipalign -v 4 app-release-unsigned.apk LaaRaa.apk
