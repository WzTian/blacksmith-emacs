;Weizhi Tian <tianweizhi@gmail.com>
;interact with blacksmith, the nodejs static site generator from
;within emacs.

(setq blacksmith-workdir (expand-file-name "~/test_node_blog/wzt"))
(setq pages-dir (concat blacksmith-workdir "/pages"))
(setq author-name "wzt")
(setq blacksmith-input (expand-file-name "~/bin/blacksmith-input"))
; blacksmith-input is a python script using pyexpect module to
; deal with the interactive blacksmith post.

(defun blacksmith-new-post (title)
  (interactive "MTitle: ")
  (let ((command-str
         (format "cd %s && %s %s %s" pages-dir blacksmith-input title author-name)))
    (progn
      (shell-command command-str)
      (find-file (concat pages-dir "/" title "/page.json"))
      (find-file (concat pages-dir "/" title "/content.md")))))

(defun blacksmith-generate ()
  (interactive)
  (let ((command-str
         (format "cd %s && blacksmith generate" blacksmith-workdir)))
    (shell-command command-str)))

(defun blacksmith-preview ()
  (interactive)
  (let ((command-str
         (format "cd %s && blacksmith preview &" blacksmith-workdir)))
    (shell-command command-str)))

(provide 'blacksmith)















