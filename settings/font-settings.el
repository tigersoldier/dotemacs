;; -*- Emacs-List -*-

;;字体设置
(setq window-system-default-frame-alist
      '((x
	 (menu-bar-lines . 1)
	 (tool-bar-lines . nil)
	 (mouse-wheel-mode . 1)
	 (mouse-wheel-follow-mouse . t)
	 (mouse-avoidance-mode . 'exile)
	 (font . "文泉驿等宽微米黑 8"))
        (nil 
         (menu-bar-lines . 0) (tool-bar-lines . 0))))

(provide 'font-settings)
