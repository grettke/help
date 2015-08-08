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

(defun help/set-org-babel-default-header-args:R (property value)
  "See `help/set-org-babel-default-header-args'; same but for R.

This is a copy and paste. Additional languages would warrant a refactor."
  (setq org-babel-default-header-args:R
        (cons (cons property value)
              (assq-delete-all property org-babel-default-header-args:R))))

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

(defun describe-thing-in-popup ()
  "Attribution: URL `http://blog.jenkster.com/2013/12/popup-help-in-emacs-lisp.html'."
  (interactive)
  (let* ((thing (symbol-at-point))
         (help-xref-following t)
         (description (with-temp-buffer
                        (help-mode)
                        (help-xref-interned thing)
                        (buffer-string))))
    (popup-tip description
               :point (point)
               :around t
               :height 30
               :scroll-bar t
               :margin t)))

(defun help/kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

(defvar help/delete-trailing-whitespace-p t
  "Should trailing whitespace be removed?")

(defun help/delete-trailing-whitespace ()
  "Delete trailing whitespace for everything but the current line.

If `help/delete-trailing-whitespace-p' is non-nil, then delete the whitespace.
This is useful for fringe cases where trailing whitespace is important."
  (interactive)
  (when help/delete-trailing-whitespace-p
    (let ((first-part-start (point-min))
          (first-part-end (point-at-bol))
          (second-part-start (point-at-eol))
          (second-part-end (point-max)))
      (delete-trailing-whitespace first-part-start first-part-end)
      (delete-trailing-whitespace second-part-start second-part-end))))

(defun help/insert-timestamp ()
  "Produces and inserts a full ISO 8601 format timestamp."
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%T%z")))

(defun help/insert-timestamp* ()
  "Produces and inserts a near-full ISO 8601 format timestamp."
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%T")))

(defun help/insert-datestamp ()
  "Produces and inserts a partial ISO 8601 format timestamp."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun help/no-control-m ()
  "Aka dos2unix."
  (interactive)
  (let ((line (line-number-at-pos))
        (column (current-column)))
    (mark-whole-buffer)
    (replace-string "
          " "")
    (goto-line line)
    (move-to-column column)))

(defun help/indent-curly-block (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. Src: https://github.com/Fuco1/smartparens/issues/80"
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(defun beginning-of-line-dwim ()
  "Toggles between moving point to the first non-whitespace character, and
    the start of the line. Src: http://www.wilfred.me.uk/"
  (interactive)
  (let ((start-position (point)))
    ;; see if going to the beginning of the line changes our position
    (move-beginning-of-line nil)

    (when (= (point) start-position)
      ;; we're already at the beginning of the line, so go to the
      ;; first non-whitespace character
      (back-to-indentation))))

(defun help/lazy-new-open-line ()
  "Insert a new line without breaking the current line."
  (interactive)
  (beginning-of-line)
  (next-line)
  (newline)
  (previous-line))

(defun help/smart-open-line ()
  "Insert a new line, indent it, and move the cursor there.

This behavior is different then the typical function bound to return
which may be `open-line' or `newline-and-indent'. When you call with
the cursor between ^ and $, the contents of the line to the right of
it will be moved to the newly inserted line. This function will not
do that. The current line is left alone, a new line is inserted, indented,
and the cursor is moved there.

Attribution: URL `http://emacsredux.com/blog/2013/03/26/smarter-open-line/'"
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun help/insert-ellipsis ()
  "Insert an ellipsis into the current buffer."
  (interactive)
  (insert "…"))

(defun help/insert-noticeable-snip-comment-line ()
  "Insert a noticeable snip comment line (NSCL)."
  (interactive)
  (if (not (bolp))
      (message "I may only insert a NSCL at the beginning of a line.")
    (let ((ncl (make-string 70 ?✂)))
      (newline)
      (previous-line)
      (insert ncl)
      (comment-or-uncomment-region (line-beginning-position) (line-end-position)))))

(progn
  (defvar my-read-expression-map
    (let ((map (make-sparse-keymap)))
      (set-keymap-parent map read-expression-map)
      (define-key map [(control ?g)] #'minibuffer-keyboard-quit)
      (define-key map [up]   nil)
      (define-key map [down] nil)
      map))

  (defun my-read--expression (prompt &optional initial-contents)
    (let ((minibuffer-completing-symbol t))
      (minibuffer-with-setup-hook
          (lambda ()
            (emacs-lisp-mode)
            (use-local-map my-read-expression-map)
            (setq font-lock-mode t)
            (funcall font-lock-function 1))
        (read-from-minibuffer prompt initial-contents
                              my-read-expression-map nil
                              'read-expression-history)))))

(defun my-eval-expression (expression &optional arg)
  (interactive (list (read (my-read--expression ""))
                     current-prefix-arg))
  (if arg
      (insert (pp-to-string (eval expression lexical-binding)))
    (pp-display-expression (eval expression lexical-binding)
                           "*Pp Eval Output*")))

(defun help/util-ielm ()
  "HELP buffer setup for ielm.

Creates enough space for one other permanent buffer beneath it."
  (interactive)
  (split-window-below -20)
  (help/safb-other-window)
  (ielm)
  (set-window-dedicated-p (selected-window) t))

(defun help/util-eshell ()
  "HELP buffer setup for eshell.

Depends upon `help/util-ielm' being run first."
  (interactive)
  (split-window-below -10)
  (help/safb-other-window)
  (eshell)
  (set-window-dedicated-p (selected-window) t))

(defvar help/util-state nil "Track whether the util buffers are displayed or not.")

(defun help/util-state-toggle ()
  "Toggle the util state."
  (interactive)
  (setq help/util-state (not help/util-state)))

(defun help/util-start ()
  "Perhaps utility buffers."
  (interactive)
  (help/util-ielm)
  (help/util-eshell)
  (help/util-state-toggle))

(defun help/util-stop ()
  "Remove personal utility buffers."
  (interactive)
  (if (get-buffer "*ielm*") (kill-buffer "*ielm*"))
  (if (get-buffer "*eshell*") (kill-buffer "*eshell*"))
  (help/util-state-toggle))

(defun help/ielm-auto-complete ()
  "Enables `auto-complete' support in \\[ielm].

Attribution: URL `http://www.masteringemacs.org/articles/2010/11/29/evaluating-elisp-emacs/'"
  (setq ac-sources '(ac-source-functions
                     ac-source-variables
                     ac-source-features
                     ac-source-symbols
                     ac-source-words-in-same-mode-buffers))
  (add-to-list 'ac-modes 'inferior-emacs-lisp-mode)
  (auto-complete-mode 1))

(defun help/uuid-string ()
  "Insert a string form of a UUID."
  (interactive)
  (insert (uuid-to-stringy (uuid-create))))

(defun endless/sharp ()
  "Insert #' unless in a string or comment.

SRC: URL `http://endlessparentheses.com/get-in-the-habit-of-using-sharp-quote.html?source=rss'"
  (interactive)
  (call-interactively #'self-insert-command)
  (let ((ppss (syntax-ppss)))
    (unless (or (elt ppss 3)
                (elt ppss 4))
      (insert "'"))))

(defun help/chs ()
  "Insert opening \"cut here start\" snippet."
  (interactive)
  (insert "--8<---------------cut here---------------start------------->8---"))

(defun help/che ()
  "Insert closing \"cut here end\" snippet."
  (interactive)
  (insert "--8<---------------cut here---------------end--------------->8---"))

(defmacro help/measure-time (&rest body)
  "Measure the time it takes to evaluate BODY.

Attribution Nikolaj Schumacher: URL `https://lists.gnu.org/archive/html/help-gnu-emacs/2008-06/msg00087.html'"
  `(let ((time (current-time)))
     ,@body
     (message "%.06f" (float-time (time-since time)))))

(defun help/create-non-existent-directory ()
  "Attribution URL: `https://iqbalansari.github.io/blog/2014/12/07/automatically-create-parent-directories-on-visiting-a-new-file-in-emacs/'"
  (let ((parent-directory (file-name-directory buffer-file-name)))
    (when (and (not (file-exists-p parent-directory))
               (y-or-n-p (format "Directory `%s' does not exist. Create it?" parent-directory)))
      (make-directory parent-directory t))))

(defun help/occur-dwim ()
  "Call `occur' with a mostly sane default.

Attribution Oleh Krehel (abo-abo): URL `http://oremacs.com/2015/01/26/occur-dwim/'"
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur))

(defun help/util-cycle ()
  "Display or hide the utility buffers."
  (interactive)
  (if help/util-state
      (help/util-stop)
    (help/util-start)))

(defun sacha/unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text.

ATTRIBUTION: SRC https://github.com/sachac/.emacs.d/blob/gh-pages/Sacha.org#unfill-paragraph"
  (interactive (progn
                 (barf-if-buffer-read-only)
                 (list t)))
  (let ((fill-column (point-max)))
    (fill-paragraph nil region)))
(setq org-babel-use-quick-and-dirty-noweb-expansion nil)
(help/set-org-babel-default-header-args :comments "noweb")
(help/set-org-babel-default-header-args :padline "yes")
(help/set-org-babel-default-header-args :noweb "no-export")
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
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'load-path "~/src/use-package")
(eval-when-compile
  (require 'use-package))
(use-package diminish)
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

(use-package key-chord
  :ensure t
  :config
  (key-chord-mode t)
  (setq key-chord-two-keys-delay 0.1))
(setq echo-keystrokes 0.02)
(use-package dash
  :ensure t
  :config
  (dash-enable-font-lock))
(use-package dash-functional
  :ensure t)
(use-package f
  :ensure t)
(use-package s
  :ensure t)
(use-package uuid
  :ensure t)
(use-package diminish)
(size-indication-mode)
(column-number-mode t)
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
(desktop-save-mode t)
(setq desktop-restore-eager 10)
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode 1)
  :diminish undo-tree-mode)
(setq require-final-newline nil)
(setq track-eol t)
(setq line-move-visual nil)
(setq scroll-preserve-screen-position t)
(use-package stripe-buffer
  :ensure t)
(setq sentence-end-double-space nil)
(add-hook #'before-save-hook #'help/delete-trailing-whitespace)
(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "s-d") #'er/expand-region))
(setq help/column-width 80)
(use-package hideshow
  :config
  (setq hs-hide-comments-when-hiding-all t)
  (setq hs-isearch-open t)
  (defun display-code-line-counts (ov)
    "Displaying overlay content in echo area or tooltip"
    (when (eq 'code (overlay-get ov 'hs))
      (overlay-put ov 'help-echo
                   (buffer-substring (overlay-start ov)
                                     (overlay-end ov)))))
  (setq hs-set-up-overlay #'display-code-line-counts)
  (defun help/goto-line (&rest args)
    "How do I get it to expand upon a goto-line? hideshow-expand affected block when using goto-line in a collapsed buffer."
    (save-excursion
      (hs-show-block)))
  (advice-add #'goto-line :after #'help/goto-line)
  :diminish hs-minor-mode)
(use-package rainbow-mode
  :ensure t
  :config
  :diminish rainbow-mode)
(setq-default eval-expression-print-level nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(add-to-list 'load-path (getenv "CCRYPT"))
(use-package ps-ccrypt)
(setq eshell-prefer-lisp-functions nil
      eshell-cmpl-cycle-completions nil
      eshell-save-history-on-exit t
      eshell-cmpl-dir-ignore "\\`\\(\\.\\.?\\|CVS\\|\\.svn\\|\\.git\\)/\\'")

(eval-after-load 'esh-opt
  '(progn
     (use-package em-cmpl)
     (use-package em-prompt)
     (use-package em-term)
     (setenv "PAGER" "cat")
     (add-hook 'eshell-mode-hook
               (lambda ()
                 (message "Welcome to Eshell.")
                 (setq pcomplete-cycle-completions nil)))
     (add-to-list 'eshell-visual-commands "ssh")
     (add-to-list 'eshell-visual-commands "tail")
     (add-to-list 'eshell-command-completions-alist
                  '("tar" "\\(\\.tar|\\.tgz\\|\\.tar\\.gz\\)\\'"))))
(setq eshell-prompt-regexp "^.+@.+:.+> ")
(setq eshell-prompt-function
      (lambda ()
        (concat
         (user-login-name)
         "@"
         (system-name)
         ":"
         (eshell/pwd)
         "> ")))
(setq auto-save-default t)
(setq make-backup-files nil)
(setq auto-save-visited-file-name t)
(setq auto-save-interval 0)
(setq auto-save-timeout (* 60 5))
(add-hook 'focus-out-hook #'help/save-all-file-buffers)
(advice-add #'save-buffers-kill-terminal :before #'help/save-all-file-buffers)
(global-auto-revert-mode 1)
(defun help/safb-help-vc-next-action ()
  (interactive)
  (help/save-all-file-buffers)
  (help/vc-next-action))

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

(defun help/safb-other-window ()
  (interactive)
  (help/save-all-file-buffers)
  (other-window 1))

(defun help/safb-org-edit-src-code ()
  (interactive)
  (help/save-all-file-buffers)
  (org-edit-src-code))

(defun help/safb-help/org-edit-src-code-plus-name ()
  (interactive)
  (help/save-all-file-buffers)
  (help/org-edit-src-code-plus-name))

(defun help/safb-org-export-dispatch ()
  (interactive)
  (help/save-all-file-buffers)
  (org-export-dispatch))

(defun help/safb-TeX-command-master (&optional arg)
  (interactive)
  (help/save-all-file-buffers)
  (TeX-command-master arg))
(add-to-list 'find-file-not-found-functions #'help/create-non-existent-directory)
(defun help/dired-copy-filename ()
  "Push the path and filename of the file under the point to the kill ring.
  Attribution: URL `https://lists.gnu.org/archive/html/help-gnu-emacs/2002-10/msg00556.html'"
  (interactive)
  (message "Added %s to kill ring" (kill-new (dired-get-filename))))
(defun help/dired-copy-path ()
  "Push the path of the directory under the point to the kill ring."
  (interactive)
  (message "Added %s to kill ring" (kill-new default-directory)))
(setq dired-listing-switches "-alh")
(setq dired-recursive-deletes 'top)
(use-package dired-details+
  :ensure t)
(setq-default dired-details-hidden-string "")
(defun help/dired-mode-hook-fn ()
  "HELP dired customizations."
  (local-set-key "c" 'help/dired-copy-filename)
  (local-set-key "]" 'help/dired-copy-path)
  (diff-hl-dired-mode)
  (load "dired-x")
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))
(add-hook #'dired-mode-hook #'help/dired-mode-hook-fn)
(setq dired-dwim-target t)
(help/on-osx
 (setq ls-lisp-use-insert-directory-program nil)
 (use-package ls-lisp))
(use-package find-dired
  :ensure t
  :config
  (setq find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld")))
(use-package wdired
  :ensure t
  :config
  (setq wdired-allow-to-change-permissions t)
  (setq wdired-allow-to-redirect-links t)
  (setq wdired-use-interactive-rename t)
  (setq wdired-confirm-overwrite t)
  (setq wdired-use-dired-vertical-movement 'sometimes))
(use-package dired-imenu
  :ensure t)
(use-package imenu
  :config
  (setq imenu-sort-function 'imenu--sort-by-name))
(defun help/try-to-add-imenu ()
  "Add Imenu to modes that have `font-lock-mode' activated.

Attribution: SRC http://www.emacswiki.org/emacs/ImenuMode"
  (condition-case nil (imenu-add-to-menubar "Imenu") (error nil)))
(add-hook #'font-lock-mode-hook #'help/try-to-add-imenu)
(use-package ido)
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
(global-set-key (kbd "s-x") #'ido-find-file)
(global-set-key (kbd "s-c") #'ido-switch-buffer)
(use-package smex
             :ensure t
             :config
             (smex-initialize)
             (global-set-key (kbd "s-v") #'smex))
(setq ido-use-url-at-point t)
(setq ido-use-filename-at-point 'guess)
(use-package unicode-fonts
  :ensure t
  :config
  (unicode-fonts-setup))
(global-font-lock-mode t)
(use-package pretty-mode
  :ensure t
  :config
  (global-pretty-mode))
(use-package avy
  :ensure t
  :config
  (key-chord-define-global "df" #'avy-goto-word-1)
  (key-chord-define-global "DF" #'avy-pop-mark))
(use-package writegood-mode
  :ensure t)
(use-package langtool
  :ensure t
  :init
  (setq langtool-language-tool-jar (concat (getenv "EELIB") "/LanguageTool-2.8/languagetool-commandline.jar"))
  (setq langtool-mother-tongue "en")
  (setq langtool-java-bin (concat (getenv "JAVA_HOME") "/bin/java")))
(use-package fuzzy
  :ensure t)
(use-package auto-complete
  :ensure t
  :config
  (use-package auto-complete-config)
  (setq ac-quick-help-prefer-pos-tip nil)
  (ac-config-default)
  (setq ac-auto-start nil)
  (help/not-on-gui (ac-set-trigger-key "\t"))
  (help/on-gui (ac-set-trigger-key "<tab>"))
  :diminish auto-complete-mode)
(use-package auto-complete-chunk
  :ensure t)
(use-package auto-complete-chunk
  :ensure t)
(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "s-4") #'mc/mark-next-like-this)
  (global-set-key (kbd "s-3") #'mc/mark-previous-like-this)
  (global-set-key (kbd "s-2") #'mc/mark-all-like-this)
  (global-set-key (kbd "s-1") #'mc/edit-lines))
(delete-selection-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)
(setq enable-recursive-minibuffers t)
(minibuffer-depth-indicate-mode t)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse t)
(defun help/occur-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))
(add-hook #'occur-mode-hook #'help/occur-mode-hook-fn)
(use-package alert
  :ensure t
  :config
  (setq alert-fade-time 10)
  (help/on-gui
   (help/on-osx
    (setq alert-default-style 'growl)))
  (setq alert-reveal-idle-time 120))
(use-package projectile
  :ensure t
  :config
  (projectile-global-mode t)
  (global-set-key (kbd "s-z") #'projectile-find-file)
  (help/on-windows
   (setq projectile-indexing-method 'alien))
  :diminish projectile-mode)
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
(add-to-list 'ispell-skip-region-alist '("^#\\+begin_src ". "#\\+#+end_src$"))
(add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_SRC ". "#\\+#+END_SRC$"))
(add-to-list 'ispell-skip-region-alist '("^#\\+begin_example ". "#\\+end_example$"))
(add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_EXAMPLE ". "#\\+END_EXAMPLE$"))
(add-to-list 'ispell-skip-region-alist '("\:PROPERTIES\:$" . "\:END\:$"))
(add-to-list 'ispell-skip-region-alist '("\\[fn:.+:" . "\\]"))
(add-to-list 'ispell-skip-region-alist '("^http" . "\\]"))
(add-to-list 'ispell-skip-region-alist '("=.*" . ".*="))
(add-to-list 'ispell-skip-region-alist '("- \\*.+" . ".*\\*: "))
(defun help/ispell-org-header-lines-regexp (h)
  "Help ispell ignore org header lines."
  (interactive)
  (cons (concat "^#\\+" h ":") ".$"))

(defun help/ispell-a2isra (block-def)
  "Add to the ispell skip region alist the BLOCK-DEF."
  (interactive)
  (add-to-list 'ispell-skip-region-alist block-def))

(let (void)
  (--each
      '("ATTR_LATEX"
        "AUTHOR"
        "CREATOR"
        "DATE"
        "DESCRIPTION"
        "EMAIL"
        "EXCLUDE_TAGS"
        "HTML_CONTAINER"
        "HTML_DOCTYPE"
        "HTML_HEAD"
        "HTML_HEAD_EXTRA"
        "HTML_LINK_HOME"
        "HTML_LINK_UP"
        "HTML_MATHJAX"
        "INFOJS_OPT"
        "KEYWORDS"
        "LANGUAGE"
        "LATEX_CLASS"
        "LATEX_CLASS_OPTIONS"
        "LATEX_HEADER"
        "LATEX_HEADER_EXTRA"
        "OPTIONS"
        "SELECT_TAGS"
        "STARTUP"
        "TITLE")
    (help/ispell-a2isra (help/ispell-org-header-lines-regexp it))))
(help/on-osx
 (defun help/ido-find-file (&rest args)
   "Find file as root if necessary.

Attribution: SRC `http://emacsredux.com/blog/2013/04/21/edit-files-as-root/'"
   (unless (and buffer-file-name
              (file-writable-p buffer-file-name))
     (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

 (advice-add 'ido-find-file :after #'help/ido-find-file))
(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  :diminish flycheck-mode)
(setq-default indent-tabs-mode nil)
(defun help/untabify-if-not-indent-tabs-mode ()
  "Untabify if `indent-tabs-mode' is false.

Attribution: URL `http://www.emacswiki.org/emacs/UntabifyUponSave'"
  (interactive)
  (when (not indent-tabs-mode)
    (untabify (point-min) (point-max))))

(add-hook #'before-save-hook #'help/untabify-if-not-indent-tabs-mode)
(setq-default tab-width 2)
(use-package magit
             :ensure t
             :config
             (global-set-key (kbd "s-e") #'help/safb-magit-status))
(eval-after-load 'log-edit
  '(remove-hook 'log-edit-hook 'log-edit-insert-message-template))
(add-to-list 'auto-mode-alist '(".gitignore$" . text-mode))
(use-package whitespace
  :ensure t
  :config
  (setq whitespace-style '(trailing lines tab-mark))
  (setq whitespace-line-column help/column-width)
  (global-whitespace-mode t)
  :diminish whitespace-mode global-whitespace-mode)
(use-package visual-line-mode
  :diminish visual-line-mode)
(use-package fill-column-indicator
  :ensure t
  :config
  (setq-default fill-column help/column-width))
(defun help/text-prog*-setup ()
  "HELP's standard configuration for buffer's working with text, often for
   programming."
  (interactive)
  (visual-line-mode)
  (linum-mode)
  (fci-mode)
  (rainbow-mode)
  (help/try-to-add-imenu))

(add-hook #'text-mode-hook #'help/text-prog*-setup)
(setq help/hack-modes '(makefile-mode-hook ruby-mode-hook sh-mode-hook plantuml-mode-hook tex-mode-hook))
(setq help/hack-lisp-modes
      '(emacs-lisp-mode-hook
        ielm-mode-hook
        lisp-interaction-mode))
(setq help/hack-modes (append help/hack-modes help/hack-lisp-modes))
(use-package aggressive-indent
  :ensure t
  :config)
(use-package smartparens-config
  :ensure smartparens
  :config
  (setq sp-show-pair-from-inside nil)
  (eval-after-load "smartparens-mode"
    '(diminish 'smartparens-mode)))
(defun help/hack-prog*-mode-hook-fn ()
  (interactive)
  (help/text-prog*-setup)
  (smartparens-strict-mode)
  (aggressive-indent-mode)
  (hs-minor-mode)
  (help/not-on-gui (local-set-key (kbd "RET") #'newline-and-indent))
  (help/on-gui (local-set-key (kbd "<return>") #'newline-and-indent)))
(let (void)
  (--each help/hack-modes
    (add-hook it #'help/hack-prog*-mode-hook-fn)))

(let (void)
  (--each help/hack-lisp-modes
    (add-hook it #'help/emacs-lisp-mode-hook-fn)))

(add-hook #'ielm-mode-hook #'help/ielm-mode-hook-fn)
(setq initial-scratch-message nil)
(use-package lexbind-mode)

(defun help/elisp-eval-buffer ()
  "Intelligently evaluate an Elisp buffer."
  (interactive)
  (help/save-all-file-buffers)
  (eval-buffer))

(defun endless/sharp ()
  "Insert #' unless in a string or comment.

RC: URL `http://endlessparentheses.com/get-in-the-habit-of-using-sharp-quote.html?source=rss'"
  (interactive)
  (call-interactively #'self-insert-command)
  (let ((ppss (syntax-ppss)))
    (unless (or (elt ppss 3)
                (elt ppss 4))
      (insert "'"))))

(defun help/elisp-mode-local-bindings ()
  "Helpful behavior for Elisp buffers."
  (local-set-key (kbd "s-l eb") #'help/elisp-eval-buffer)
  (local-set-key (kbd "s-l ep") #'eval-print-last-sexp)
  (local-set-key (kbd "s-l td") #'toggle-debug-on-error)
  (local-set-key (kbd "s-l mef") #'macroexpand)
  (local-set-key (kbd "s-l mea") #'macroexpand-all)
  (local-set-key (kbd "s-:") #'my-eval-expression)
  (local-set-key (kbd "#") #'endless/sharp))

(defun help/emacs-lisp-mode-hook-fn ()
  (interactive)
  (help/elisp-mode-local-bindings)
  (lexbind-mode)
  (turn-on-eldoc-mode)
  (diminish 'eldoc-mode))

(setq ielm-noisy nil)

(setq ielm-prompt "𝔼LISP> ")

(setq ielm-dynamic-return nil)

(setq ielm-dynamic-multiline-inputs nil)

(defun help/ielm-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (help/ielm-auto-complete))
(define-key emacs-lisp-mode-map (kbd "s-p") #'describe-thing-in-popup)
(setq org-babel-min-lines-for-block-output 0)
(setq org-babel-results-keyword "NAME")
(setq org-edit-src-auto-save-idle-delay 0)
(setq org-edit-src-turn-on-auto-save nil)
(defun help/org-babel-after-execute-hook ()
  "HELP settings for the `org-babel-after-execute-hook'.

This does not interfere with exports.

Attribution: URL `https://lists.gnu.org/archive/html/emacs-orgmode/2015-01/msg00534.html'"
  (interactive)
  (org-redisplay-inline-images))

(add-hook 'org-babel-after-execute-hook 'help/org-babel-after-execute-hook)
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
  (use-package org-mouse))
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
(defun help/vc-next-action ()
  "If in org source block, exit it before `vc-next-action'."
  (interactive)
  (when (condition-case nil
            (org-src-in-org-buffer)
          (error nil))
    (org-edit-src-exit))
  (vc-next-action nil))
(setq org-edit-src-code nil)
(use-package wrap-region
  :ensure t
  :config
  :diminish wrap-region-mode)
(wrap-region-add-wrapper "*" "*" nil 'org-mode)
(wrap-region-add-wrapper "/" "/" nil 'org-mode)
(wrap-region-add-wrapper "=" "=" nil 'org-mode)
(wrap-region-add-wrapper "~" "~" nil 'org-mode)
(wrap-region-add-wrapper "+" "+" nil 'org-mode)
(help/not-on-gui
 (define-key org-mode-map (kbd "RET") 'org-return-indent)
 (define-key org-mode-map (kbd "C-M-RET") 'electric-indent-just-newline))
(help/on-gui
 (define-key org-mode-map (kbd "<return>") 'org-return-indent)
 (define-key org-mode-map (kbd "C-M-<return>") 'electric-indent-just-newline))
(define-key org-mode-map (kbd "s-j") #'org-babel-next-src-block)
(define-key org-mode-map (kbd "s-u") #'org-goto)
(define-key org-mode-map (kbd "s-U") #'org-mark-ring-goto)
(define-key org-mode-map (kbd "s-k") #'org-babel-previous-src-block)
(define-key org-mode-map (kbd "s-i") #'help/safb-org-babel-tangle)
(define-key org-mode-map (kbd "s-l") #'help/safb-org-edit-src-code)
(define-key org-mode-map (kbd "s-o") #'org-babel-execute-maybe)
(define-key org-mode-map (kbd "s-;") #'org-babel-view-src-block-info)
(define-key org-mode-map (kbd "s-p") #'org-babel-demarcate-block)
(define-key org-mode-map (kbd "C-c C-e") #'help/safb-org-export-dispatch)
(define-key org-src-mode-map (kbd "s-l") #'org-edit-src-exit)
(key-chord-define org-src-mode-map "<<" (lambda () (interactive) (insert "«")))
(key-chord-define org-src-mode-map ">>" (lambda () (interactive) (insert "»")))
(use-package ess
  :ensure t)
(setq ess-eldoc-show-on-symbol t)
(setq ess-describe-at-point-method 'tooltip)
(setq inferior-ess-same-window nil)
(setq inferior-ess-own-frame nil)
(setq ess-help-own-frame nil)
(setq ess-ask-for-ess-directory nil)
(setq inferior-ess-exit-command "q('no')
")
(setq ess-execute-in-process-buffer t)
(setq ess-switch-to-end-of-proc-buffer t)
(setq ess-tab-complete-in-script t)
(setq ess-first-tab-never-complete 'symbol-or-paren-or-punct)
(setq ess-use-ido t)
(setq ess-use-eldoc t)
(setq ess-eldoc-show-on-symbol t)
(setq ess-eldoc-abbreviation-style 'normal)
(defun help/ess-mode-hook ()
  (local-set-key (kbd "s-e") 'ess-switch-to-end-of-ESS)
  (local-set-key (kbd "s-x") 'r-autoyas-expand)
  (local-set-key (kbd "s-p") 'ess-R-object-popup)
  (local-set-key (kbd "s-v o") 'ess-describe-object-at-point)
  (local-set-key (kbd "s-v d") 'ess-rdired)
  (local-set-key (kbd "s-v cc") 'ess-R-dv-ctable)
  (local-set-key (kbd "s-v cp") 'ess-R-dv-pprint)
  (local-set-key (kbd "C-.") (lambda () (interactive) (insert " -> ")))
  (local-set-key (kbd "C-M-,") (lambda () (interactive) (insert " <<- ")))
  (local-set-key (kbd "C-M-.") (lambda () (interactive) (insert " ->> ")))
  (key-chord-define-local (kbd ",.") (lambda () (interactive) (insert " %<>% ")))
  (local-set-key (kbd "s-.") (lambda () (interactive) (insert " %>% ")))
  (local-set-key (kbd "C-0") 'ess-eval-buffer)
  (turn-on-pretty-mode)
  (r-autoyas-ess-activate)
  (visual-line-mode)
  (smartparens-strict-mode t)
  (help/untabify-buffer-hook)
  (fci-mode)
  (hs-minor-mode 1)
  (linum-mode)
  (help/turn-on-r-hide-show)
  (aggressive-indent-mode)
  (lambda () (add-hook 'ess-presend-filter-functions
                  (lambda ()
                    (warn
                     "ESS now supports a standard pre-send filter hook. Please update your configuration to use it instead of using advice.")))))

(add-hook 'ess-mode-hook 'help/ess-mode-hook)

(defun help/turn-on-r-hide-show ()
  "Attribution: SRC https://github.com/mlf176f2/EmacsMate/blob/master/EmacsMate-ess.org"
  (when (string= "S" ess-language)
    (set (make-local-variable 'hs-special-modes-alist) '((ess-mode "{" "}" "#" nil nil)))
    (hs-minor-mode 1)
    (when (fboundp 'foldit-mode)
      (foldit-mode 1))
    (when (fboundp 'fold-dwim-org/minor-mode)
      (fold-dwim-org/minor-mode))))

(defun help/Rd-mode-hook ()
  (help/ess-mode-hook))

(add-hook 'Rd-mode-hook 'help/Rd-mode-hook)

(defun help/inferior-ess-mode-hook ()
  (help/ess-mode-hook))

(add-hook 'inferior-ess-mode-hook 'help/inferior-ess-mode-hook)

(defun help/ess-rdired-mode-hook ()
  "Personal customizations."
  (interactive)
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))

(add-hook 'ess-rdired-mode-hook 'help/ess-rdired-mode-hook)
(setq ess-keep-dump-files +1)
(setq ess-delete-dump-files nil)
(setq ess-mode-silently-save +1)
(sp-local-pair 'ess-mode "{" nil :post-handlers '((gcr/indent-curly-block "RET")))
(setq ess-eval-visibly 'nowait)
(setq ess-use-tracebug t)
(setq ess-tracebug-search-path '())
(define-key compilation-minor-mode-map [(?n)] 'next-error-no-select)
(define-key compilation-minor-mode-map [(?p)] 'previous-error-no-select)
(setq ess-watch-scale-amount -1)
(use-package ess-R-object-popup
  :ensure t)
(autoload 'ess-rdired "ess-rdired")
(use-package ess-R-data-view
  :ensure t)
(use-package inlineR
  :ensure t)
(setq help/r-dir "~/.R/")
(defun help/make-warn-R-dir ()
  "Handle of R directory misconfiguration."
  (interactive)
  (unless (f-directory? help/r-dir)
    (progn
      (message "Couldn't find %S… creating it." help/r-dir)
      (f-mkdir help/r-dir))))
(help/make-warn-R-dir)
(setq ess-history-directory help/r-dir)
(setq ess-source-directory help/r-dir)
(setq inferior-ess-program "R")
(setq inferior-R-program-name "R")
(setq ess-local-process-name "R")
(add-to-list 'auto-mode-alist '("\\.rd\\'" . Rd-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd$" . r-mode))
(local-set-key (kbd "C-c C-. S") 'ess-rutils-rsitesearch)
(use-package ess-rutils
  :config
  (setq ess-rutils-keys t))
(use-package r-autoyas
  :ensure t
  :config
  (setq r-autoyas-debug t)
  (setq r-autoyas-expand-package-functions-only nil)
  (setq r-autoyas-remove-explicit-assignments nil))
(setq ess-ac-R-argument-suffix "=")
;; (setq help/ess-style
;;       (copy-alist
;;        (assoc 'RRR ess-style-alist)))
;; (setf (nth 0 help/ess-style) 'HELP)
;; (setf (cdr
;;        (assoc 'ess-continued-statement-offset
;;               (cdr help/ess-style)))
;;       0)
;; (add-to-list 'ess-style-alist help/ess-style)
;; (setq ess-default-style 'HELP)
(setq ess-S-assign-key (kbd "C-,"))
(ess-toggle-S-assign-key t)
(ess-toggle-underscore nil)
(setq inferior-R-args "--no-save --no-restore")

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode t)
  (setq yas-triggers-in-field t)
  (defun help/yas-minor-mode-hook-fn ()
    "HELP customizations."
    (define-key yas-minor-mode-map (kbd "<tab>") nil)
    (define-key yas-minor-mode-map (kbd "TAB") nil)
    (define-key yas-minor-mode-map (kbd "s-t") 'yas-expand))
  (add-hook #'yas-minor-mode-hook #'help/yas-minor-mode-hook-fn)
  (add-to-list #'yas-snippet-dirs "~/src/help/yasnippet")
  (yas-reload-all)
  (setq yas-prompt-functions '(yas-ido-prompt))
  :diminish yas-minor-mode)
(use-package tex-site
  :ensure auctex
  :config
  (eval-after-load "tex"
    '(define-key TeX-mode-map (kbd "C-c C-c") #'help/safb-TeX-command-master)))
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-auto-save t)
(setq TeX-PDF-mode t)
(setq TeX-DVI-via-PDFTeX t)
(setq TeX-save-query nil)
(add-to-list 'auto-mode-alist '("\\.lco?\\'" . TeX-latex-mode))
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.art" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
(defconst help/ditaa-jar (concat (getenv "EELIB") "/ditaa.jar"))
(setq org-ditaa-jar-path help/ditaa-jar)
(use-package plantuml-mode
  :ensure t
  :init
  (defconst help/plantuml-jar (concat (getenv "EELIB") "/plantuml.jar"))
  (setq plantuml-jar-path help/plantuml-jar)
  :config
  (eval-after-load "ob-plantuml"
    (setq org-plantuml-jar-path help/plantuml-jar)))
(use-package uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq ring-bell-function 'ignore)
(setq visible-bell t)
(setq blink-matching-paren nil)
(show-paren-mode)
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
(global-hl-line-mode t)
(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-distinct-fringe-background t)
  (setq solarized-high-contrast-mode-line t)
  (setq solarized-use-less-bold t)
  (setq solarized-use-more-italic nil)
  (setq solarized-emphasize-indicators nil)
  (load-theme 'solarized-dark t))
(setq comint-scroll-to-bottom-on-input 'this)
(setq comint-scroll-to-bottom-on-output 'others)
(setq comint-move-point-for-output 'others)
(setq comint-show-maximum-output t)
(setq comint-scroll-show-maximum-output t)
(setq comint-move-point-for-output t)
(setq comint-prompt-read-only nil)
(help/on-gui
 (defvar help/font-size 10 "The preferred font size.")
 (help/on-osx (setq help/font-size 17))
 (help/on-windows (setq help/font-size 13))
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
(use-package diff-hl
  :ensure t)
(menu-bar-mode t)
(winner-mode t)
(global-set-key (kbd "s-w") #'imenu)
(define-prefix-command 'help/vc-map)
(global-set-key (kbd "s-r") #'help/vc-map)
(define-key help/vc-map "e" #'help/safb-vc-ediff)
(define-key help/vc-map "d" #'help/safb-vc-diff)
(define-key help/vc-map "u" #'help/safb-vc-revert)
(global-set-key (kbd "s-f") #'help/safb-help-vc-next-action)
(key-chord-define-global "fg" #'goto-line)
(key-chord-define-global "FG" #'pop-to-mark-command)
(global-set-key (kbd "C-a") #'beginning-of-line-dwim)
(global-set-key (kbd "M-s p") 'help/occur-dwim)
(key-chord-define-global "fv" #'help/safb-other-window)
(key-chord-define-global "f9" #'help/util-cycle)
(global-set-key (kbd "s-b") 'hs-toggle-hiding)
(key-chord-define-global "qi" #'help/comment-or-uncomment)
(key-chord-define-global "qp" #'ispell)
(key-chord-define-global "qo" #'ispell-word)
(key-chord-define-global "wm" #'writegood-mode)
(key-chord-define-global "wl" #'writegood-grade-level)
(key-chord-define-global "wz" #'writegood-reading-ease)
(define-prefix-command 'help/langtool-map)
(key-chord-define-global "qk" #'help/langtool-map)
(define-key help/langtool-map "c" #'langtool-check-buffer)
(define-key help/langtool-map "C" #'langtool-correct-buffer)
(define-key help/langtool-map "j" #'langtool-goto-previous-error)
(define-key help/langtool-map "k" #'langtool-show-message-at-point)
(define-key help/langtool-map "l" #'langtool-goto-next-error)
(define-key help/langtool-map "q" #'langtool-check-done)
(help/not-on-gui (global-set-key (kbd "s-RET") #'help/smart-open-line))
(help/on-gui (global-set-key (kbd "s-<return>") #'help/smart-open-line))
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))
(global-set-key (kbd "s-:") #'my-eval-expression)
(global-set-key (kbd "s-C-n") #'next-line)
(global-set-key (kbd "C-n") #'next-logical-line)
(global-set-key (kbd "s-C-p") #'previous-line)
(global-set-key (kbd "C-p") #'previous-logical-line)
