# Mike's Dotfiles

How to use:
* Put files in, like so: `alacritty/.config/alacritty/alacritty.yml`
* Use `stow -v -R -t ~ $config` 
  * `-v`: Verbose
  * `-R`: Clean up before doing the needful
  * `-t`: Target
  * `$config`: Files to be symlinked, alacritty in the first example


I'll probably add a ZSH function to automate this at some point.
