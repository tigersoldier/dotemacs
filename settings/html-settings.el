(eal-eval-by-modes
 'html-mode
 (lambda (mode)
   (require 'yasnippet)
   (yas/minor-mode t)))

(provide 'html-settings)
