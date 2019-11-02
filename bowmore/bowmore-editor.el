(global-display-line-numbers-mode)
;;(global-linum-mode 1)
;; always show line numbers
;; (setq linum-format "%d| ")  ;set format
(setq linum-format "%3d ")
(define-key global-map "\C-c\C-g" 'goto-line)
(show-paren-mode 1)
;; high light current line
(global-hl-line-mode 1)
;; (set-face-background 'hl-line "#3e4446")
(set-face-background 'hl-line "#6F6F6F")

(column-highlight-mode)


;; display time
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;; add spell check
(setq-default ispell-program-name "aspell")

;; auto reopen last session
;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize)
;;(desktop-save-mode t)

;; hide toolbar menu
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;(require 'whitespace)
;;(setq whitespace-line-column 80) ;; limit line length
;;(setq whitespace-style '(face lines-tail))

;;(add-hook 'prog-mode-hook 'whitespace-mode)
;;(add-hook 'org-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook '(lambda () (setq fill-column 80)))
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
	  (lambda ()
	    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(setq auto-mode-alist
      (append '(("\\.rst\\'" . rst-mode)
		("\\.rest\\'" . rst-mode)) auto-mode-alist))

(provide 'bowmore-editor)
