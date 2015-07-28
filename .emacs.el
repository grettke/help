
(setq load-prefer-newer t)
(add-to-list 'load-path "~/src/org-mode/lisp")
(add-to-list 'load-path "~/src/org-mode/contrib/lisp")
(setq org-list-allow-alphabetical t)
(require 'org)
(setq org-babel-noweb-wrap-start "«")
(setq org-babel-noweb-wrap-end "»")
(defun help/set-org-babel-default-header-args (property value)
  "Easily set system header arguments in org mode.

PROPERTY is the system-wide value that you would like to modify.

VALUE is the new value you wish to store.

Attribution: URL `http://orgmode.org/manual/System_002dwide-header-arguments.html#System_002dwide-header-arguments'"
  (setq org-babel-default-header-args
        (cons (cons property value)
              (assq-delete-all property org-babel-default-header-args))))

(defun help/set-org-babel-default-inline-header-args (property value)
  "See `help/set-org-babel-default-header-args'; same but for inline header args."
  (setq org-babel-default-inline-header-args
        (cons (cons property value)
              (assq-delete-all property org-babel-default-inline-header-args))))
(setq org-babel-use-quick-and-dirty-noweb-expansion nil)
(help/set-org-babel-default-header-args :comments "noweb")
(help/set-org-babel-default-header-args :padline "yes")
(help/set-org-babel-default-header-args :noweb "no-export")
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'load-path "~/src/use-package")
(require 'use-package)
(use-package ob-sml
  :ensure t)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((calc . t)
   (css . t)
   (dot . t)
   (ditaa . t)
   (emacs-lisp . t)
   (js . t)
   (latex . t)
   (lilypond . t)
   (makefile . t)
   (org . t)
   (perl . t)
   (python . t)
   (plantuml . t)
   (R . t)
   (scheme . t)
   (sh . t)
   (sml . t)
   (sql . t)))
(help/set-org-babel-default-header-args :eval "never-export")
(help/set-org-babel-default-inline-header-args :eval "never-export")
(setq org-export-babel-evaluate nil)
(help/set-org-babel-default-header-args :results "output replace")
(help/set-org-babel-default-inline-header-args :results "value replace")
(require 'htmlize)
(setq org-html-htmlize-output-type htmlize-output-type)
(setq htmlize-output-type 'inline-css)
(require 'ox-beamer)
(require 'ox-md)
(setq org-export-coding-system 'utf-8)
(setq org-export-preserve-breaks nil)
(setq org-export-copy-to-kill-ring nil)
(setq org-export-with-toc nil)
(setq org-src-preserve-indentation t)
(help/set-org-babel-default-header-args :exports "both")
(eval-after-load 'ox '(require 'ox-koma-letter))
(eval-after-load 'ox-koma-letter
  '(progn
     (add-to-list 'org-latex-classes
                  '("my-letter"
                    "\\documentclass[paper=letter, pagesize, fontsize=10pt, parskip]{scrlttr2}
\\usepackage[english]{babel}
\\usepackage[osf]{mathpazo}"))

     (setq org-koma-letter-default-class "my-letter")))
(setq org-koma-letter-class-option-file "UScommercial9 KomaDefault")
(setq org-confirm-babel-evaluate nil)
(setq org-src-tab-acts-natively nil)
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "BLOCKED" "REVIEW" "DONE")))
(setq org-startup-with-inline-images (display-graphic-p))
(setq org-completion-use-ido t)
(setq org-outline-path-complete-in-steps nil)
(setq org-completion-use-iswitchb nil)
(setq org-use-speed-commands t)
(setq org-confirm-shell-link-function 'y-or-n-p)
(setq org-confirm-elisp-link-function 'y-or-n-p)
(setq org-enforce-todo-dependencies t)
(when (display-graphic-p)
  (require 'org-mouse))
(setq org-ellipsis "…")
(setq org-hide-leading-stars t)
(setq org-fontify-emphasized-text t)
(setq org-pretty-entities t)
(setq org-highlight-latex-and-related '(latex script entities))
(setq org-footnote-define-inline t)
(setq org-footnote-auto-label 'random)
(setq org-footnote-auto-adjust nil)
(setq org-footnote-section nil)
(setq org-catch-invisible-edits 'error)
(setq org-loop-over-headlines-in-active-region t)
(setq org-startup-folded "nofold")
(setq org-image-actual-width t)
(setq org-hide-emphasis-markers t)
(setq org-startup-align-all-tables t)
(setq org-html-checkbox-type 'unicode)
(setq org-src-fontify-natively nil)
(setq org-edit-src-content-indentation 0)
(setq org-src-strip-leading-and-trailing-blank-lines t)
(setq org-src-window-setup 'current-window)
(setq org-babel-no-eval-on-ctrl-c-ctrl-c t)
(defmacro help/on-gui (statement &rest statements)
  "Evaluate the enclosed body only when run on GUI."
  `(when (display-graphic-p)
     ,statement
     ,@statements))
(use-package key-chord
  :ensure t
  :config
  (key-chord-mode t)
  (setq key-chord-two-keys-delay 0.1))
(use-package dash
  :ensure t
  :config
  (dash-enable-font-lock))
(use-package f
  :ensure t)
(use-package s
  :ensure t)
(defmacro help/on-osx (statement &rest statements)
  "Evaluate the enclosed body only when run on OSX."
  `(when (eq system-type 'darwin)
     ,statement
     ,@statements))
(help/on-osx
 (use-package exec-path-from-shell
   :ensure t
   :config
   (exec-path-from-shell-initialize)))
(help/on-osx
 (setq mac-control-modifier 'control)
 (setq mac-command-modifier 'meta)
 (setq mac-option-modifier 'super))
(help/on-osx
 (defun help/yes-or-no-p (orig-fun &rest args)
   "Prevent yes-or-no-p from activating a dialog."
   (let ((use-dialog-box nil))
     (apply orig-fun args)))
 (advice-add 'yes-or-no-p :around #'help/yes-or-no-p)
 (advice-add 'y-or-n-p :around #'help/yes-or-no-p))
(desktop-save-mode t)
(setq desktop-restore-eager 10)
(use-package ido
  :ensure t)
(use-package flx-ido
  :ensure t
  :config
  (ido-mode 1))
(use-package ido-hacks
  :ensure t)
(use-package ido-ubiquitous
  :ensure t
  :config
  (ido-ubiquitous-mode +1)
  (setq ido-create-new-buffer 'always)
  (flx-ido-mode +1)
  (setq ido-use-faces nil))
(use-package ido-vertical-mode
  :ensure t
  :config
  (ido-vertical-mode +1)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right))
(use-package unicode-fonts
  :ensure t
  :config
  (unicode-fonts-setup))
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
(savehist-mode t)
(use-package magit
             :ensure t
             :config
             (global-set-key (kbd "s-s") #'magit-status))
(add-hook #'text-mode-hook #'linum-mode)
(add-hook #'prog-mode-hook #'linum-mode)
(setq ring-bell-function 'ignore)
(setq visible-bell t)
(setq blink-matching-paren nil)
(show-paren-mode +1)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
(blink-cursor-mode 0)
(help/on-gui
 (setq-default cursor-type 'box)
 (setq x-stretch-cursor 1))
(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-distinct-fringe-background t)
  (setq solarized-high-contrast-mode-line t)
  (setq solarized-use-less-bold t)
  (setq solarized-use-more-italic nil)
  (setq solarized-emphasize-indicators nil)
  (load-theme 'solarized-dark))
(help/on-gui
 (defvar help/font-size 10 "The preferred font size.")
 (help/on-osx (setq help/font-size 17))
 (defconst help/font-base "DejaVu Sans Mono" "The preferred font name.")
 (defun help/font-ok-p ()
   "Is the configured font valid?"
   (interactive)
   (member help/font-base (font-family-list)))
 (defun help/font-name ()
   "Compute the font name and size string."
   (interactive)
   (let* ((size (number-to-string help/font-size))
          (name (concat help/font-base "-" size)))
     name))
 (defun help/update-font ()
   "Updates the current font given configuration values."
   (interactive)
   (if (help/font-ok-p)
       (progn
         (message "Setting font to: %s" (help/font-name))
         (set-default-font (help/font-name)))
     (message (concat "Your preferred font is not available: " help/font-base))))
 (defun help/text-scale-increase ()
   "Increase font size"
   (interactive)
   (setq help/font-size (+ help/font-size 1))
   (help/update-font))
 (defun help/text-scale-decrease ()
   "Reduce font size."
   (interactive)
   (when (> help/font-size 1)
     (setq help/font-size (- help/font-size 1))
     (help/update-font)))
 (help/update-font))
(scroll-bar-mode 0)
(tool-bar-mode -1)
(setq make-pointer-invisible t)
(menu-bar-mode t)
(global-set-key (kbd "s-a") #'vc-next-action)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
