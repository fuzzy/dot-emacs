;;; THWAP/rss --- base rss stuff (ELFeed)

;;; Commentary:

;;; Code:

(define-key thwap-map (kbd "r s") 'elfeed)
(define-key thwap-map (kbd "r u") 'elfeed-update)
(define-key thwap-map (kbd "r a") 'elfeed-add-feed)
(define-key thwap-map (kbd "r d") 'elfeed-kill-buffer)
(define-key thwap-map (kbd "r f") 'elfeed-search-live-filter)

(require 'elfeed-org)
(elfeed-org)
(setq rmh-elfeed-org-files (list "~/.emacs.d/elfeed.org"))
