;; перемещение между кадрами
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; отмена действия
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-<escape>")  'keyboard-quit)

(global-set-key (kbd "C-c C-i")  'invert-face+) ;; инвертирование цветовой схемы

(global-set-key (kbd "C-<f4>")  'kill-buffer) ;; уничтожить буфер

;; дублировать строку или область
(global-set-key (kbd "C-c d")  'duplicate-current-line-or-region)
(global-set-key (kbd "C-c C-d")  'duplicate-current-line-or-region)
