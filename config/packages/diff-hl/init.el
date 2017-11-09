(add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'vc-dir-mode-hook 'turn-on-diff-hl-mode)

(add-hook 'js3-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'html-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'smarty-mode-hook 'turn-on-diff-hl-mode)

(custom-set-variables '(diff-hl-margin-mode t))
(custom-set-variables '(diff-hl-flydiff-mode t))