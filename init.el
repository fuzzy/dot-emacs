
;;;;;;;;;;;;;;;;;;;;;;;;;
;; Define dependencies ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(setq package-list
      ;;;; base support
      '(yasnippet
        auto-complete
	dash
	neotree
	better-defaults
        unicode-progress-reporter
        elfeed
        ;;;; org-mode support bits
        elfeed-org
	org-plus-contrib
	org-bullets
	org-beautify-theme
        org-pomodoro
	htmlize
	dash
	ledger-mode
	;; org-dashboard
	;;;; python support bits
        ein
        elpy
        flycheck
        flycheck-pycheckers
        py-autopep8
	;;;; ansible support bits
	ansible
	;;;; json support bits
	json-mode
	json-navigator
	json-reformat
	;;;; saltstack support bits
        salt-mode
        ;;;; golang support bits
        go-mode
	go-guru
	go-autocomplete
	;; flymake-go
        exec-path-from-shell
        ))

(load-library "find-lisp")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(global-linum-mode t)
 '(global-visual-line-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(org-agenda-files
   (find-lisp-find-files "/ssh:org@org.c0d0p0s0.net:org/" "\.org$"))
 '(org-log-done (quote note))
 '(package-selected-packages
   (quote
    (## elfeed-org flycheck-pycheckers salt-mode py-autopep8 ein org-pomodoro unicode-progress-reporter org-dashboard exec-path-from-shell flymake-go go-autocomplete auto-complete go-guru go-mode ansible flycheck pylint pysmell elpy ledger-mode dash htmlize org-beautify-theme org-bullets org-plus-contrib better-defaults neotree yasnippet)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Mono" :foundry "monotype" :slant normal :weight normal :height 90 :width normal)))))

;;;;;;;;;;;;;;;;;;;;;
;; Package imports ;;
;;;;;;;;;;;;;;;;;;;;;

;; Base package installer
(load "~/.emacs.d/local/pkg-setup.el")

;; Base keybindings
(load "~/.emacs.d/local/kbd-setup.el")

;; ElFeed configurations
(load "~/.emacs.d/local/elfeed-keys.el")

;; Org-Mode configurations
(load "~/.emacs.d/local/org-base.el")

;; Python configurations
(load "~/.emacs.d/local/py-setup.el")

;; Json configuration
(load "~/.emacs.d/local/js-setup.el")

