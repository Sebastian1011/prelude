(defun automatic-push ()
  (interactive)
  (magit-run-git "commit" "--all"
         (format-time-string "--message=%F %R"))
  (let ((current-branch (magit-get-current-branch)))
    (message "PUSHING!!!!")
    (magit-git-push current-branch
                    (concat "origin/" current-branch)
                    (list "--dry-run")
           )
    ))

(defun do-commit-save ()
    (shell-command (concat "git add " fn))
    (shell-command (concat "git commit -m 'auto save file'"))
    (call-process-shell-command "git push &" nil 0))

(defun auto-commit-save ()
  (let ((fn (buffer-file-name)))
    (if (string-match "AZCreed" fn)
	(do-commit-save)
      (if (string-match "Geek_And_Chef" fn)
	  (do-commit-save)
	(if (string-match "mnt/workspace" fn)
	    (do-commit-save))))))

  (add-hook 'after-save-hook #'auto-commit-save)


  (provide 'bowmore-magit)
