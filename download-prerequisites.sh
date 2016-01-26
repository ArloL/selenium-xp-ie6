#!/bin/sh

set -o errexit
set -o xtrace

wget --continue --timestamping http://selenium-release.storage.googleapis.com/2.49/selenium-server-standalone-2.49.1.jar
shasum --check selenium-server-standalone-2.49.1.jar.sha1

wget --continue --timestamping http://selenium-release.storage.googleapis.com/2.49/IEDriverServer_Win32_2.49.0.zip
shasum --check IEDriverServer_Win32_2.49.0.zip.sha1

wget --continue --timestamping http://selenium-release.storage.googleapis.com/2.46/IEDriverServer_Win32_2.46.0.zip
shasum --check IEDriverServer_Win32_2.46.0.zip.sha1

wget --continue --no-cookies --header="Cookie: oraclelicense=accept-securebackup-cookie" --output-document=jre-8u72-windows-i586.exe http://download.oracle.com/otn-pub/java/jdk/8u72-b15/jre-8u72-windows-i586.exe
shasum --check jre-8u72-windows-i586.exe.sha256

wget --continue --no-cookies --header="Cookie: oraclelicense=accept-securebackup-cookie" --output-document=jre-8u72-windows-x64.exe http://download.oracle.com/otn-pub/java/jdk/8u72-b15/jre-8u72-windows-x64.exe
shasum --check jre-8u72-windows-x64.exe.sha256

if [ ! -f phantomjs-2.1.1-windows.zip ]; then
    wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-windows.zip
fi
shasum --check phantomjs-2.1.1-windows.zip.sha256

if [ ! -f phantomjs-1.9.8-windows.zip ]; then
    wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-windows.zip
fi
shasum --check phantomjs-1.9.8-windows.zip.sha1
