# Fast-i3
A theme and config for start using i3wm faster.

### Welcome to Fast-i3 repo.

Fast-i3 is a i3wm configurations that them make your i3 prettier and help you start using i3wm faster.

The theme and config file can use on all linux distrobutions, but the usage method given blow is specific for Arch-Based Linux Distros; like: Arch, Manjaro, Garuda, etc.

Let's start together!

# Installing packages and dependencies

```bash
sudo pacman -S i3-gaps i3status-rust i3status feh network-manager-applet rofi dmenu vazir-code-fonts font-awesome-5 picom ranger mplayer moc lxappearance
```
Now logout from your desktop environment and in the login page choose i3 as your desktop session.

![Login Page](https://github.com/smhnaghavi/Fast-i3/blob/main/sddm.png)

# Download and clone the configuration files

Open a terminal using Meta+Enter and this command.

```bash
git clone https://github.com/smhnaghavi/Fast-i3.git && cd Fast-i3
```

# Copy the configurations and files to the locations

```bash
cp config ~/.config/i3/config
cp i3status-rs ~/.config/i3/i3status-rs
cp i3status_config.toml ~/.config/i3/i3status_config.toml
cp .i3startup ~/.i3startup
mkdir ~/wallpapers
cp Colors.png ~/walpapers/Colors.png
```
### Don't forget to change the pathes in config files to yours, like: /home/hadi/ => /home/{YourUsername}

Now, logout and login to your system again.

# ScreenShots

![Image 1](https://github.com/smhnaghavi/Fast-i3/blob/main/i3-1.png)
![Image 2](https://github.com/smhnaghavi/Fast-i3/blob/main/i3-2.png)
