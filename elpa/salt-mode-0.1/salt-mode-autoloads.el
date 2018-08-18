;;; salt-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "salt-mode" "salt-mode.el" (0 0 0 0))
;;; Generated autoloads from salt-mode.el

(autoload 'salt-mode "salt-mode" "\
A major mode to edit Salt States.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.sls\\'" . salt-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "salt-mode" '("salt-indent-level")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; salt-mode-autoloads.el ends here