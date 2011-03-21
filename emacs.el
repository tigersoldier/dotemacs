
(defconst my-emacs-path           "~/.emacs.d/" "我的emacs相关配置文件的路径")
(defconst my-emacs-lisps-path     (concat my-emacs-path "elisps/") "我下载的emacs lisp包的路径")
(defconst my-emacs-settings-path  (concat my-emacs-path "settings/") "我的设置包路径")

;; 把`my-emacs-lisps-path'的所有子目录都加到`load-path'里面
(load (concat my-emacs-lisps-path "dea-subdirs"))
(my-add-subdirs-to-load-path my-emacs-lisps-path)
(my-add-subdirs-to-load-path my-emacs-settings-path)
(add-to-list 'load-path my-emacs-path)

;; 利用`eval-after-load'加快启动速度的库
;; 用eval-after-load避免不必要的elisp包的加载
;; http://emacser.com/eval-after-load.htm
(require 'eval-after-load)

(load "local-settings" t)

(require 'my-settings)

(require 'auto-complete-settings)

(require 'maxframe-settings)

(require 'cursor-chg)

(setq tramp-default-method "ssh")
