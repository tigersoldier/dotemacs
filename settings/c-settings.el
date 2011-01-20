; -*- mode: Emacs-Lisp -*-

(defconst cedet-user-include-dirs
  (list ".." "../lib" "../lib/chardect/include"
	"../.." "../../lib/chardect/include"))
(defconst cedet-system-include-dirs
  (list "/usr/include/gtk-2.0/" 
	"/usr/include/glib-2.0/"
	"/usr/include/libpurple/"))

(eval-after-load "semantic-c"
  `((let ((include-dirs (append cedet-user-include-dirs cedet-system-include-dirs)))
      (mapc (lambda (dir)
              (semantic-add-system-include dir 'c++-mode)
              (semantic-add-system-include dir 'c-mode))
            include-dirs))))

(defun  my-c-mode-common-hook ()
  (require 'doxymacs)
  (require 'xcscope)
  (require 'yasnippet)
  (c-set-style "gnu")
  (c-set-offset 'inline-open 0)
  (c-set-offset 'friend '-)
  (c-set-offset 'substatement-open 0)
  (setq  tab-width  2  indent-tabs-mode  nil)
  ;;; hungry-delete
  (c-toggle-hungry-state 1)
  ;;; 对CamelCase命名的变量，M-f M-b 一次移动以大写为分隔
  (c-subword-mode 1)
  ;;; 独占一行的注释直接按代码缩进
  (setq c-indent-comments-syntactically-p t)
  ;;预处理设置
  (setq  c-macro-shrink-window-flag  t)
  (setq  c-macro-preprocessor  "cpp")
  (setq  c-macro-cppflags  "  ")
  (setq  c-macro-prompt-flag  t)
  ;;doxymacs
  (doxymacs-mode)
  (doxymacs-font-lock)
)

(eal-eval-by-modes 
 `(c-mode c++-mode)
 (lambda (mode)
   (add-hook 'c-mode-common-hook 'my-c-mode-common-hook)))

(eal-define-keys
 `(c-mode-map c++-mode-map)
 `(("<f9>" compile)
   ("<f12>" gdb)
   ("C-c C-/" indent-for-comment)
   ("M-/" yas/expand)
   ("C-[" backward-list)
   ("C-]" forward-list)
   ("<RET>" c-context-line-break)
   ("C-c s g" cscope-find-global-definition-no-prompting)))

(provide 'c-settings)
