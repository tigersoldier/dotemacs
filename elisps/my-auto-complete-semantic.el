(require 'auto-complete)
(require 'auto-complete-config)

(defvar my-ac-semantic-cache nil)
(defun my-ac-semantic-candidates (prefix)
  (unless (and my-ac-semantic-cache
               (let ((old-prefix (car my-ac-semantic-cache)))
                 (and (>= (length prefix)
                          (length old-prefix))
                      (string= (substring
                                prefix
                                0
                                (length old-prefix))
                               old-prefix))))
    (setq my-ac-semantic-cache
          (cons prefix
                (ac-semantic-candidates prefix))))
  (cdr my-ac-semantic-cache))

(ac-define-source cached-semantic
  '((available . (or (require 'semantic-ia nil t)
                     (require 'semantic/ia nil t)))
    (candidates . (my-ac-semantic-candidates ac-prefix))
    (symbol . "s")))

(provide 'my-auto-complete-semantic)
