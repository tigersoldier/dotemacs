;;;M-g 转到指定行号
(global-set-key [(meta g)] 'goto-line)
;;;设置选择起点
(global-set-key (kbd "C-x <SPC>") 'set-mark-command)
(global-set-key (kbd "M-p") 'scroll-down)
(global-set-key (kbd "M-n") 'scroll-up)
(global-set-key (kbd "C-<tab>") 'next-buffer)

(eal-define-keys
 `(emacs-lisp-mode-map python-mode-map html-mode-map)
 `(("<return>" newline-and-indent)))

(eal-define-keys
 `(Info-mode-map help-mode-map Man-mode-map)
 `(("j" next-line 1 t)
   ("k" previous-line 1 t)
   ("a" move-beginning-of-line)
   ("e" move-end-of-line)
   ("C-k" kill-buffer)))
    
(provide 'global-keybindings)
