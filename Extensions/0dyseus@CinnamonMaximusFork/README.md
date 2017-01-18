## Cinnamon Maximus Fork extension description

This extension is a fork of the [Cinnamon Maximus](https://cinnamon-spices.linuxmint.com/extensions/view/29) extension by Fatih Mete. The main difference with the original is that I removed the blacklist feature in favor of a whitelist feature. I also added a couple of options for troubleshooting and completely removed the top border of undecorated maximized windows.

## Compatibility

- ![Cinnamon 2.8](https://cdn.rawgit.com/Odyseus/CinnamonTools/master/0MiscFiles/MyBadges/Cinnamon-2.8.svg) ![Linux Mint 17.3](https://cdn.rawgit.com/Odyseus/CinnamonTools/master/0MiscFiles/MyBadges/Linux_Mint-17.3.svg)
- ![Cinnamon 3.0](https://cdn.rawgit.com/Odyseus/CinnamonTools/master/0MiscFiles/MyBadges/Cinnamon-3.0.svg) ![Linux Mint 18](https://cdn.rawgit.com/Odyseus/CinnamonTools/master/0MiscFiles/MyBadges/Linux_Mint-18.svg)
- ![Cinnamon 3.2](https://cdn.rawgit.com/Odyseus/CinnamonTools/master/0MiscFiles/MyBadges/Cinnamon-3.2.svg) ![Linux Mint 18.1](https://cdn.rawgit.com/Odyseus/CinnamonTools/master/0MiscFiles/MyBadges/Linux_Mint-18.1.svg)

## Features and options

- It removes the windows decorations of all maximized windows.
- If the option **Undecorate when tiled** is enabled, tiled windows will also have their decorations removed.
- If the option **Use Whitelist** is enabled, only the window decorations of the applications listed will be removed when maximized.

## Dependencies

- xprop
- xwininfo

**Note:** Both commands are already available on Linux Mint. They are installed by the **x11-utils** package.

## Change Log

##### 0.3.5
- Added support for localizations. If someone wants to contribute with translations, inside the Help section of this applet (found in the applet context menu or the Help.md file inside this applet folder) you will find some pointers on how to do it.

##### 0.3.4
- Initial release of the fork.
