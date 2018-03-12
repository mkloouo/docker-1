
(windmove-default-keybindings)

;; default values configuration
(setq-default delete-selection-mode 1)
(setq-default line-number-mode 1)
(setq-default column-number-mode 1)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
								64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))
;; (require 'whitespace)
;; (global-whitespace-toggle-options 'face)
;; (global-whitespace-toggle-options 'spaces)
;; (global-whitespace-toggle-options 'tab-mark)
;; (global-whitespace-mode 1)
;; (setq-default whitespace-global-modes '(c-mode))

;; loading 42-header-insert
(load "/usr/share/emacs/site-lisp/list.el")
(load "/usr/share/emacs/site-lisp/string.el")
(load "/usr/share/emacs/site-lisp/comments.el")
(load "/usr/share/emacs/site-lisp/header.el")

;; packages configuration
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
