(defun my-python-mode-hook ()
  ;(setq ac-sources
  ;      '(ac-source-ropemacs
  ;        ac-source-yasnippet))
  (yas/minor-mode)
  ;(set (make-local-variable 'ac-find-function) 'ac-python-find)
  ;(set (make-local-variable 'ac-candidate-function) 'ac-python-candidate)
  )

(eal-eval-by-modes
 `(python-mode)
 (lambda (mode)
   (require 'yasnippet)
   ;(require 'pymacs)
   ;(setq ropemacs-enable-shortcuts nil)
   ;(pymacs-load "ropemacs" "rope-")
   ;(setq ropemacs-enable-autoimport t)
   ;(setq ropemacs-guess-project t)
   (add-hook 'python-mode-hook 'my-python-mode-hook)))

(eal-define-keys
 `(python-mode-map)
 `(("M-/" yas/expand)
   ("C-c g" rope-goto-definition)
   ("C-c d" rope-show-doc)))
(provide 'python-settings)