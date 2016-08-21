#!/bin/sh

error_exit() {
  echo "${0}: ${1:-"Unknown Error"}" 1>&2
  exit 1
}

[ "$(whoami)" == "root" ] || error_exit "Please aquire root permissions and run this script again"

make

cp -r .theos/obj/SettingsKit.framework $THEOS/lib

mkdir $THEOS/include/SettingsKit/
mkdir $THEOS/include/SettingsKit/Resources/

cp ./*.h $THEOS/include/SettingsKit/
cp ./*.m $THEOS/include/SettingsKit/
cp Resources/* $THEOS/include/SettingsKit/Resources/

./NICTemplate/build_nic