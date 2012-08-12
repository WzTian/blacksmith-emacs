# Blacksmith with emacs

## Requirements:
blacksmith (of course)

pexpect: `easy_install pexpect`

## Install:
Move blacksmith.el into your load-path,
move blacksmith-input to somewhere you like.

## Config: 
add the following to your `~/.emacs`:

```elisp
(setq blacksmith-workdir (expand-file-name "path_to_your_dir"))
(setq author-name "yourname")
(setq blacksmith-input (expand-file-name "path to blacksmith-input"))
(require 'blacksmith)
```

## Usage:
`blacksmith-new-post` asks for the title, and open the right content.md and page.json
for you.

`blacksmith-preview` and `blacksmith-generate` do what their name says.

## Bugs:
- If the title contains spaces, emacs won't be able to find the right content.md
and page.json since the directory would contains `-`s, you can open them manually.
Should be fixed as I learn more about elisp
