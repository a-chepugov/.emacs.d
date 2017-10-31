(let ((bookmark-default-file-name (concat user-emacs-directory "bookmarks")))
	(setq bookmark-default-file bookmark-default-file-name) ;; хранить закладки в файл bookmarks в .emacs.d
	(when (file-exists-p bookmark-default-file-name)
		(bookmark-load bookmark-default-file t)) ;; попытаться найти и открыть файл с закладками
	)

(setq bookmark-save-flag t) ;; автоматически сохранять закладки в файл
(global-set-key (kbd "<f3>") 'bookmark-set) ;; создать закладку по F3
(global-set-key (kbd "<f4>") 'bookmark-jump) ;; прыгнуть на закладку по F4
(global-set-key (kbd "<f5>") 'bookmark-bmenu-list) ;; открыть список закладок