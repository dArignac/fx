# My shell configs

## ZSH
* install zsh `sudo apt install zsh`
* install oh-my-zsh `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
* change shell to zsh `chsh -s /bin/zsh`
* clone repo to `$HOME/.fx` or symlink (`git clone https://github.com/dArignac/fx.git $HOME/.fx`)
* run `$HOME/.fx/zsh/install.sh`

## Private ZSH files
If you want to add additional files overwriting the enviroment set by the *.zsh files, then place `z_private_*.zsh` files in the `zsh/custom` folder. They will be picked up last (but before the `.zshrc` file is sourced).
