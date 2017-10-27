(setq auto-mode-alist
	(append '(
						 ;; File name (within directory) starts with a dot.
						 ("/\\.[^/]*\\'" . fundamental-mode)
						 ;; File name has no dot.
						 ("/[^\\./]*\\'" . fundamental-mode)
						 ;; File name ends in ‘.C’.
						 ("\\.C\\'" . c++-mode)
						 ("\\.js\\'" . js3-mode)
						 ("\\.vue\\'" . html-mode)
						 ) auto-mode-alist))