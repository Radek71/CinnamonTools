#!/bin/bash

# For this script to work, the gh-pages branch should be checked out inside
# a folder located in the root of the main repository.
# The gh-pages folder then is set to be ignored inside the main .gitignore file.

ROOT_PATH="`dirname \"$0\"`"                 # relative
ROOT_PATH="`( cd \"$ROOT_PATH\" && pwd )`"   # absolutized and normalized

# Cleanup folder
rm -f $ROOT_PATH/pkg/*

sleep 3

all_applets=("0dyseus@CustomCinnamonMenu" "0dyseus@DesktopHandler" "0dyseus@ExtensionsManager" "0dyseus@PopupTranslator" "0dyseus@QuickMenu" "0dyseus@SysmonitorByOrcus" "0dyseus@window-list-fork")
all_extensions=("0dyseus@CinnamonMaximusFork" "0dyseus@CinnamonTweaks" "0dyseus@WindowDemandsAttentionBehavior")
all_themes=("Mint-XY" "Mint-XY-Greybird-Blue")

echoInfo() {
    [ $# -gt 0 ] && echo -e "$(tput bold)$(tput setaf 10)$1$(tput sgr0)" >&2
}


for applet in "${all_applets[@]}" ; do
    echoInfo "====== Packaging $applet ======"
    # Using a sub-shell to switch directories to avoid "back and forth".
    (
        cd "../applets/$applet/files"
        tar -cvzf "$ROOT_PATH/pkg/$applet.tar.gz" $applet
    )
done

sleep 3

for extension in "${all_extensions[@]}" ; do
    echoInfo "====== Packaging $extension ======"
    # Using a sub-shell to switch directories to avoid "back and forth".
    (
        cd "../extensions/$extension/files"
        tar -cvzf "$ROOT_PATH/pkg/$extension.tar.gz" $extension
    )
done

sleep 3

for theme in "${all_themes[@]}" ; do
    echoInfo "====== Packaging $theme ======"
    # Using a sub-shell to switch directories to avoid "back and forth".
    (
        cd "../themes/$theme/files"
        tar -cvzf "$ROOT_PATH/pkg/$theme.tar.gz" $theme
    )
done
