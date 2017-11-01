(defun this-file-dir () (file-name-directory load-file-name))
(defun get-relative-file-path (file-name) (expand-file-name file-name (this-file-dir)))
(load (get-relative-file-path "./config/init"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;