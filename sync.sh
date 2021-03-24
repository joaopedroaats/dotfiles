source ~/dotfiles/sh/utils/dotsync.sh
source ~/dotfiles/sh/utils/separate_echo.sh

if [ "$1" == "wm" ]; then
    separate_echo "WM /home"
    dotln .i3/config                       ~/.i3/config
    dotln .i3/.i3blocks.conf               ~/.i3blocks.conf
    dotln .i3/.i3status.conf               ~/.i3status.conf

    dotln .xmonad/xmobar/xmobarrc          ~/.config/xmobar/xmobarrc
    dotln .xmonad/xmonad.hs                ~/.xmonad/xmonad.hs

    dotln .xprofile                        ~/.xprofile


  else
    separate_echo "Default /home"
    dotln .config/polybar/config           ~/.config/polybar/config
    dotln .config/polybar/launch.sh        ~/.config/polybar/launch.sh
    dotln .config/rofi/config.rasi         ~/.config/rofi/config.rasi

    dotln .config/flameshot/flameshot.ini  ~/.config/flameshot/flameshot.ini
    dotln .config/neofetch/config.conf     ~/.config/neofetch/config.conf
    dotln .config/kitty/kitty.conf         ~/.config/kitty/kitty.conf
    dotln .config/redshift/redshift.conf   ~/.config/redshift.conf
    dotln .config/picom/picom.conf         ~/.config/picom.conf
    dotln .config/yakuake/yakuakerc        ~/.config/yakuakerc

    dotln .doom.d/config.el                ~/.doom.d/config.el
    dotln .doom.d/custom.el                ~/.doom.d/custom.el
    dotln .doom.d/init.el                  ~/.doom.d/init.el
    dotln .doom.d/packages.el              ~/.doom.d/packages.el

    dotln .gitconfig                       ~/.gitconfig
    dotln .zprofile                        ~/.zprofile
    dotln .zshrc                           ~/.zshrc


    separate_echo "/"
    dotcp etc/lightdm/lightdm-webkit2-greeter.conf
    dotcp etc/pulse/default.pa
    dotcp etc/hosts

fi
echo -e "\n"


