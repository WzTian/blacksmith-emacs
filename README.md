# Blacksmith with emacs

## Requirements:
blacksmith (of course)
pexpect: `easy_install pexpect`

## Install:
Move blacksmith.el into your load-path,
move blacksmith-input to somewhere you like.

## Usage:
add the following to your `~/.emacs`:

```elisp
(setq blacksmith-workdir (expand-file-name "path_to_your_dir"))
(setq author-name "yourname")
(setq blacksmith-input (expand-file-name "path to blacksmith-input"))
(require 'blacksmith)
```
