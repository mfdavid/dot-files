import XMonad
import XMonad.Config.Desktop

main = xmonad desktopConfig
	{ terminal = "terminator"
	, borderWidth = 3 
	}