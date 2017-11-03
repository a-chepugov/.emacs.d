(load (get-relative-file-path "./init-functions"))

(load (get-relative-file-path "./packages/init"))
(load (get-relative-file-path "./global-mode/init"))
(load (get-relative-file-path "./auto-mode"))

;; GUI components
(tool-bar-mode     -1) ;; отключаем tool-bar
;;(menu-bar-mode     -1) ;; отключаем графическое меню
;;(tooltip-mode      -1) ;; показывать помощь только в echo-области
;;(scroll-bar-mode   -1) ;; отключаем полосу прокрутки
;;(blink-cursor-mode -1) ;; курсор не мигает
;;(setq use-dialog-box     nil) ;; никаких графических диалогов и окон - все через минибуфер
(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера

(setq visible-bell t) ;; сделать звуковый сигнал визуальным
;;(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал

;; Disable backup/autosave files
(setq make-backup-files        nil)
(setq auto-save-default        nil)
(setq auto-save-list-file-name nil)

;; Fringe settings
(fringe-mode '(8 . 0)) ;; ограничитель текста только слева
(setq-default indicate-empty-lines t) ;; отсутствие строки выделить глифами рядом с полосой с номером строки
(setq-default indicate-buffer-boundaries 'left) ;; индикация только слева

;; Display file size/time in mode-line
(setq display-time-24hr-format t) ;; 24-часовой временной формат в mode-line
(display-time-mode             t) ;; показывать часы в mode-line
(size-indication-mode          t) ;; размер файла в %-ах

;; Clipboard settings
(setq x-select-enable-clipboard t) ;; Общий с ОС буфер обмена

;; Highlight search results
(setq search-highlight        t) ;; Выделять результаты поиска
(setq query-replace-highlight t)

(setq-default truncate-lines t) ;; Усекать отображение строк, выходящих за размер окна

;; Цветовая схема
(invert-face 'default)