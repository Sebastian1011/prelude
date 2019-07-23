(require 'projectile)

;; default enable global mode
(projectile-global-mode)

;; default enable cache
(setq projectile-enable-caching t)

;;key bingding: ctrl shift n
(global-set-key (kbd "C-c C-f") 'projectile-find-file)

(provide 'bowmore-project)
