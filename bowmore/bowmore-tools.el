;;; init-tools --- this init some dev tools
;;; Commentary:
;;; Code:
;;; enable rest client mode
(require 'restclient)
(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))

(provide 'bowmore-tools)
;;;
