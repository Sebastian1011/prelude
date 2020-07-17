;;; bowmore-init --- Summary
;;; this file is used to init all bowmore packages

;;; Commentary:

;;; Code:
;;; PACKAGES: packages to be installed
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.
   Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     (unless (package-installed-p package)
       (package-install package)))
   packages)
  )

(eval-after-load 'ggtags
  '(progn
     (evil-make-overriding-map ggtags-mode-map 'normal)
     ;; force update evil keymaps after ggtags-mode loaded
     (add-hook 'ggtags-mode-hook #'evil-normalize-keymaps)))

;; === List my packages ===
;; simply add package names to the list
(ensure-package-installed
 'flycheck
 'yaml-mode
 'restclient
 'ggtags
 'thrift
 'flycheck-pos-tip
 'projectile
 'org-alert
 'org-preview-html
 'swift-mode
 'nginx-mode
 'graphviz-dot-mode
 'plantuml-mode
 ;; ... etc
 )

(provide 'bowmore-init)
