# nvim-config

> My personal configuration for nvim :)

Depends of nvim installation. If you haven't installed it yet please, install it by the following command:
```sh
$ brew install neovim
```

### Installation:
1. Clone the repo:
```sh
$ git clone git@github.com:helielson/nvim-config.git $NVIM_CONFIG_LOCAL_PATH
```

2. Link the config
```sh
$ ln -s "$NVIM_CONFIG_LOCAL_PATH/nvim" ~/.config/nvim
```

3. Add neobundle
```sh
$ git clone https://github.com/Shougo/neobundle.vim nvim/bundle/neobundle.vim
```


### Troubleshooting
If you are getting the error below while opening nvim:
```
UltiSnips requires py >= 2.7 or py3
Press ENTER or type command to continue
```

and you have python installed:
```sh
$ python --version
Python 2.7.14
```

you need to install neovim python package
```sh
$ sudo pip2 install --upgrade neovim
```
