
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

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-export-default-language "zh")
 '(org-export-html-inline-images t)
 '(org-export-html-table-tag "<table>")
 '(org-export-htmlize-output-type (quote css))
 '(org-export-language-setup (quote (("zh" "作者" "日期" "目录" "脚注") ("en" "Author" "Date" "Table of Contents" "Footnotes") ("ca" "Autor" "Data" "&Iacute;ndex" "Peus de p&agrave;gina") ("cs" "Autor" "Datum" "Obsah" "Pozn\341mky pod carou") ("da" "Ophavsmand" "Dato" "Indhold" "Fodnoter") ("de" "Autor" "Datum" "Inhaltsverzeichnis" "Fu&szlig;noten") ("eo" "A&#365;toro" "Dato" "Enhavo" "Piednotoj") ("es" "Autor" "Fecha" "&Iacute;ndice" "Pies de p&aacute;gina") ("fi" "Tekij&auml;" "P&auml;iv&auml;m&auml;&auml;r&auml;" "Sis&auml;llysluettelo" "Alaviitteet") ("fr" "Auteur" "Date" "Table des mati&egrave;res" "Notes de bas de page") ("hu" "Szerz&otilde;" "D&aacute;tum" "Tartalomjegyz&eacute;k" "L&aacute;bjegyzet") ("is" "H&ouml;fundur" "Dagsetning" "Efnisyfirlit" "Aftanm&aacute;lsgreinar") ("it" "Autore" "Data" "Indice" "Note a pi&egrave; di pagina") ("nl" "Auteur" "Datum" "Inhoudsopgave" "Voetnoten") ("no" "Forfatter" "Dato" "Innhold" "Fotnoter") ("nb" "Forfatter" "Dato" "Innhold" "Fotnoter") ("nn" "Forfattar" "Dato" "Innhald" "Fotnotar") ("pl" "Autor" "Data" "Spis tre&sacute;ci" "Przypis") ("sv" "F&ouml;rfattare" "Datum" "Inneh&aring;ll" "Fotnoter"))))
 '(org-export-with-section-numbers nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq tramp-default-method "ssh")
