(elpy-enable)

(add-hook 'after-init-hook #'global-flycheck-mode)
;; (when (require 'flycheck nil t)
;;    (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;; (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
