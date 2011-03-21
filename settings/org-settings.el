(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(defun my-org-mode-hook ()
  (setq truncate-lines nil)
  (require 'yasnippet)
  (yas/minor-mode t)
  (define-key org-mode-map "<tab>" 'yas/expand))

(eal-eval-by-modes
 `org-mode
 (lambda (mode)
   (add-hook 'org-mode-hook 'my-org-mode-hook)
   (setq org-hide-leading-stars t)
   (setq org-log-done t)
   (setq org-export-html-inline-images t)
   (setq org-export-html-table-tag "<table>")
   (setq org-export-htmlize-output-type (quote css))
   (setq org-agenda-files (list "~/org/self.org"))))

(provide 'org-settings)
