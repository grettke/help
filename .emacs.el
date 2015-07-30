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

(defun help/comment-or-uncomment ()
  "Comment or uncomment the current line or selection."
  (interactive)
  (cond ((not mark-active) (comment-or-uncomment-region (line-beginning-position)
                                                      (line-end-position)))
        ((< (point) (mark)) (comment-or-uncomment-region (point) (mark)))
        (t (comment-or-uncomment-region (mark) (point)))))

(defun help/save-all-file-buffers (&rest ls)
  "Saves every buffer associated with a file

LS captures arguments when this is used as before advice."
  (interactive)
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (when (and (buffer-file-name) (buffer-modified-p))
        (save-buffer)))))

(defun help/describe-thing-in-popup ()
    "Display help information on the current symbol.

Attribution: URL `http://www.emacswiki.org/emacs/PosTip'
Attribution: URL `http://blog.jenkster.com/2013/12/popup-help-in-emacs-lisp.html'"
    (interactive)
    (let* ((thing (symbol-at-point))
           (help-xref-following t)
           (description (with-temp-buffer
                          (help-mode)
                          (help-xref-interned thing)
                          (buffer-string))))
      (help/on-gui (pos-tip-show description nil nil nil 300))
      (help/not-on-gui (popup-tip description
                                 :point (point)
                                 :around t
                                 :height 30
                                 :scroll-bar t
                                 :margin t))))
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
(define-key org-mode-map (kbd "s-t") #'help/safb-org-babel-tangle)
(defmacro help/on-gui (statement &rest statements)
  "Evaluate the enclosed body only when run on GUI."
  `(when (display-graphic-p)
     ,statement
     ,@statements))

(defmacro help/not-on-gui (statement &rest statements)
  "Evaluate the enclosed body only when run on GUI."
  `(when (not (display-graphic-p))
     ,statement
     ,@statements))

(defmacro help/diminish (mode)
  "Diminish this mode after it is loaded."
  (interactive)
  `(eval-after-load ,mode
     (diminish ,mode)))
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
(use-package diminish
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
(defmacro help/on-windows (statement &rest statements)
  "Evaluate the enclosed body only when run on Microsoft Windows."
  `(when (eq system-type 'windows-nt)
     ,statement
     ,@statements))
(help/on-windows
 (setq shell-file-name "cmdproxy.exe"))
(help/on-windows
 (setq w32-lwindow-modifier 'super)
 (setq w32-rwindow-modifier 'super))
(use-package smartparens :if nil
             :ensure t
             :config
             (require 'smartparens-config)
             (show-smartparens-global-mode t)
             (setq sp-show-pair-from-inside nil)
             (help/diminish "smartparens-mode"))
(desktop-save-mode t)
(setq desktop-restore-eager 10)
(global-set-key (kbd "s-r") 'help/describe-thing-in-popup)
(defun help/safb-vc-next-action ()
  (interactive)
  (help/save-all-file-buffers)
  (vc-next-action nil))

(defun help/safb-diff-hl-mode ()
  (interactive)
  (help/save-all-file-buffers)
  (diff-hl-mode nil))

(defun help/safb-vc-ediff ()
  (interactive)
  (help/save-all-file-buffers)
  (vc-ediff nil))

(defun help/safb-vc-diff ()
  (interactive)
  (help/save-all-file-buffers)
  (vc-diff nil))

(defun help/safb-vc-revert ()
  (interactive)
  (help/save-all-file-buffers)
  (vc-revert))

(defun help/safb-magit-status ()
  (interactive)
  (help/save-all-file-buffers)
  (magit-status))

(defun help/safb-org-babel-tangle ()
  (interactive)
  (help/save-all-file-buffers)
  (let ((start (current-time)))
    (message (concat "org-babel-tangle BEFORE: <"
                     (format-time-string "%Y-%m-%dT%T%z")
                     ">"))
    (org-babel-tangle)
    (let* ((dur (float-time (time-since start)))
           (msg (format "Tangling complete after: %.06f seconds" dur)))
      (message (concat "org-babel-tangle AFTER: <"
                       (format-time-string "%Y-%m-%dT%T%z")
                       ">"))
      (message msg)
      (help/on-gui (alert msg :title "org-mode")))))
(require 'ido)
(use-package flx-ido
             :ensure t
             :config
             (ido-mode t))
(use-package ido-hacks
             :ensure t)
(use-package ido-ubiquitous
             :ensure t
             :config
             (ido-ubiquitous-mode t)
             (setq ido-create-new-buffer 'always)
             (flx-ido-mode t)
             (setq ido-use-faces nil))
(use-package ido-vertical-mode
             :ensure t
             :config
             (ido-vertical-mode t)
             (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right))
(use-package smex
             :ensure t
             :config
             (smex-initialize))
(setq ido-use-url-at-point t)
(setq ido-use-filename-at-point 'guess)
(use-package unicode-fonts
  :ensure t
  :config
  (unicode-fonts-setup))
(use-package avy
  :ensure t
  :config
  (key-chord-define-global "df" #'avy-goto-word-1)
  (key-chord-define-global "DF" #'avy-pop-mark))
(use-package multiple-cursors
             :ensure t)
(delete-selection-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)
(setq enable-recursive-minibuffers t)
(minibuffer-depth-indicate-mode t)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse +1)
(use-package pos-tip
             :ensure t)
(help/on-windows
 (ignore-errors
   (pos-tip-w32-max-width-height)))
(setq pos-tip-foreground-color "#073642")
(setq pos-tip-background-color "#839496")
(use-package alert
  :ensure t
  :config
  (setq alert-fade-time 10)
  (help/on-gui
   (help/on-osx
    (setq alert-default-style 'growl)))
  (setq alert-reveal-idle-time 120))
(use-package projectile :if nil
             :ensure t
             :config
             (projectile-global-mode t)
             (help/diminish "projectile-mode")
	     (gcr/on-windows
	      (setq projectile-indexing-method 'alien)))
(eval-after-load "projectile"
  '(progn (setq magit-repository-directories (mapcar (lambda (dir)
                                                       (substring dir 0 -1))
                                                     (remove-if-not (lambda (project)
                                                                      (file-directory-p (concat project "/.git/")))
                                                                    (projectile-relevant-known-projects)))

                magit-repository-directories-depth 1)))
(use-package anzu
             :ensure t
             :config
             (global-anzu-mode t)
             (global-set-key (kbd "M-%") 'anzu-query-replace)
             (global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)
             (setq anzu-mode-lighter "")
             (setq anzu-deactivate-region t)
             (setq anzu-search-threshold 1000)
             (setq anzu-replace-to-string-separator " => "))
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
(savehist-mode t)
(setq isearch-lax-whitespace t)
(setq isearch-regexp-lax-whitespace t)
(setq-default case-fold-search t)
(use-package flycheck :if nil
             :ensure t
             :config
             (add-hook 'after-init-hook #'global-flycheck-mode)
             (help/diminish "flycheck-mode"))
(help/on-osx
 (defun help/ido-find-file (&rest args)
   "Find file as root if necessary.

Attribution: SRC `http://emacsredux.com/blog/2013/04/21/edit-files-as-root/'"
   (unless (and buffer-file-name
              (file-writable-p buffer-file-name))
     (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

 (advice-add 'ido-find-file :after #'help/ido-find-file))
(use-package magit
             :ensure t
             :config
             (global-set-key (kbd "s-e") #'help/safb-magit-status))
(use-package whitespace :if nil
             :ensure t
             :config
             (setq whitespace-style '(trailing lines tab-mark))
             (setq whitespace-line-column 80)
             (global-whitespace-mode 1)
             (help/diminish "global-whitespace-mode")
             (help/diminish "whitespace-mode"))
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
(prefer-coding-system 'utf-8)
(help/on-gui
 (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
 (help/on-windows
  (set-clipboard-coding-system 'utf-16le-dos)))
(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "s-d") #'er/expand-region))
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
 (help/on-windows (setq gcr/font-size 13))
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
(define-prefix-command 'help/vc-map)
(global-set-key (kbd "s-v") #'help/vc-map)
(define-key help/vc-map "h" #'help/safb-diff-hl-mode)
(define-key help/vc-map "e" #'help/safb-vc-ediff)
(define-key help/vc-map "d" #'help/safb-vc-diff)
(define-key help/vc-map "u" #'help/safb-vc-revert)
(global-set-key (kbd "s-f") #'help/safb-vc-next-action)
(key-chord-define-global "JK" (lambda () (interactive) (other-window 1)))
(key-chord-define-global "qi" 'help/comment-or-uncomment)
