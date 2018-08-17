;;;;;;;;;;;;;;;;;;;;;;;;;
;; Define dependencies ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(setq package-list
      ;;;; base support
      '(yasnippet
        auto-complete
	neotree
	better-defaults
	;;;; org-mode support bits
	org-plus-contrib
	org-bullets
	org-beautify-theme
	htmlize
	dash
	ledger-mode
	;;;; python support bits
        ;; elpy
	;;;; ansible support bits
	;; ansible
	;;;; saltstack support bits
        ;; salt-mode
        ;;;; golang support bits
        ;; go-mode
	;; go-guru
	;; auto-complete
	;; go-autocomplete
	;; flymake-go
        ;; exec-path-from-shell
        ))

(define-key lisp-interaction-mode-map (kbd "<C-return>") 'eval-last-sexp)

;;;;;;;;;;;;;;;;;;;;;
;; Package imports ;;
;;;;;;;;;;;;;;;;;;;;;

;; Base package installer
(load "~/.emacs.d/local/pkg-setup.el")
;; Org-Mode configurations
(load "~/.emacs.d/local/org-base.el")
(load "~/.emacs.d/local/org-gtd.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(org-log-done (quote note))
 '(package-selected-packages
   (quote
    (org-dashboard exec-path-from-shell flymake-go go-autocomplete auto-complete go-guru go-mode ansible flycheck pylint pysmell elpy ledger-mode dash htmlize org-beautify-theme org-bullets org-plus-contrib better-defaults neotree yasnippet)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Nimbus Mono PS" :foundry "UKWN" :slant normal :weight normal :height 90 :width normal)))))

