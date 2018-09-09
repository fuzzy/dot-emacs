
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ORG Dashboard Configs ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'unicode-progress-reporter)
(unicode-progress-reporter-setup)

;;;;;;;;;;;;;;;;;;;;;
;; ORG GTD Configs ;;
;;;;;;;;;;;;;;;;;;;;;

;; (setq tramp-default-method "ssh")
;;(setq org-directory "/ssh:org@45fce22.c0d0p0s0.net:*.org")
;; (setq org-agenda-files (file-expand-wildcards "/ssh:org@45fce22.c0d0p0s0.net:*.org"))


(setq org-todo-keywords
      '((sequence "TODO" "WIP" "|" "DONE" "CANCELLED" )))

(setq org-capture-templates
      '(("a" "My TODO task format." entry
         (file "/ssh:org@org.c0d0p0s0.net:org/tasks.org")
         "** TODO %?")
        ("c" "Calendar entry format." entry
         (file "/ssh:org@org.c0d0p0s0.net:org/calendar.org")
         "** TODO %?")
        ("n" "Notes entry format." entry
         (file "/ssh:org@org.c0d0p0s0.net:org/notes.org")
         "* %?")
        ("r" "R & D format." entry
         (file "/ssh:org@org.c0d0p0s0.net:org/rnd.org")
         "** TODO %?")
        ("p" "Project entry format." entry
         (file "/ssh:org@org.c0d0p0s0.net:org/project.org")
         "** TODO %?")))

(setq org-agenda-custom-commands
      '(("r" "Weekly Report"
         ((tags "PRIORITY=\"A\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "\nHigh-priority unfinished tasks:\n")))
          (tags "PRIORITY=\"B\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "\nMedium-priority unfinished tasks:\n")))
          (tags "PRIORITY=\"C\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "\nLow-priority unfinished tasks:\n")))
          (agenda "")))))

;; (setq org-agenda-custom-commands
;;       '(("c" "Simple agenda view"
;;          ((tags "PRIORITY=\"A\""
;;                 ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
;;                  (org-agenda-overriding-header "\nHigh-priority unfinished tasks:\n")))
;;           (alltodo ""
;;                    ((org-agenda-overriding-header "\nAll tasks:\n")))))))

;;;;;;;;;;;;;;;;;;;;;
;; ORG GTD Helpers ;;
;;;;;;;;;;;;;;;;;;;;;

(defun pop-to-org-agenda (split)
  "Visit the org agenda, in the current window or a SPLIT."
  (interactive "P")
  (org-agenda-list)
  (when (not split)
    (delete-other-windows)))

(defun org-task-capture ()
  "Capture a task with my default template."
  (interactive)
  (org-capture nil "a"))

(defun air-org-skip-subtree-if-priority (priority)
  "Skip an agenda subtree if it has a priority of PRIORITY.

PRIORITY may be one of the characters ?A, ?B, or ?C."
  (let ((subtree-end (save-excursion (org-end-of-subtree t)))
        (pri-value (* 1000 (- org-lowest-priority priority)))
        (pri-current (org-get-priority (thing-at-point 'line t))))
    (if (= pri-value pri-current)
        subtree-end
      nil)))

;;;;;;;;;;;;;;;;;;;;;;;;;
;; ORG GTD keybindings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(define-prefix-command 'thwap-map)
(global-set-key (kbd "C-t") 'thwap-map)
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
