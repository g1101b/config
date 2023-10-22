#! /bin/bash

# стягиваем вае настройки с системы в config файл

configDir=$(~/uHome/config)

# configuration files
if [ -d configDir/xfce/xfce4 ]:
then
    touch configDir/xfce/xfce4
    cp ~/.config/xfce4 configDir/xfce/xfce4
fi

cp ~/.local/share/xfce4 configDir/xfce/share
cp ~/.config/Thunar configDir/xfce/Thunar

# Keyboard shortcuts
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml configDir/keybord

