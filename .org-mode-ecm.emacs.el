;; -*- no-byte-compile: t; -*-
(setq load-prefer-newer t)
(add-to-list 'load-path "~/src/org-mode/lisp")
(add-to-list 'load-path "~/src/org-mode/contrib/lisp")
(setq org-list-allow-alphabetical t)
(setq org-enforce-todo-checkbox-dependencies t)
(setq org-babel-noweb-wrap-start "«")
(setq org-babel-noweb-wrap-end "»")
(require 'org)
(message "ECM Information As Of: %s\nOrg-Version: %s\nOrg-Git-Version:
         %s\nEmacs-Version: %s\nNoweb wrap start and stop delimeters: '%s' and '%s'\nnorg-babel-default-header-args:\n"
         (let* ((timestamp (format-time-string "%Y-%m-%dT%T"))
                (safe (replace-regexp-in-string ":" "-" timestamp)))
           safe)
         (org-version)
         (org-git-version)
         (emacs-version)
         org-babel-noweb-wrap-start
         org-babel-noweb-wrap-end)
(princ org-babel-default-header-args)
