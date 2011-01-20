;;与系统剪贴板互通
(setq x-select-enable-clipboard t)
;;;高亮选择
(transient-mark-mode t)
;;;显示行号
(setq line-number-mode t)
;;;显示列号
(setq column-number-mode t)
;;打开括号匹配显示模式
(show-paren-mode t)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(setq show-paren-style 'parenthesis)

;;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)
(put 'scroll-left 'disabled nil)

(tool-bar-mode nil)

(provide 'misc-settings)