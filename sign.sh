#!/usr/bin/expect
cd /home/nivesh/Desktop/moodle-master/platforms/android/app/build/outputs/apk/release/
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore -keypass "India123" app-release-unsigned.apk moodle
rm TalentExams.apk
/home/nivesh/Android/Sdk/build-tools/29.0.1/zipalign -v 4 app-release-unsigned.apk TalentExams.apk
