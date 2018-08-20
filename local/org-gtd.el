;;;;;;;;;;;;;;;;;;;;;
;; ORG GTD Configs ;;
;;;;;;;;;;;;;;;;;;;;;

(setq org-agenda-files (file-expand-wildcards "/dav:dav@dav.fossco.de:org/*.org"))

(setq org-todo-keywords
      '((sequence "TODO" "WIP" "STALLED" "|" "DONE" "DEPRECATED" "CANCELLED" )))

(setq org-capture-templates
      '(("a" "My TODO task format." entry
         (file "/dav:dav@dav.fossco.de:org/tasks.org")
         "** TODO %?
  SCHEDULED: %t")
        ("c" "Calendar entry format." entry
         (file "/dav:dav@dav.fossco.de:org/calendar.org")
         "** TODO %?
  SCHEDULED: %t")
        ("f" "Financial entry format." entry
         (file "/dav:dav@dav.fossco.de:org/financial.org")
         "** TODO %?
  SCHEDULED: %t")
        ("p" "Project entry format." entry
         (file "/dav:dav@dav.fossco.de:org/project.org")
         "** TODO %?
  SCHEDULED: %t")))

(setq org-agenda-custom-commands
      '(("r" "Sprint Report"
         ((tags "PRIORITY=\"A\""
                ((org-agenda-skip-function
                  '(or (org-agenda-skip-entry-if 'todo 'done)
                       (my-org-agenda-skip-tag "active" t)))
                 (org-agenda-overriding-header "\nHigh-priority unfinished tasks:\n")))
          (tags "PRIORITY=\"B\""
                ((org-agenda-skip-function
                  '(or (org-agenda-skip-entry-if 'todo 'done)
                       (my-org-agenda-skip-tag "active" t)))
                 (org-agenda-overriding-header "\nMedium-priority unfinished tasks:\n")))
          (agenda ""
                  ((org-agenda-overriding-header "\nScheduled tasks:\n")))
          (alltodo ""
                   ((org-agenda-skip-function
                     '(or (air-org-skip-subtree-if-priority ?A)
                          (air-org-skip-subtree-if-priority ?B)
                          (my-org-agenda-skip-tag "active" t)
                          (org-agenda-skip-if nil '(scheduled deadline))))
                    (org-agenda-overriding-header "\nBacklog:\n")))))))


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

(defun my-org-agenda-skip-tag (tag &optional others)
  "Skip all entries that correspond to TAG.

If OTHERS is true, skip all entries that do not correspond to TAG."
  (let ((next-headline (save-excursion (or (outline-next-heading) (point-max))))
        (current-headline (or (and (org-at-heading-p)
                                   (point))
                              (save-excursion (org-back-to-heading)))))
    (if others
        (if (not (member tag (org-get-tags-at current-headline)))
            next-headline
          nil)
      (if (member tag (org-get-tags-at current-headline))
          next-headline
        nil))))

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

(define-key global-map (kbd "C-c t a") 'pop-to-org-agenda)
(define-key global-map (kbd "C-c c") 'org-capture)
(define-key global-map (kbd "C-c a") 'org-agenda)
(define-key global-map (kbd "C-c p") 'org-publish)
