(require 'org)
(require 'ox-publish)
(require 'htmlize)

(if (display-graphic-p)
    (load-theme 'org-beautify t)
    (require 'org-bullets)
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(require 'ox-org)
;; (load "~/.emacs.d/local/org-mind-map/org-mind-map.el")
(require 'elfeed-org)
(elfeed-org)
(setq rmh-elfeed-org-files (list "~/.emacs.d/elfeed.org"))

(setq org-ditaa-jar-path "/usr/share/ditaa/ditaa.jar")

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
