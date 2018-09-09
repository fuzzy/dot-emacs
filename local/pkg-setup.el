;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package repos and setup ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)

(defun install-package-list (package-list)
       ;; fetch the list of packages available
       (unless package-archive-contents
         (package-refresh-contents))

       ;; install the missing packages
       (dolist (package package-list)
         (unless (package-installed-p package)
           (package-install package))))

;; initialize package system
(package-initialize)
;; and ensure all deps are present
(install-package-list package-list)

(require 'better-defaults)
(load "~/.emacs.d/lisp/org-kanban-master/org-kanban.el")
