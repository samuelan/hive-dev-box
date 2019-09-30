#!/bin/bash
set -e

cd ~dev

apt-get install -y xbase-clients libgtk3.0

wget -nv -O eclipse.tgz \
	http://eclipse.mirror.garr.it/mirrors/eclipse//technology/epp/downloads/release/2019-09/R/eclipse-jee-2019-09-R-linux-gtk-x86_64.tar.gz
tar xzf eclipse.tgz
rm eclipse.tgz

wget -nv https://github.com/seeq12/eclipse-import-projects-plugin/raw/master/jar/com.seeq.eclipse.importprojects_1.4.0.jar \
	-O eclipse/plugins/com.seeq.eclipse.importprojects_1.4.0.jar

sed -i 's/^-Xmx.*/-Xmx4024m/' eclipse/eclipse.ini

chown -R dev eclipse