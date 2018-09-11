(add-hook 'json-mode-hook #'flycheck-mode)
(define-key thwap-map (kbd "j r") 'json-reformat-region)
(define-key thwap-map (kbd "j n r") 'json-navigator-navigate-region)
(define-key thwap-map (kbd "j n p") 'json-navigator-navigate-after-point)
