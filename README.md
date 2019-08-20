# Environment
* Terminal Multiplexer: tmux
* Shell: bash
* Editor: vim

# Tool
* Base16 Shell
* ctags
* cscope

# Vim plugin
* Base16 Vim
* gruvbox
* taglist
* airline
* ctrlp
* NERDTree

# Installation
```
$ git clone https://github.com/khhsu1352/dotfiles --recursive
$ git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

# Usage
```
// ctags
$ ctags -R

vim> set tags=./tags
vim> <ctrl-]>
vim> <ctrl-t>

// cscope
$ cscope -Rbq

vim> :cs find c|d|e|f|g|i|s|t name
	c: Find functions calling this function
	d: Find functions called by this function
	e: Find this egrep pattern
	f: Find this file
	g: Find this definition
	i: Find files #including this file
	s: Find this C symbol
	t: Find assignments to
```

# Utility
* 256color.pl

# Reference
* [vim cheatsheet](https://vim.rtorr.com/)
* [tmux cheatsheet](https://gist.github.com/MohamedAlaa/2961058)
