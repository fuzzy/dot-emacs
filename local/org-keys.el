;;;;;;;;;;;;;;;;;;;;;;;;;
;; ORG GTD keybindings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key thwap-map (kbd "t a") 'pop-to-org-agenda)
(define-key thwap-map (kbd "c") 'org-capture)
(define-key thwap-map (kbd "a") 'org-agenda)
(define-key thwap-map (kbd "p") 'org-pomodoro)
(define-key thwap-map (kbd "P") 'org-publish)
(define-key thwap-map (kbd "k I") 'org-kanban/initialize)
(define-key thwap-map (kbd "k E") 'org-kanban/initialize-at-end)
(define-key thwap-map (kbd "k B") 'org-kanban/initialize-at-beginning)
(define-key thwap-map (kbd "k n") 'org-kanban/next)
(define-key thwap-map (kbd "k p") 'org-kanban/prev)
(define-key thwap-map (kbd "k s") 'org-kanban/shift)
