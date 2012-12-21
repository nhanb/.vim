# My Personal Vim Config

## Summary
In my vim setup, I try to utilize functionalities that are offered in the
latest versions (`colorcolumn=80` for example). It should work on terminal
Vim but I don't even bother to test it out since I use Gvim almost all of the
time.

## Caveats
- On first startup, run `:BundleInstall` to pull plugins.
- Expect it to only work smoothly on Unix-like systems with Gvim 7.3 or newer.
- The use of F-keys will be limited if you run vim on Gnome Terminal, since
this terminal emulator maps F1 to its own Help window, and F11 to toggling
fullscreen mode.
- Tagbar only works if you have [exuberant ctags](http://ctags.sourceforge.net/)
installed. For Ubuntu users, just run `sudo apt-get install exuberant-ctags`
- If you're a Windows user, curse you bad luck, not me.
