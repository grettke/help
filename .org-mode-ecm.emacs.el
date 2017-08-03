;; -*- no-byte-compile: t; -*-
(setq help/default-gc-cons-threshold gc-cons-threshold)
(defun help/set-gc-cons-threshold (&optional multiplier)
  "Set `gc-cons-threshold' either to its default value or a
   `multiplier' thereof."
  (let* ((new-multiplier (or multiplier 1))
         (new-threshold (* help/default-gc-cons-threshold
                           new-multiplier)))
    (setq gc-cons-threshold new-threshold)))
(setq load-prefer-newer t)
(add-to-list 'load-path "~/src/org-mode/lisp")
(add-to-list 'load-path "~/src/org-mode/contrib/lisp")
(setq org-list-allow-alphabetical t)
(setq org-enforce-todo-checkbox-dependencies t)
(setq org-babel-noweb-wrap-start "«")
(setq org-babel-noweb-wrap-end "»")
(require 'org)
(add-hook 'org-babel-pre-tangle-hook #'help/set-mem-max)
(add-hook 'org-babel-post-tangle-hook #'help/set-mem-default)
(defun help/display-system-info ()
  (interactive)
  (message "<<<ECM Information>>>\nThis buffer file: %s\nAs Of: %s\nOrg-Version: %s\nOrg-Git-Version:%s\nEmacs-Version: %s\nNoweb wrap start and stop delimeters: '%s' and '%s'\norg-babel-default-header-args:\n"
           buffer-file-name
           (let* ((timestamp (format-time-string "%Y-%m-%dT%T"))
                  (safe (replace-regexp-in-string ":" "-" timestamp)))
             safe)
           (org-version)
           (org-git-version)
           (emacs-version)
           org-babel-noweb-wrap-start
           org-babel-noweb-wrap-end)
  (pp org-babel-default-header-args))
(help/display-system-info)
