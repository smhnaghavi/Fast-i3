#!/bin/bash

distro=`lsb_release -i | cut -f 2-`

cat banner.txt
echo "Welcome to Fast i3 script!"
read -p "Do you really want to setup i3? [y/n] " acception
if [ $acception == "n" ]
then
        exit
fi

echo "Installing Dependencies ..."
case $distro in
        "openSUSE")
                echo "y" | sudo zypper remove i3 > /dev/null
                echo "y" | sudo zypper in i3-gaps polybar rofi dmenu mocp feh ranger lxappearance picom smplayer conky > /dev/null
                cp ./networkmanager_dmenu /bin
                [[ ! -d "$FDIR" ]] && mkdir -p "$FDIR"
                cp -rf $DIR/fonts/* "$FDIR"
                ;;
        "Manjaro")
                echo "y" | sudo pacman -Rs i3 > /dev/null
                echo "y" | sudo pamac in i3-gaps polybar rofi dmenu mocp feh ranger lxappearance picom mplayer networkmanager-dmenu-git conky > /dev/null
                [[ ! -d "$FDIR" ]] && mkdir -p "$FDIR"
                cp -rf $DIR/fonts/* "$FDIR"
                ;;
        "Arch")
                echo "y" | sudo pacman -Rs i3 > /dev/null
                echo "y" | sudo pacman -S i3-gaps polybar rofi dmenu mocp feh ranger lxappearance picom mplayer conky > /dev/null
                yay -S networkmanager-dmenu-git
                [[ ! -d "$FDIR" ]] && mkdir -p "$FDIR"
                cp -rf $DIR/fonts/* "$FDIR"
                ;;
        "Ubuntu")
                echo "y" | sudo apt remove i3 > /dev/null
                echo "y" | sudo apt install i3-gaps polybar rofi dmenu mocp feh ranger lxappearance picom mplayer conky > /dev/null
                cp ./networkmanager_dmenu /bin
                [[ ! -d "$FDIR" ]] && mkdir -p "$FDIR"
                cp -rf $DIR/fonts/* "$FDIR"
                ;;
        *)
                echo "OS not detected!"
                echo "You can report your distribution name to smhnaghavi by make an issue in github repository."
        esac

read -p "Do you want to save your old i3 and polybar configurations? [y/n] " saveStat

if [ $saveStat == "y" ]
then
        cp -r $HOME/.config/i3 $HOME/.config/i3.old
        cp -r $HOME/.config/polybar $HOME/.config/polybar.old
fi

echo "Copying Configurations ..."

cp -r ./i3 $HOME/.config/
cp -r ./polybar $HOME/.config/
cp .i3startup $HOME/.i3startup
cp Colors.png $HOME/Colors.png
cp -r networkmanager-dmenu $HOME/.config/
[[ ! -d $HOME/.conky ]] && mkdir $HOME/.conky
[[ ! -d $HOME/.conky/Gotham ]] && mkdir $HOME/.conky/Gotham
cp Gotham $HOME/.conky/Gotham/Gotham

echo "Installing Finished!"
