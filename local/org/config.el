;;; THWAP/org --- base org stuff

;;; Commentary:

;;; Code:

(require 'org)
(require 'ox-publish)
(require 'htmlize)

(if (display-graphic-p)
    (load-theme 'org-beautify t)
    (require 'org-bullets)
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(require 'ox-org)
(setq org-ditaa-jar-path "~/.emacs.d/local/org/ditaa/ditaa.jar")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot . t)
   (emacs-lisp . t)
   (gnuplot . t)
   (plantuml . t)
   (latex . t)
   (ledger . t)
   (ditaa . t)
   (python . t)
   (ruby . t)
   (sql . t)))

;; (load "~/.emacs.d/local/org/confluence.el")
(load "~/.emacs.d/local/org/workflow.el")

(use-package org-mind-map
  :init
  (require 'ox-org)
  :ensure t
  ;; Uncomment the below if 'ensure-system-packages` is installed
  ;;:ensure-system-package (gvgen . graphviz)
  :config
  ;; (setq org-mind-map-engine "dot")    ; Default. Directed Graph
  ;; (setq org-mind-map-engine "neato")  ; Undirected Spring Graph
  ;; (setq org-mind-map-engine "twopi")  ; Radial Layout
  ;; (setq org-mind-map-engine "fdp")    ; Undirected Spring Force-Directed
  (setq org-mind-map-engine "sfdp")   ; Multiscale version of fdp for the layout of large graphs
  ;; (setq org-mind-map-engine "circo")  ; Circular Layout
  )
