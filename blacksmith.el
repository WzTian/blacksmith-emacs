;Weizhi Tian <tianweizhi@gmail.com>
;interact with blacksmith, the nodejs static site generator from
;within emacs.
;put this file in your load-path and
;put the following in your .emacs:
;
;(setq blacksmith-workdir (expand-file-name "path_to_your_dir"))
;(setq author-name "yourname")
;(setq blacksmith-input (expand-file-name "path to blacksmith-input"))
;(require 'blacksmith)

(setq pages-dir (concat blacksmith-workdir "/pages"))

(defun blacksmith-new-post (title)
  (interactive "MTitle: ")
  (let ((command-str
         (format "cd %s && %s %s %s" pages-dir blacksmith-input title author-name)))
    (progn
      (shell-command command-str)
      (find-file (concat pages-dir "/" (downcase title) "/page.json"))
      (find-file (concat pages-dir "/" (downcase title) "/content.md")))))

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















