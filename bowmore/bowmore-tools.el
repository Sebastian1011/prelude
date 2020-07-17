(require 'restclient)
(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))

(global-set-key (kbd "C-c =") 'ggtags-find-tag-dwim)


(provide 'bowmore-tools)
;;;
