(require 'projectile)

;; default enable global mode
(projectile-global-mode)

;; default enable cache
(setq projectile-enable-caching t)

;;key bingding: ctrl shift n
(global-set-key [?\C-\S-n] 'projectile-find-file)

(provide 'bowmore-project)
