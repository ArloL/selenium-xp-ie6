#!/bin/sh

set -e
set -x

wget -c -N http://selenium-release.storage.googleapis.com/2.47/selenium-server-standalone-2.47.1.jar
shasum --check selenium-server-standalone-2.47.1.jar.sha1

wget -c -N http://selenium-release.storage.googleapis.com/2.47/IEDriverServer_Win32_2.47.0.zip
shasum --check IEDriverServer_Win32_2.47.0.zip.sha1

wget -c -N http://selenium-release.storage.googleapis.com/2.46/IEDriverServer_Win32_2.46.0.zip
shasum --check IEDriverServer_Win32_2.46.0.zip.sha1

wget -c --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -O jre-8u60-windows-i586.exe http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-windows-i586.exe
shasum --check jre-8u60-windows-i586.exe.sha1

wget -c --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -O jre-8u60-windows-x64.exe http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-windows-x64.exe
shasum --check jre-8u60-windows-x64.exe.sha1

if [ ! -f phantomjs-2.0.0-windows.zip ]; then
    wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.0.0-windows.zip
fi
shasum --check phantomjs-2.0.0-windows.zip.sha256
