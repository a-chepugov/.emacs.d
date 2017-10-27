(require 'package)
;; Добавляем дополнительные архивы с пакетами
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
;; Добавляет новые, но нестабильные пакеты
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Инициализируем пакеты
(package-initialize)

;; Получаем список пакетов
(unless package-archive-contents(package-refresh-contents))