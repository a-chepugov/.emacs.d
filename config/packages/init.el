(setq inhibit-startup-screen t)
(switch-to-buffer "*Messages*")

(defun this-file-dir () (file-name-directory load-file-name))
(defun get-relative-file-path (file-name) (expand-file-name file-name (this-file-dir)))
(defun get-package-name-by-dir (file-name) (car (last (split-string file-name "/") 2 )))
(defun get-dirs (path) (split-string(shell-command-to-string (concat "ls -dA " (this-file-dir) path))))

;; Подготавливаем систему пакетов
(load (get-relative-file-path "./archives"))

;; Ищем настройки для пакетов и устанавливаем их
(let ((config-list (get-dirs "*/")))
	(dolist (config config-list)
		(let ((package (intern (get-package-name-by-dir config))))
			(print (concat "=> " (symbol-name package)))
			(unless (package-installed-p package)(package-install package)) ;; Загружаем пакет, если отсутствуем
			(require package) ;; Активируем пакет
			(load (concat config "init")) ;; Загружаем настройки для пакета
		)
	)
)
