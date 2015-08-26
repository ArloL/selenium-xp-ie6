#!/bin/sh

set -e
set -x

wget -N http://selenium-release.storage.googleapis.com/2.47/selenium-server-standalone-2.47.1.jar
shasum --check selenium-server-standalone-2.47.1.jar.sha1

wget -N http://selenium-release.storage.googleapis.com/2.47/IEDriverServer_Win32_2.47.0.zip
shasum --check IEDriverServer_Win32_2.47.0.zip.sha1

wget -N http://selenium-release.storage.googleapis.com/2.46/IEDriverServer_Win32_2.46.0.zip
shasum --check IEDriverServer_Win32_2.46.0.zip.sha1

wget -N --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-windows-i586.exe
shasum --check jre-8u60-windows-i586.exe.sha1

wget -N --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-windows-x64.exe
shasum --check jre-8u60-windows-x64.exe.sha1
