;;; THWAP --- Base Emacs Configuration

;;; Commentary:
;;; So this is where all the magic happens.

;;; Code:

;;; Here you can configure the options you want to enable
(setq thwap/layers '("base"
                     "rss"
                     ;; "exwm"
                     "python"
                     "golang"
                     "docker"
                     "ansible"
                     ;; "saltstack"
                     "javascript"
                     "org"))


;;; Package repos:

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
		         ("org" . "https://orgmode.org/elpa/")
                         ("elpy" . "https://jorgenschaefer.github.io/packages/")
                         ("marmalade" . "http://marmalade.ferrier.me.uk")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize t)

(setq thwap/package-list
      ;;;; base support
      '(auto-complete
	dash
	better-defaults))

;;; Utilities:

(defun thwap/append-to-list (list-var elements)
  "Append ELEMENTS to the end of LIST-VAR.

The return value is the new value of LIST-VAR."
  (dolist (x elements)
    (nreverse list-var)
    (push x list-var)))

(defun thwap/package-installs (package-list)
       ;; fetch the list of packages available
       (unless package-archive-contents
         (package-refresh-contents))

       ;; install the missing packages
       (dolist (package package-list)
         (unless (package-installed-p package)
           (package-install package))))

(defun thwap/activate (name)
  "Activate the named module."
  (load (concat (concat "~/.emacs.d/local/" name) "/imports.el"))
  (thwap/package-installs package-list)
  (load (concat (concat "~/.emacs.d/local/" name) "/config.el")))

(package-initialize)
(thwap/package-installs thwap/package-list)
(require 'better-defaults)

(dolist (x thwap/layers)
  (thwap/activate x))

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
 '(org-agenda-files (find-lisp-find-files "~/org" ".org$"))
 '(org-log-done (quote note))
 '(package-selected-packages
   (quote
    (markdown-mode confluence eww-lnum exwm exwm-x docker-compose-mode dockerfile-mode ## elfeed-org flycheck-pycheckers salt-mode py-autopep8 ein org-pomodoro unicode-progress-reporter org-dashboard exec-path-from-shell flymake-go go-autocomplete auto-complete go-guru go-mode ansible flycheck pylint pysmell elpy ledger-mode dash htmlize org-beautify-theme org-bullets org-plus-contrib better-defaults neotree yasnippet)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Mono" :foundry "monotype" :slant normal :weight normal :height 90 :width normal)))))

