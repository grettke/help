;; -*- lexical-binding: t -*-

;; [[file:help.org::orgmode:gcr:vela:AD12BE48-B87B-4AB6-814D-4FA5E47597A0][orgmode:gcr:vela:AD12BE48-B87B-4AB6-814D-4FA5E47597A0]]
(load-file "~/src/help/.org-mode-org2blog.emacs.el")
;; orgmode:gcr:vela:AD12BE48-B87B-4AB6-814D-4FA5E47597A0 ends here

;; [[file:help.org::orgmode:gcr:vela:20CC11BB-D72C-4A86-8558-44D9AE44FEAF][orgmode:gcr:vela:20CC11BB-D72C-4A86-8558-44D9AE44FEAF]]
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
;; orgmode:gcr:vela:20CC11BB-D72C-4A86-8558-44D9AE44FEAF ends here

;; [[file:help.org::orgmode:gcr:vela:2652BC97-28FA-41DC-9E0F-4B107292D78D][orgmode:gcr:vela:2652BC97-28FA-41DC-9E0F-4B107292D78D]]
(use-package hydra
  :ensure t)
;; orgmode:gcr:vela:2652BC97-28FA-41DC-9E0F-4B107292D78D ends here

;; [[file:help.org::orgmode:gcr:vela:06C30DE0-5B5D-4021-B82E-C30CF1DBE923][orgmode:gcr:vela:06C30DE0-5B5D-4021-B82E-C30CF1DBE923]]
(use-package key-chord
  :ensure t
  :config
  (key-chord-mode t))
;; orgmode:gcr:vela:06C30DE0-5B5D-4021-B82E-C30CF1DBE923 ends here

;; [[file:help.org::orgmode:gcr:vela:3EF213A9-048C-4A3D-B242-3A4D699D087C][orgmode:gcr:vela:3EF213A9-048C-4A3D-B242-3A4D699D087C]]
(setq echo-keystrokes 0.02)
;; orgmode:gcr:vela:3EF213A9-048C-4A3D-B242-3A4D699D087C ends here

;; [[file:help.org::orgmode:gcr:vela:6205B309-A576-4272-9D2B-C65966ECA286][orgmode:gcr:vela:6205B309-A576-4272-9D2B-C65966ECA286]]
(use-package dash
  :ensure t
  :config
  (dash-enable-font-lock))
(use-package dash-functional
  :ensure t)
;; orgmode:gcr:vela:6205B309-A576-4272-9D2B-C65966ECA286 ends here

;; [[file:help.org::orgmode:gcr:vela:D483F480-4716-4F79-BD0A-C99691618DC5][orgmode:gcr:vela:D483F480-4716-4F79-BD0A-C99691618DC5]]
(use-package f
  :ensure t)
;; orgmode:gcr:vela:D483F480-4716-4F79-BD0A-C99691618DC5 ends here

;; [[file:help.org::orgmode:gcr:vela:FA4C219D-DCAB-4416-954D-231D3F89FB36][orgmode:gcr:vela:FA4C219D-DCAB-4416-954D-231D3F89FB36]]
(use-package s
  :ensure t)
;; orgmode:gcr:vela:FA4C219D-DCAB-4416-954D-231D3F89FB36 ends here

;; [[file:help.org::orgmode:gcr:vela:E83B75A1-E27D-42BA-8D46-A6B332E0CAF1][orgmode:gcr:vela:E83B75A1-E27D-42BA-8D46-A6B332E0CAF1]]
(use-package persistent-soft
  :ensure t)
;; orgmode:gcr:vela:E83B75A1-E27D-42BA-8D46-A6B332E0CAF1 ends here

;; [[file:help.org::orgmode:gcr:vela:1F5BD72D-2E4B-4298-B4BF-DD52BD26FC3E][orgmode:gcr:vela:1F5BD72D-2E4B-4298-B4BF-DD52BD26FC3E]]
(use-package diminish)
;; orgmode:gcr:vela:1F5BD72D-2E4B-4298-B4BF-DD52BD26FC3E ends here

;; [[file:help.org::orgmode:gcr:vela:4E0CC8F8-620E-41F4-AB7E-B68A82430FE0][orgmode:gcr:vela:4E0CC8F8-620E-41F4-AB7E-B68A82430FE0]]
(size-indication-mode)
;; orgmode:gcr:vela:4E0CC8F8-620E-41F4-AB7E-B68A82430FE0 ends here

;; [[file:help.org::orgmode:gcr:vela:551CCCA8-8B54-4B5C-9118-22F411C687E0][orgmode:gcr:vela:551CCCA8-8B54-4B5C-9118-22F411C687E0]]
(column-number-mode t)
;; orgmode:gcr:vela:551CCCA8-8B54-4B5C-9118-22F411C687E0 ends here

;; [[file:help.org::orgmode:gcr:vela:84EB04EB-9149-495E-AF38-942C3732D62D][orgmode:gcr:vela:84EB04EB-9149-495E-AF38-942C3732D62D]]
(defmacro help/on-osx (statement &rest statements)
  "Evaluate the enclosed body only when run on OSX."
  `(when (eq system-type 'darwin)
     ,statement
     ,@statements))
;; orgmode:gcr:vela:84EB04EB-9149-495E-AF38-942C3732D62D ends here

;; [[file:help.org::orgmode:gcr:vela:EA03614E-3B8C-4D07-A8E5-B03FFB120AE4][orgmode:gcr:vela:EA03614E-3B8C-4D07-A8E5-B03FFB120AE4]]
(help/on-osx
 (use-package exec-path-from-shell
   :ensure t
   :config
   (setq exec-path-from-shell-check-startup-files nil)
   (exec-path-from-shell-initialize)))
;; orgmode:gcr:vela:EA03614E-3B8C-4D07-A8E5-B03FFB120AE4 ends here

;; [[file:help.org::orgmode:gcr:vela:98237FE5-5D02-4DCF-BCCB-082F90AE38D8][orgmode:gcr:vela:98237FE5-5D02-4DCF-BCCB-082F90AE38D8]]
(help/on-osx
 (setq mac-control-modifier 'control)
 (setq mac-right-control-modifier 'left)
 (setq mac-command-modifier 'meta)
 (setq mac-right-command-modifier 'left)
 (setq mac-option-modifier 'super)
 (setq mac-right-option-modifier 'left)
 (setq mac-function-modifier 'hyper)
 (defun help/toggle-mac-right-option-modifier ()
   "Toggle between passing option modifier either to Emacs or OS X."
   (interactive)
   (let ((old-ropt mac-right-option-modifier))
     (setq mac-right-option-modifier
           (if (eq mac-right-option-modifier 'left)
               'none
             'left))
     (message "Toggled `mac-right-option-modifier' from %s to %s."
              old-ropt
              mac-right-option-modifier)))
 (defun help/toggle-mac-function-modifier ()
   "Toggle between passing function modifier either to Emacs or OS X."
   (interactive)
   (let ((old-func mac-function-modifier))
     (setq mac-function-modifier
           (if (eq mac-function-modifier 'hyper)
               'none
             'hyper))
     (message "Toggled `mac-function-modifier' from %s to %s."
              old-func
              mac-function-modifier))))
;; orgmode:gcr:vela:98237FE5-5D02-4DCF-BCCB-082F90AE38D8 ends here

;; [[file:help.org::orgmode:gcr:vela:8764885C-9AFD-49DD-9E4B-F21AA0ED0D2F][orgmode:gcr:vela:8764885C-9AFD-49DD-9E4B-F21AA0ED0D2F]]
(help/on-osx
 (defun help/yes-or-no-p (orig-fun &rest args)
   "Prevent yes-or-no-p from activating a dialog."
   (let ((use-dialog-box nil))
     (apply orig-fun args)))
 (advice-add #'yes-or-no-p :around #'help/yes-or-no-p)
 (advice-add #'y-or-n-p :around #'help/yes-or-no-p))
;; orgmode:gcr:vela:8764885C-9AFD-49DD-9E4B-F21AA0ED0D2F ends here

;; [[file:help.org::orgmode:gcr:vela:DB9672CE-E027-408F-B072-6E73FDD47349][orgmode:gcr:vela:DB9672CE-E027-408F-B072-6E73FDD47349]]
(defmacro help/on-windows (statement &rest statements)
  "Evaluate the enclosed body only when run on Microsoft Windows."
  `(when (eq system-type 'windows-nt)
     ,statement
     ,@statements))
;; orgmode:gcr:vela:DB9672CE-E027-408F-B072-6E73FDD47349 ends here

;; [[file:help.org::orgmode:gcr:vela:A69B960E-400A-4BC7-961C-AECF3522C7AF][orgmode:gcr:vela:A69B960E-400A-4BC7-961C-AECF3522C7AF]]
(help/on-windows
 (setq shell-file-name "cmdproxy.exe"))
;; orgmode:gcr:vela:A69B960E-400A-4BC7-961C-AECF3522C7AF ends here

;; [[file:help.org::orgmode:gcr:vela:B66E53C2-D90F-422E-BD67-250EB644C6BB][orgmode:gcr:vela:B66E53C2-D90F-422E-BD67-250EB644C6BB]]
(help/on-windows
 (setq w32-pass-lwindow-to-system nil)
 (defvar w32-lwindow-modifier 'super)
 (setq w32-pass-rwindow-to-system nil)
 (defvar w32-rwindow-modifier 'super))
;; orgmode:gcr:vela:B66E53C2-D90F-422E-BD67-250EB644C6BB ends here

;; [[file:help.org::orgmode:gcr:vela:D523CBF8-67C4-4C96-9298-A4A49FE54E61][orgmode:gcr:vela:D523CBF8-67C4-4C96-9298-A4A49FE54E61]]
(defun help/comment-or-uncomment ()
  "Comment or uncomment the current line or selection."
  (interactive)
  (cond ((not mark-active) (comment-or-uncomment-region (line-beginning-position)
                                                      (line-end-position)))
        ((< (point) (mark)) (comment-or-uncomment-region (point) (mark)))
        (t (comment-or-uncomment-region (mark) (point)))))

(defun help/save-all-file-buffers ()
  "Saves every buffer associated with a file."
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
  (mapc #'kill-buffer (delq (current-buffer) (buffer-list))))

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

(defun help/indent-curly-block (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. URL: `https://github.com/Fuco1/smartparens/issues/80'"
  (interactive)
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
  (forward-line 1)
  (newline)
  (forward-line -1))

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

(defun help/insert-checkmark ()
  "Insert a checkmark into the current buffer."
  (interactive)
  (insert "✓"))

(defun help/insert-noticeable-snip-comment-line ()
  "Insert a noticeable snip comment line (NSCL)."
  (interactive)
  (if (not (bolp))
      (message "I may only insert a NSCL at the beginning of a line.")
    (let ((ncl (make-string 70 ?✂)))
      (newline)
      (forward-line -1)
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
                              'read-expression-history))))

  (defun my-eval-expression (expression &optional arg)
    "Attribution: URL `https://lists.gnu.org/archive/html/help-gnu-emacs/2014-07/msg00135.html'."
    (interactive (list (read (my-read--expression ""))
                       current-prefix-arg))
    (if arg
        (insert (pp-to-string (eval expression lexical-binding)))
      (pp-display-expression (eval expression lexical-binding)
                             "*Pp Eval Output*"))))

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
  (add-to-list 'ac-modes #'inferior-emacs-lisp-mode)
  (auto-complete-mode 1))

(defun help/uuid ()
  "Insert a UUID."
  (interactive)
  (let ((org-id-prefix nil))
    (insert (org-id-new))))

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
  (call-interactively 'occur)
  (other-window 1))

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
(defun help/text-scale-increase ()
  "Increase font size"
  (interactive)
  (help/on-gui
   (setq help/font-size-current (+ help/font-size-current 1))
   (help/update-font))
  (help/not-on-gui
   (message "Please resize the terminal emulator font.")))
(defun help/text-scale-decrease ()
  "Reduce font size."
  (interactive)
  (help/on-gui
   (when (> help/font-size-current 1)
     (setq help/font-size-current (- help/font-size-current 1))
     (help/update-font)))
  (help/not-on-gui
   (message "Please resize the terminal emulator font.")))

(defun help/org-weave-subtree-gfm (id file)
  "Export the subtree with ID to FILE in gfm."
  (interactive)
  (help/save-all-file-buffers)
  (save-excursion
    (let ((hidx (org-find-property "ID" id)))
      (when hidx
        (goto-char hidx)
        (org-export-to-file 'gfm file nil t nil)))))

(defun help/org-weave-readme ()
  (interactive)
  (help/org-weave-subtree-gfm
   "README"
   "README.md"))

(defun help/org-weave-style-guide ()
  (interactive)
  (help/org-weave-subtree-gfm
   "STYLEGUIDE"
   "STYLEGUIDE.md"))

(defun help/weave-everything-everywhere ()
  "Export this entire document in configured weavers."
  (interactive)
  (save-excursion
    (org-ascii-export-to-ascii)
    (org-html-export-to-html)
    (org-gfm-export-to-markdown)
    (org-latex-export-to-pdf))
  (help/org-weave-readme)
  (help/org-weave-style-guide))

(require 'thingatpt)

(defun thing-at-point-goto-end-of-integer ()
  "Go to end of integer at point.

Attribution: URL `http://emacsredux.com/blog/2013/07/25/increment-and-decrement-integer-at-point/'"
  (let ((inhibit-changing-match-data t))
    ;; Skip over optional sign
    (when (looking-at "[+-]")
      (forward-char 1))
    ;; Skip over digits
    (skip-chars-forward "[[:digit:]]")
    ;; Check for at least one digit
    (unless (looking-back "[[:digit:]]")
      (error "No integer here"))))
(put 'integer 'beginning-op 'thing-at-point-goto-end-of-integer)

(defun thing-at-point-goto-beginning-of-integer ()
  "Go to end of integer at point.

Attribution: URL `http://emacsredux.com/blog/2013/07/25/increment-and-decrement-integer-at-point/'"
  (let ((inhibit-changing-match-data t))
    ;; Skip backward over digits
    (skip-chars-backward "[[:digit:]]")
    ;; Check for digits and optional sign
    (unless (looking-at "[+-]?[[:digit:]]")
      (error "No integer here"))
    ;; Skip backward over optional sign
    (when (looking-back "[+-]")
      (backward-char 1))))
(put 'integer 'beginning-op 'thing-at-point-goto-beginning-of-integer)

(defun thing-at-point-bounds-of-integer-at-point ()
  "Get boundaries of integer at point.

Attribution: URL `http://emacsredux.com/blog/2013/07/25/increment-and-decrement-integer-at-point/'"
  (save-excursion
    (let (beg end)
      (thing-at-point-goto-beginning-of-integer)
      (setq beg (point))
      (thing-at-point-goto-end-of-integer)
      (setq end (point))
      (cons beg end))))
(put 'integer 'bounds-of-thing-at-point 'thing-at-point-bounds-of-integer-at-point)

(defun thing-at-point-integer-at-point ()
  "Get integer at point.

Attribution: URL `http://emacsredux.com/blog/2013/07/25/increment-and-decrement-integer-at-point/'"
  (let ((bounds (bounds-of-thing-at-point 'integer)))
    (string-to-number (buffer-substring (car bounds) (cdr bounds)))))
(put 'integer 'thing-at-point 'thing-at-point-integer-at-point)

(defun increment-integer-at-point (&optional inc)
  "Increment integer at point by one.

With numeric prefix arg INC, increment the integer by INC amount.

Attribution: URL `http://emacsredux.com/blog/2013/07/25/increment-and-decrement-integer-at-point/'"
  (interactive "p")
  (let ((inc (or inc 1))
        (n (thing-at-point 'integer))
        (bounds (bounds-of-thing-at-point 'integer)))
    (delete-region (car bounds) (cdr bounds))
    (insert (int-to-string (+ n inc)))))

(defun decrement-integer-at-point (&optional dec)
  "Decrement integer at point by one.

With numeric prefix arg DEC, decrement the integer by DEC amount.

Attribution: URL `http://emacsredux.com/blog/2013/07/25/increment-and-decrement-integer-at-point/'"
  (interactive "p")
  (increment-integer-at-point (- (or dec 1))))

(defun help/reformat-file (file)
  "Reformat a file.

Handle whether a buffer is attached to the file or not.

Be sure that most revent version of file is loaded into buffer first.

Attribution: URL `https://www.emacswiki.org/emacs/ElispCookbook#toc46'."
  (interactive)
  (with-current-buffer (find-file-noselect file)
    (revert-buffer t t)
    (with-temp-message "Formatting file..."
      (indent-region (point-min) (point-max) nil))
    (message "Formatting file done")))

(defun switch-to-previous-buffer ()
  "Switch to most recent buffer. Repeated calls toggle back and forth between the most recent two buffers.

Attribution: URL `http://pragmaticemacs.com/emacs/toggle-between-most-recent-buffers/'

Attribution: URL `https://www.emacswiki.org/emacs/SwitchingBuffers#toc5'"
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun help/dos2unix ()
  "Not exactly but it's easier to remember.

Attribution: URL `https://www.emacswiki.org/emacs/DosToUnix'"
  (interactive)
  (set-buffer-file-coding-system 'unix 't) )

(defun help/preview-buffer-file-in-marked-2 ()
  "View buffer file in Marked 2.

Attribution: URL
`https://github.com/kotfu/marked-bonus-pack/blob/master/Emacs/dot.emacs.txt'"
  (interactive)
  (help/on-osx
   (shell-command
    (format "open -a 'Marked 2.app' %s"
            (shell-quote-argument (buffer-file-name))))))

(defun help/safb-flycheck-list-errors ()
  "Save all file buffers and switch to flycheck error list"
  (interactive)
  (help/save-all-file-buffers)
  (flycheck-list-errors)
  (other-window 1))

(defmacro help/profile-org (times &rest body)
  "Makes profiling Org-Mode easy by automatically instrumenting the desired
  functions, running the code you want to test, removing the instrumentation,
  and presenting the results.

  Attribution: Adam Porter <adam@alphapapa.net>"
  `(let (output)
     (dolist (p '("org-"))  ; symbol prefixes to instrument
       (elp-instrument-package p))
     (dotimes (x ,times)
       ,@body)
     (elp-results)
     (elp-restore-all)
     (point-min)
     (forward-line 20)
     (delete-region (point) (point-max))
     (setq output (buffer-substring-no-properties (point-min) (point-max)))
     (kill-buffer)
     (delete-window)
     output))
;; orgmode:gcr:vela:D523CBF8-67C4-4C96-9298-A4A49FE54E61 ends here

;; [[file:help.org::orgmode:gcr:vela:9DB523BC-E21B-42B7-AEE2-31ED24C14D92][orgmode:gcr:vela:9DB523BC-E21B-42B7-AEE2-31ED24C14D92]]
(defconst help/column-width 78)
(setq-default fill-column help/column-width)
;; orgmode:gcr:vela:9DB523BC-E21B-42B7-AEE2-31ED24C14D92 ends here

;; [[file:help.org::orgmode:gcr:vela:44A54A0C-DA4F-4FBC-9E0A-83CEF28DD5BC][orgmode:gcr:vela:44A54A0C-DA4F-4FBC-9E0A-83CEF28DD5BC]]
(setq sentence-end-double-space t)
;; orgmode:gcr:vela:44A54A0C-DA4F-4FBC-9E0A-83CEF28DD5BC ends here

;; [[file:help.org::orgmode:gcr:vela:7F3D6946-8A60-403A-A465-D209F95D7C74][orgmode:gcr:vela:7F3D6946-8A60-403A-A465-D209F95D7C74]]
(setq colon-double-space t)
;; orgmode:gcr:vela:7F3D6946-8A60-403A-A465-D209F95D7C74 ends here

;; [[file:help.org::orgmode:gcr:vela:9288AC00-4B73-4E10-ABAE-F2E886981F97][orgmode:gcr:vela:9288AC00-4B73-4E10-ABAE-F2E886981F97]]
(use-package fill-column-indicator
  :ensure t
  :config
  (setq fci-rule-column 79))
;; orgmode:gcr:vela:9288AC00-4B73-4E10-ABAE-F2E886981F97 ends here

;; [[file:help.org::orgmode:gcr:vela:1A2B38F5-0C3E-4369-A059-B59C518A27FB][orgmode:gcr:vela:1A2B38F5-0C3E-4369-A059-B59C518A27FB]]

;; orgmode:gcr:vela:1A2B38F5-0C3E-4369-A059-B59C518A27FB ends here

;; [[file:help.org::orgmode:gcr:vela:42D5F313-65F0-49E1-8759-9259D4020FA9][orgmode:gcr:vela:42D5F313-65F0-49E1-8759-9259D4020FA9]]
(defun help/text-prog*-setup ()
  "HELP's standard configuration for buffer's working with text, often for
   programming."
  (interactive)
  (auto-fill-mode)
  (diminish 'auto-fill-function)
  (visual-line-mode)
  (nlinum-mode)
  (fci-mode)
  (rainbow-mode)
  (help/try-to-add-imenu)
  (writegood-mode)
  (turn-on-page-break-lines-mode))

(add-hook 'text-mode-hook #'help/text-prog*-setup)
;; orgmode:gcr:vela:42D5F313-65F0-49E1-8759-9259D4020FA9 ends here

;; [[file:help.org::orgmode:gcr:vela:0E6156C3-4259-4539-BDAC-899B0AF4E80F][orgmode:gcr:vela:0E6156C3-4259-4539-BDAC-899B0AF4E80F]]
(desktop-save-mode t)
(setq desktop-restore-eager 10)
;; orgmode:gcr:vela:0E6156C3-4259-4539-BDAC-899B0AF4E80F ends here

;; [[file:help.org::orgmode:gcr:vela:170E0633-2AA6-47AD-9234-4C1F0978C058][orgmode:gcr:vela:170E0633-2AA6-47AD-9234-4C1F0978C058]]
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode 1)
  :diminish undo-tree-mode)
;; orgmode:gcr:vela:170E0633-2AA6-47AD-9234-4C1F0978C058 ends here

;; [[file:help.org::orgmode:gcr:vela:7CA01CFF-D9B6-4F1D-B120-88AFC30F281E][orgmode:gcr:vela:7CA01CFF-D9B6-4F1D-B120-88AFC30F281E]]
(setq require-final-newline nil)
;; orgmode:gcr:vela:7CA01CFF-D9B6-4F1D-B120-88AFC30F281E ends here

;; [[file:help.org::orgmode:gcr:vela:C2215D90-ADDA-47C9-9F1E-21FD79BDDBC0][orgmode:gcr:vela:C2215D90-ADDA-47C9-9F1E-21FD79BDDBC0]]
(setq track-eol t)
(setq line-move-visual nil)
;; orgmode:gcr:vela:C2215D90-ADDA-47C9-9F1E-21FD79BDDBC0 ends here

;; [[file:help.org::orgmode:gcr:vela:CDBC5A4D-F67C-412C-A1DE-69EB52287E2C][orgmode:gcr:vela:CDBC5A4D-F67C-412C-A1DE-69EB52287E2C]]
(setq scroll-preserve-screen-position t)
;; orgmode:gcr:vela:CDBC5A4D-F67C-412C-A1DE-69EB52287E2C ends here

;; [[file:help.org::orgmode:gcr:vela:AA25E45E-3FF2-483A-9361-FD44DE6E1C18][orgmode:gcr:vela:AA25E45E-3FF2-483A-9361-FD44DE6E1C18]]
(setq scroll-conservatively 101)
;; orgmode:gcr:vela:AA25E45E-3FF2-483A-9361-FD44DE6E1C18 ends here

;; [[file:help.org::orgmode:gcr:vela:4B565992-E3BA-4355-AD8F-061E6A1736D9][orgmode:gcr:vela:4B565992-E3BA-4355-AD8F-061E6A1736D9]]
(use-package stripe-buffer
  :ensure t)
;; orgmode:gcr:vela:4B565992-E3BA-4355-AD8F-061E6A1736D9 ends here

;; [[file:help.org::orgmode:gcr:vela:C82EDEC4-3E13-4B4A-A947-B8ACDB5C8160][orgmode:gcr:vela:C82EDEC4-3E13-4B4A-A947-B8ACDB5C8160]]
(setq sentence-end-double-space nil)
;; orgmode:gcr:vela:C82EDEC4-3E13-4B4A-A947-B8ACDB5C8160 ends here

;; [[file:help.org::orgmode:gcr:vela:B80399BE-3E19-441E-93CF-C613A1309C35][orgmode:gcr:vela:B80399BE-3E19-441E-93CF-C613A1309C35]]
(add-hook 'before-save-hook #'help/delete-trailing-whitespace)
;; orgmode:gcr:vela:B80399BE-3E19-441E-93CF-C613A1309C35 ends here

;; [[file:help.org::orgmode:gcr:vela:DA9A04CF-ABF9-4BF4-A9FF-85E89DA740E1][orgmode:gcr:vela:DA9A04CF-ABF9-4BF4-A9FF-85E89DA740E1]]
(use-package expand-region
  :ensure t)
;; orgmode:gcr:vela:DA9A04CF-ABF9-4BF4-A9FF-85E89DA740E1 ends here

;; [[file:help.org::orgmode:gcr:vela:A1A8FE84-0A12-4C5F-9565-F4EACE3DB694][orgmode:gcr:vela:A1A8FE84-0A12-4C5F-9565-F4EACE3DB694]]
(use-package page-break-lines
  :ensure t)
;; orgmode:gcr:vela:A1A8FE84-0A12-4C5F-9565-F4EACE3DB694 ends here

;; [[file:help.org::orgmode:gcr:vela:C3EAB237-661B-494B-88FF-0133C4AB51DF][orgmode:gcr:vela:C3EAB237-661B-494B-88FF-0133C4AB51DF]]
(use-package page-break-lines
  :diminish page-break-lines-mode)
;; orgmode:gcr:vela:C3EAB237-661B-494B-88FF-0133C4AB51DF ends here

;; [[file:help.org::orgmode:gcr:vela:240E646E-D7F6-40A1-AA60-F6D0CD83DDD7][orgmode:gcr:vela:240E646E-D7F6-40A1-AA60-F6D0CD83DDD7]]
(advice-add #'backward-page :after #'recenter)
(advice-add #'forward-page :after #'recenter)
;; orgmode:gcr:vela:240E646E-D7F6-40A1-AA60-F6D0CD83DDD7 ends here

;; [[file:help.org::orgmode:gcr:vela:2D731158-FCE7-4BDA-AE78-383EAAD1FE4B][orgmode:gcr:vela:2D731158-FCE7-4BDA-AE78-383EAAD1FE4B]]
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
  (defun help/goto-line ()
    "How do I get it to expand upon a goto-line? hideshow-expand affected block
    when using goto-line in a collapsed buffer."
    (call-interactively #'goto-line)
    (save-excursion
      (hs-show-block)))
  :diminish hs-minor-mode)
;; orgmode:gcr:vela:2D731158-FCE7-4BDA-AE78-383EAAD1FE4B ends here

;; [[file:help.org::orgmode:gcr:vela:5CDF03F0-974F-4AFC-9F63-EA9B5D7C6923][orgmode:gcr:vela:5CDF03F0-974F-4AFC-9F63-EA9B5D7C6923]]
(use-package rainbow-mode
  :ensure t
  :config
  :diminish rainbow-mode)
;; orgmode:gcr:vela:5CDF03F0-974F-4AFC-9F63-EA9B5D7C6923 ends here

;; [[file:help.org::orgmode:gcr:vela:87818F95-F0F0-4538-8103-BBCCFABB8975][orgmode:gcr:vela:87818F95-F0F0-4538-8103-BBCCFABB8975]]
(use-package bug-hunter
  :ensure t)
;; orgmode:gcr:vela:87818F95-F0F0-4538-8103-BBCCFABB8975 ends here

;; [[file:help.org::orgmode:gcr:vela:96387299-8865-4DF8-8B98-8EF290A319B8][orgmode:gcr:vela:96387299-8865-4DF8-8B98-8EF290A319B8]]
(setq-default eval-expression-print-level nil)
;; orgmode:gcr:vela:96387299-8865-4DF8-8B98-8EF290A319B8 ends here

;; [[file:help.org::orgmode:gcr:vela:F082B76A-8371-43DE-8FF5-2D95F3FD687A][orgmode:gcr:vela:F082B76A-8371-43DE-8FF5-2D95F3FD687A]]
(put #'upcase-region 'disabled nil)
(put #'downcase-region 'disabled nil)
(put #'narrow-to-region 'disabled nil)
;; orgmode:gcr:vela:F082B76A-8371-43DE-8FF5-2D95F3FD687A ends here

;; [[file:help.org::orgmode:gcr:vela:D2B05DD9-290E-40D2-A012-92A787C9C469][orgmode:gcr:vela:D2B05DD9-290E-40D2-A012-92A787C9C469]]
(use-package eval-in-repl
  :ensure t
  :config
  (setq eir-jump-after-eval nil)
  (setq eir-always-split-script-window t)
  (setq eir-delete-other-windows t)
  (setq eir-repl-placement 'right)
  ;; ielm support (for emacs lisp)
  (require 'eval-in-repl-ielm)
  ;; for .el files
  (define-key emacs-lisp-mode-map (kbd "<C-return>") 'eir-eval-in-ielm)
  ;; for *scratch*
  (define-key lisp-interaction-mode-map (kbd "<C-return>") 'eir-eval-in-ielm)
  ;; for M-x info
  (define-key Info-mode-map (kbd "<C-return>") 'eir-eval-in-ielm)
  ;; Shell support
  (require 'eval-in-repl-shell)
  (add-hook 'sh-mode-hook
            '(lambda()
               (local-set-key (kbd "C-<return>") 'eir-eval-in-shell)))
  ;; Version with opposite behavior to eir-jump-after-eval configuration
  (defun eir-eval-in-shell2 ()
    "eval-in-repl for shell script (opposite behavior)

This version has the opposite behavior to the eir-jump-after-eval
configuration when invoked to evaluate a line."
    (interactive)
    (let ((eir-jump-after-eval (not eir-jump-after-eval)))
      (eir-eval-in-shell)))
  (add-hook 'sh-mode-hook
            '(lambda()
               (local-set-key (kbd "C-M-<return>") 'eir-eval-in-shell2)))
  ;; racket-mode support (for Racket; if not using Geiser)
  (require 'racket-mode) ; if not done elsewhere
  (require 'eval-in-repl-racket)
  (define-key racket-mode-map (kbd "<C-return>") 'eir-eval-in-racket))
;; orgmode:gcr:vela:D2B05DD9-290E-40D2-A012-92A787C9C469 ends here

;; [[file:help.org::orgmode:gcr:vela:A7C4590E-53C4-4159-B627-178E367B0A12][orgmode:gcr:vela:A7C4590E-53C4-4159-B627-178E367B0A12]]
(add-to-list 'load-path (getenv "CCRYPT"))
(use-package ps-ccrypt)
;; orgmode:gcr:vela:A7C4590E-53C4-4159-B627-178E367B0A12 ends here

;; [[file:help.org::orgmode:gcr:vela:A9A01E59-A084-4849-93F3-957753D65D24][orgmode:gcr:vela:A9A01E59-A084-4849-93F3-957753D65D24]]
(setq eshell-prefer-lisp-functions nil
      eshell-cmpl-cycle-completions nil
      eshell-save-history-on-exit t
      eshell-cmpl-dir-ignore "\\`\\(\\.\\.?\\|CVS\\|\\.svn\\|\\.git\\)/\\'")

(eval-after-load "esh-opt"
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
;; orgmode:gcr:vela:A9A01E59-A084-4849-93F3-957753D65D24 ends here

;; [[file:help.org::orgmode:gcr:vela:6D58C096-C7DE-44D2-AA33-0602237F46C5][orgmode:gcr:vela:6D58C096-C7DE-44D2-AA33-0602237F46C5]]
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
;; orgmode:gcr:vela:6D58C096-C7DE-44D2-AA33-0602237F46C5 ends here

;; [[file:help.org::orgmode:gcr:vela:423B343F-CA48-4C7C-A0A5-45D533FFD8D6][orgmode:gcr:vela:423B343F-CA48-4C7C-A0A5-45D533FFD8D6]]
(setq auto-save-default t)
(setq make-backup-files nil)
(setq auto-save-visited-file-name t)
(setq auto-save-interval 0)
(setq auto-save-timeout (* 60 5))
;; orgmode:gcr:vela:423B343F-CA48-4C7C-A0A5-45D533FFD8D6 ends here

;; [[file:help.org::orgmode:gcr:vela:84B0605F-AA20-4CBB-8D14-5B55CF8D097D][orgmode:gcr:vela:84B0605F-AA20-4CBB-8D14-5B55CF8D097D]]
(add-hook 'focus-out-hook #'help/save-all-file-buffers)
;; orgmode:gcr:vela:84B0605F-AA20-4CBB-8D14-5B55CF8D097D ends here

;; [[file:help.org::orgmode:gcr:vela:B04C1388-6C2A-45D9-BFA6-7E21861FB9E3][orgmode:gcr:vela:B04C1388-6C2A-45D9-BFA6-7E21861FB9E3]]
(global-auto-revert-mode 1)
(diminish 'auto-revert-mode)
;; orgmode:gcr:vela:B04C1388-6C2A-45D9-BFA6-7E21861FB9E3 ends here

;; [[file:help.org::orgmode:gcr:vela:5A0C3F05-0C41-4E50-944E-0ACC4C2F4A15][orgmode:gcr:vela:5A0C3F05-0C41-4E50-944E-0ACC4C2F4A15]]
(defun help/safb-help/vc-next-action ()
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

(defun help/safb-help/magit-status ()
  (interactive)
  (help/save-all-file-buffers)
  (help/magit-status))

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

(defun help/safb-org-babel-detangle ()
  (interactive)
  (help/save-all-file-buffers)
  (org-babel-detangle))

(defun help/safb-other-window ()
  (interactive)
  (help/save-all-file-buffers)
  (other-window 1))

(defun help/safb-org-edit-src-code ()
  (interactive)
  (help/save-all-file-buffers)
  (org-edit-src-code))

(defun help/safb-org-export-dispatch ()
  (interactive)
  (help/save-all-file-buffers)
  (org-export-dispatch))

(defun help/safb-TeX-command-master (&optional arg)
  (interactive)
  (help/save-all-file-buffers)
  (TeX-command-master arg))

(defun help/safb-org-babel-execute-buffer ()
  "Immediately save results."
  (interactive)
  (help/save-all-file-buffers)
  (org-babel-execute-buffer)
  (help/save-all-file-buffers))

(defun help/safb-org-babel-execute-subtree ()
  "Immediately save results."
  (interactive)
  (help/save-all-file-buffers)
  (org-babel-execute-subtree)
  (help/save-all-file-buffers))

(defun help/safb-help/org-babel-demarcate-block ()
  (interactive)
  (help/org-babel-demarcate-block)
  (help/save-all-file-buffers))

(defun help/safb-save-buffers-kill-terminal ()
  "Partially redundant; kept for consistency among `SAFB' functions."
  (interactive)
  (help/save-all-file-buffers)
  (save-buffers-kill-terminal))

(defun help/safb-help/goto-line ()
  (interactive)
  (help/save-all-file-buffers)
  (help/goto-line))

(defun help/safb-switch-to-previous-buffer ()
  (interactive)
  (help/save-all-file-buffers)
  (switch-to-previous-buffer))
;; orgmode:gcr:vela:5A0C3F05-0C41-4E50-944E-0ACC4C2F4A15 ends here

;; [[file:help.org::orgmode:gcr:vela:DA537B02-6E64-42FC-BE9D-E5A3408B6599][orgmode:gcr:vela:DA537B02-6E64-42FC-BE9D-E5A3408B6599]]
(add-to-list 'find-file-not-found-functions #'help/create-non-existent-directory)
;; orgmode:gcr:vela:DA537B02-6E64-42FC-BE9D-E5A3408B6599 ends here

;; [[file:help.org::orgmode:gcr:vela:E99CAE8F-970F-4584-9B28-9C77D5B79356][orgmode:gcr:vela:E99CAE8F-970F-4584-9B28-9C77D5B79356]]
(setq large-file-warning-threshold (* 1024 1024 2))
;; orgmode:gcr:vela:E99CAE8F-970F-4584-9B28-9C77D5B79356 ends here

;; [[file:help.org::orgmode:gcr:vela:584CF9A7-15E8-4F85-ABF2-3592759A7862][orgmode:gcr:vela:584CF9A7-15E8-4F85-ABF2-3592759A7862]]
(setq temporary-file-directory "/tmp")
;; orgmode:gcr:vela:584CF9A7-15E8-4F85-ABF2-3592759A7862 ends here

;; [[file:help.org::orgmode:gcr:vela:26EA1235-E9EC-4DC0-9F7D-B3D14E1A27B7][orgmode:gcr:vela:26EA1235-E9EC-4DC0-9F7D-B3D14E1A27B7]]
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
  (local-set-key "c" #'help/dired-copy-filename)
  (local-set-key "]" #'help/dired-copy-path)
  (diff-hl-dired-mode)
  (load "dired-x")
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))
(add-hook 'dired-mode-hook #'help/dired-mode-hook-fn)
;; orgmode:gcr:vela:26EA1235-E9EC-4DC0-9F7D-B3D14E1A27B7 ends here

;; [[file:help.org::orgmode:gcr:vela:720D3D44-21F6-4AA0-82B7-C23EE86783C9][orgmode:gcr:vela:720D3D44-21F6-4AA0-82B7-C23EE86783C9]]
(setq dired-dwim-target t)
;; orgmode:gcr:vela:720D3D44-21F6-4AA0-82B7-C23EE86783C9 ends here

;; [[file:help.org::orgmode:gcr:vela:8E592C34-93F5-47DC-A072-ACB8C96D3753][orgmode:gcr:vela:8E592C34-93F5-47DC-A072-ACB8C96D3753]]
(help/on-osx
 (setq ls-lisp-use-insert-directory-program nil)
 (use-package ls-lisp))
;; orgmode:gcr:vela:8E592C34-93F5-47DC-A072-ACB8C96D3753 ends here

;; [[file:help.org::orgmode:gcr:vela:8FE141D1-224D-415F-8D68-D1A30196EA33][orgmode:gcr:vela:8FE141D1-224D-415F-8D68-D1A30196EA33]]
(use-package find-dired
  :ensure t
  :config
  (setq find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld")))
;; orgmode:gcr:vela:8FE141D1-224D-415F-8D68-D1A30196EA33 ends here

;; [[file:help.org::orgmode:gcr:vela:66FFA0AC-973A-412E-9056-F9B4BE9D3641][orgmode:gcr:vela:66FFA0AC-973A-412E-9056-F9B4BE9D3641]]
(use-package wdired
  :ensure t
  :config
  (setq wdired-allow-to-change-permissions t)
  (setq wdired-allow-to-redirect-links t)
  (setq wdired-use-interactive-rename t)
  (setq wdired-confirm-overwrite t)
  (setq wdired-use-dired-vertical-movement 'sometimes))
;; orgmode:gcr:vela:66FFA0AC-973A-412E-9056-F9B4BE9D3641 ends here

;; [[file:help.org::orgmode:gcr:vela:41A96AA5-4736-40CF-BECD-5AE7C43DCEFF][orgmode:gcr:vela:41A96AA5-4736-40CF-BECD-5AE7C43DCEFF]]
(use-package dired-imenu
  :ensure t)
;; orgmode:gcr:vela:41A96AA5-4736-40CF-BECD-5AE7C43DCEFF ends here

;; [[file:help.org::orgmode:gcr:vela:35EA0EB6-A64A-49D3-B4DE-7AB0AAA2A9FC][orgmode:gcr:vela:35EA0EB6-A64A-49D3-B4DE-7AB0AAA2A9FC]]
(setq ido-show-dot-for-dired t)
;; orgmode:gcr:vela:35EA0EB6-A64A-49D3-B4DE-7AB0AAA2A9FC ends here

;; [[file:help.org::orgmode:gcr:vela:D722C567-86BA-45AD-91AB-2536696312C8][orgmode:gcr:vela:D722C567-86BA-45AD-91AB-2536696312C8]]
(use-package imenu
  :config
  (setq imenu-sort-function #'imenu--sort-by-name))
(defun help/try-to-add-imenu ()
  "Add Imenu to modes that have `font-lock-mode' activated.

Attribution: SRC http://www.emacswiki.org/emacs/ImenuMode"
  (condition-case nil (imenu-add-to-menubar "Imenu") (error nil)))
(add-hook 'font-lock-mode-hook #'help/try-to-add-imenu)
;; orgmode:gcr:vela:D722C567-86BA-45AD-91AB-2536696312C8 ends here

;; [[file:help.org::orgmode:gcr:vela:CDC23247-0399-4E7B-970A-AD70EA8354DB][orgmode:gcr:vela:CDC23247-0399-4E7B-970A-AD70EA8354DB]]
(use-package imenu-list
  :ensure t
  :config
  (setq imenu-list-focus-after-activation t)
  (setq imenu-list-auto-resize t)
  (setq imenu-list-position 'left)
  (setq imenu-list-size 40))
;; orgmode:gcr:vela:CDC23247-0399-4E7B-970A-AD70EA8354DB ends here

;; [[file:help.org::orgmode:gcr:vela:CCCA7B51-6A71-41EF-906C-C1C3A6B0C927][orgmode:gcr:vela:CCCA7B51-6A71-41EF-906C-C1C3A6B0C927]]
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
;; orgmode:gcr:vela:CCCA7B51-6A71-41EF-906C-C1C3A6B0C927 ends here

;; [[file:help.org::orgmode:gcr:vela:4C4179A9-2415-4309-A127-FA143D3331DD][orgmode:gcr:vela:4C4179A9-2415-4309-A127-FA143D3331DD]]
(use-package smex
  :ensure t
  :config
  (smex-initialize))
;; orgmode:gcr:vela:4C4179A9-2415-4309-A127-FA143D3331DD ends here

;; [[file:help.org::orgmode:gcr:vela:667AED70-8685-4BEA-A32F-7B304483C05F][orgmode:gcr:vela:667AED70-8685-4BEA-A32F-7B304483C05F]]
(setq ido-use-url-at-point t)
(setq ido-use-filename-at-point 'guess)
;; orgmode:gcr:vela:667AED70-8685-4BEA-A32F-7B304483C05F ends here

;; [[file:help.org::orgmode:gcr:vela:881B532E-F141-431C-8CDE-287C59F775C2][orgmode:gcr:vela:881B532E-F141-431C-8CDE-287C59F775C2]]
(set-fontset-font "fontset-default" nil
                  (font-spec :size 20 :name "Symbola"))
;; orgmode:gcr:vela:881B532E-F141-431C-8CDE-287C59F775C2 ends here

;; [[file:help.org::orgmode:gcr:vela:54E78DF3-0C8E-4ABE-8CD8-36C0AF24DD26][orgmode:gcr:vela:54E78DF3-0C8E-4ABE-8CD8-36C0AF24DD26]]
(global-font-lock-mode t)
;; orgmode:gcr:vela:54E78DF3-0C8E-4ABE-8CD8-36C0AF24DD26 ends here

;; [[file:help.org::orgmode:gcr:vela:391224F7-3242-4B91-BC34-6E8083947884][orgmode:gcr:vela:391224F7-3242-4B91-BC34-6E8083947884]]
(use-package pretty-mode
  :ensure t
  :config
  (global-pretty-mode))
;; orgmode:gcr:vela:391224F7-3242-4B91-BC34-6E8083947884 ends here

;; [[file:help.org::orgmode:gcr:vela:C95AD351-D087-473F-88EB-B0930C86FBDF][orgmode:gcr:vela:C95AD351-D087-473F-88EB-B0930C86FBDF]]
(use-package avy
  :ensure t
  :config)
;; orgmode:gcr:vela:C95AD351-D087-473F-88EB-B0930C86FBDF ends here

;; [[file:help.org::orgmode:gcr:vela:42DD3C85-F2C4-4A82-8B76-5BFBCF692E86][orgmode:gcr:vela:42DD3C85-F2C4-4A82-8B76-5BFBCF692E86]]
(use-package writegood-mode
  :ensure t
  :config
  (eval-after-load "writegood-mode"
    '(diminish 'writegood-mode)))
;; orgmode:gcr:vela:42DD3C85-F2C4-4A82-8B76-5BFBCF692E86 ends here

;; [[file:help.org::orgmode:gcr:vela:4FF40D35-DDA0-4E02-80C0-52962DCD449A][orgmode:gcr:vela:4FF40D35-DDA0-4E02-80C0-52962DCD449A]]
(use-package langtool
  :ensure t
  :init
  (setq langtool-language-tool-jar (getenv "LANGTOOL"))
  (setq langtool-mother-tongue "en")
  (setq langtool-java-bin (concat (getenv "JAVA_HOME") "/bin/java")))
;; orgmode:gcr:vela:4FF40D35-DDA0-4E02-80C0-52962DCD449A ends here

;; [[file:help.org::orgmode:gcr:vela:2A5BAD60-DF45-4BD1-AA01-E430E495C62D][orgmode:gcr:vela:2A5BAD60-DF45-4BD1-AA01-E430E495C62D]]
(with-eval-after-load "flycheck"
  (flycheck-define-checker proselint
    "A linter for prose."
    :command ("/Users/gcr/util/proselint/env/bin/proselint" source-inplace)
    :error-patterns
    ((warning line-start (file-name) ":" line ":" column ": "
              (id (one-or-more (not (any " "))))
              (message (one-or-more not-newline)
                       (zero-or-more "\n" (any " ") (one-or-more not-newline)))
              line-end))
    :modes (text-mode org-mode markdown-mode gfm-mode))
  (add-to-list 'flycheck-checkers 'proselint))
;; orgmode:gcr:vela:2A5BAD60-DF45-4BD1-AA01-E430E495C62D ends here

;; [[file:help.org::orgmode:gcr:vela:487B46D5-C025-4114-A1B4-BAAF5FAFE430][orgmode:gcr:vela:487B46D5-C025-4114-A1B4-BAAF5FAFE430]]
(use-package fuzzy
  :ensure t)
(use-package auto-complete
  :ensure t
  :config
  (use-package auto-complete-config)
  (setq ac-quick-help-prefer-pos-tip nil)
  (ac-config-default)
  (setq ac-auto-start nil)
  (help/not-on-gui (ac-set-trigger-key "TAB"))
  (help/on-gui (ac-set-trigger-key "<tab>"))
  :diminish auto-complete-mode)
(use-package auto-complete-chunk
  :ensure t)
;; orgmode:gcr:vela:487B46D5-C025-4114-A1B4-BAAF5FAFE430 ends here

;; [[file:help.org::orgmode:gcr:vela:36899F5A-7606-461A-A17C-622B0B807E8E][orgmode:gcr:vela:36899F5A-7606-461A-A17C-622B0B807E8E]]
(use-package auto-complete-chunk
  :ensure t)
;; orgmode:gcr:vela:36899F5A-7606-461A-A17C-622B0B807E8E ends here

;; [[file:help.org::orgmode:gcr:vela:989C4727-473A-4DAB-8446-5077F3042587][orgmode:gcr:vela:989C4727-473A-4DAB-8446-5077F3042587]]
(use-package multiple-cursors
  :ensure t)
;; orgmode:gcr:vela:989C4727-473A-4DAB-8446-5077F3042587 ends here

;; [[file:help.org::orgmode:gcr:vela:0B6E0831-FE6F-442F-918F-48488A6FCD2D][orgmode:gcr:vela:0B6E0831-FE6F-442F-918F-48488A6FCD2D]]
(delete-selection-mode t)
;; orgmode:gcr:vela:0B6E0831-FE6F-442F-918F-48488A6FCD2D ends here

;; [[file:help.org::orgmode:gcr:vela:2D2A8781-9A67-4D3A-B0E4-B09EEBBC65D8][orgmode:gcr:vela:2D2A8781-9A67-4D3A-B0E4-B09EEBBC65D8]]
(fset #'yes-or-no-p #'y-or-n-p)
;; orgmode:gcr:vela:2D2A8781-9A67-4D3A-B0E4-B09EEBBC65D8 ends here

;; [[file:help.org::orgmode:gcr:vela:F40D1069-58B9-42CA-A64E-789B56C914EC][orgmode:gcr:vela:F40D1069-58B9-42CA-A64E-789B56C914EC]]
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)
;; orgmode:gcr:vela:F40D1069-58B9-42CA-A64E-789B56C914EC ends here

;; [[file:help.org::orgmode:gcr:vela:A6E43252-3A7E-4647-BC3E-EB93CF178233][orgmode:gcr:vela:A6E43252-3A7E-4647-BC3E-EB93CF178233]]
(setq enable-recursive-minibuffers t)
(minibuffer-depth-indicate-mode t)
;; orgmode:gcr:vela:A6E43252-3A7E-4647-BC3E-EB93CF178233 ends here

;; [[file:help.org::orgmode:gcr:vela:9B580380-CA8C-4134-80CC-FE3B0376BE73][orgmode:gcr:vela:9B580380-CA8C-4134-80CC-FE3B0376BE73]]
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse t)
;; orgmode:gcr:vela:9B580380-CA8C-4134-80CC-FE3B0376BE73 ends here

;; [[file:help.org::orgmode:gcr:vela:00A4417A-8BE6-4417-B054-2F9D8287FAFD][orgmode:gcr:vela:00A4417A-8BE6-4417-B054-2F9D8287FAFD]]
(defun help/occur-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))
(add-hook 'occur-mode-hook #'help/occur-mode-hook-fn)
(define-key occur-mode-map (kbd "n") #'next-logical-line)
(define-key occur-mode-map (kbd "p") #'previous-logical-line)
;; orgmode:gcr:vela:00A4417A-8BE6-4417-B054-2F9D8287FAFD ends here

;; [[file:help.org::orgmode:gcr:vela:2DE86EF6-3E4B-42FD-AA11-1914A83029BE][orgmode:gcr:vela:2DE86EF6-3E4B-42FD-AA11-1914A83029BE]]
(use-package alert
  :ensure t
  :config
  (setq alert-fade-time 10)
  (help/on-gui
   (help/on-osx
    (setq alert-default-style 'growl)))
  (setq alert-reveal-idle-time 120))
;; orgmode:gcr:vela:2DE86EF6-3E4B-42FD-AA11-1914A83029BE ends here

;; [[file:help.org::orgmode:gcr:vela:037534FF-945E-477A-9813-D9E4C7E54359][orgmode:gcr:vela:037534FF-945E-477A-9813-D9E4C7E54359]]
(use-package projectile
  :ensure t
  :config
  (projectile-global-mode t)
  (global-set-key (kbd "s-z") #'projectile-find-file)
  (help/on-windows
   (setq projectile-indexing-method 'alien))
  :diminish projectile-mode)
;; orgmode:gcr:vela:037534FF-945E-477A-9813-D9E4C7E54359 ends here

;; [[file:help.org::orgmode:gcr:vela:8431ABE6-1C81-4AD3-AB47-C0B793C98FE3][orgmode:gcr:vela:8431ABE6-1C81-4AD3-AB47-C0B793C98FE3]]
(eval-after-load "projectile"
  '(progn (setq magit-repository-directories (mapcar (lambda (dir)
                                                       (substring dir 0 -1))
                                                     (remove-if-not (lambda (project)
                                                                      (file-directory-p (concat project "/.git/")))
                                                                    (projectile-relevant-known-projects)))

                magit-repository-directories-depth 1)))
;; orgmode:gcr:vela:8431ABE6-1C81-4AD3-AB47-C0B793C98FE3 ends here

;; [[file:help.org::orgmode:gcr:vela:BD085F97-3BDA-43A5-A5BC-A17DD446E36B][orgmode:gcr:vela:BD085F97-3BDA-43A5-A5BC-A17DD446E36B]]
(use-package pp
  :commands (pp-display-expression))
;; orgmode:gcr:vela:BD085F97-3BDA-43A5-A5BC-A17DD446E36B ends here

;; [[file:help.org::orgmode:gcr:vela:3E6EFC3D-E8FA-4C27-B58B-DFAA640DD405][orgmode:gcr:vela:3E6EFC3D-E8FA-4C27-B58B-DFAA640DD405]]
(setq register-preview-delay 2)
(setq register-separator "\n\n")
;; orgmode:gcr:vela:3E6EFC3D-E8FA-4C27-B58B-DFAA640DD405 ends here

;; [[file:help.org::orgmode:gcr:vela:D9A8B6E9-E328-47C1-9B75-863B640BEAB7][orgmode:gcr:vela:D9A8B6E9-E328-47C1-9B75-863B640BEAB7]]
(use-package anzu
  :ensure t
  :config
  (global-anzu-mode t)
  (setq anzu-mode-lighter "")
  (setq anzu-deactivate-region t)
  (setq anzu-search-threshold 1000)
  (setq anzu-replace-to-string-separator " ⇒ "))
;; orgmode:gcr:vela:D9A8B6E9-E328-47C1-9B75-863B640BEAB7 ends here

;; [[file:help.org::orgmode:gcr:vela:FDA728C0-CBE2-4B1B-A30F-CC8EA3E810DB][orgmode:gcr:vela:FDA728C0-CBE2-4B1B-A30F-CC8EA3E810DB]]
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
(savehist-mode t)
;; orgmode:gcr:vela:FDA728C0-CBE2-4B1B-A30F-CC8EA3E810DB ends here

;; [[file:help.org::orgmode:gcr:vela:B5DDBCA8-42F2-49DF-9E7F-71E776A99946][orgmode:gcr:vela:B5DDBCA8-42F2-49DF-9E7F-71E776A99946]]
(setq isearch-lax-whitespace nil)
(setq isearch-regexp-lax-whitespace nil)
;; orgmode:gcr:vela:B5DDBCA8-42F2-49DF-9E7F-71E776A99946 ends here

;; [[file:help.org::orgmode:gcr:vela:4B9FE2A1-6A5F-42EF-AEEA-222B72170B64][orgmode:gcr:vela:4B9FE2A1-6A5F-42EF-AEEA-222B72170B64]]
(setq-default case-fold-search t)
;; orgmode:gcr:vela:4B9FE2A1-6A5F-42EF-AEEA-222B72170B64 ends here

;; [[file:help.org::orgmode:gcr:vela:61ACBD2A-D9CB-4C3E-B872-92C293B8FB64][orgmode:gcr:vela:61ACBD2A-D9CB-4C3E-B872-92C293B8FB64]]
(setq search-default-regexp-mode nil)
;; orgmode:gcr:vela:61ACBD2A-D9CB-4C3E-B872-92C293B8FB64 ends here

;; [[file:help.org::orgmode:gcr:vela:B7EB4F42-9696-495C-98F5-427B03DA93EE][orgmode:gcr:vela:B7EB4F42-9696-495C-98F5-427B03DA93EE]]
(use-package ag
  :ensure t
  :config
  (setq ag-highlight-search t)
  (setq ag-reuse-window nil)
  (setq ag-reuse-buffers t)
  (setq ag-arguments (-insert-at (- (length ag-arguments) 1) '"-i" ag-arguments)))
;; orgmode:gcr:vela:B7EB4F42-9696-495C-98F5-427B03DA93EE ends here

;; [[file:help.org::orgmode:gcr:vela:62360083-1CE2-4EEF-BF61-AEA8F3FA9944][orgmode:gcr:vela:62360083-1CE2-4EEF-BF61-AEA8F3FA9944]]
(defun help/block-regex (special)
  "Make an ispell skip-region alist for a SPECIAL block."
  (interactive)
  `(,(concat help/org-special-pre "BEGIN_" special)
    .
    ,(concat help/org-special-pre "END_" special)))
;; orgmode:gcr:vela:62360083-1CE2-4EEF-BF61-AEA8F3FA9944 ends here

;; [[file:help.org::orgmode:gcr:vela:23D5548B-1081-48A8-BBCD-5C69AC2C57B8][orgmode:gcr:vela:23D5548B-1081-48A8-BBCD-5C69AC2C57B8]]
(add-to-list 'ispell-skip-region-alist (help/block-regex "SRC"))
;; orgmode:gcr:vela:23D5548B-1081-48A8-BBCD-5C69AC2C57B8 ends here

;; [[file:help.org::orgmode:gcr:vela:CE78FEAC-B28A-4F76-95F2-4FE246FCDCAD][orgmode:gcr:vela:CE78FEAC-B28A-4F76-95F2-4FE246FCDCAD]]
(add-to-list 'ispell-skip-region-alist (help/block-regex "EXAMPLE"))
;; orgmode:gcr:vela:CE78FEAC-B28A-4F76-95F2-4FE246FCDCAD ends here

;; [[file:help.org::orgmode:gcr:vela:01BEC0C6-64F7-440F-A217-EA73CDA75DDA][orgmode:gcr:vela:01BEC0C6-64F7-440F-A217-EA73CDA75DDA]]
(add-to-list 'ispell-skip-region-alist '("^\s*:PROPERTIES\:$" . "^\s*:END\:$"))
;; orgmode:gcr:vela:01BEC0C6-64F7-440F-A217-EA73CDA75DDA ends here

;; [[file:help.org::orgmode:gcr:vela:F5DC40F2-20EC-45C0-BDB3-7C788514CD23][orgmode:gcr:vela:F5DC40F2-20EC-45C0-BDB3-7C788514CD23]]
(add-to-list 'ispell-skip-region-alist '("\\[fn:.+:" . "\\]"))
;; orgmode:gcr:vela:F5DC40F2-20EC-45C0-BDB3-7C788514CD23 ends here

;; [[file:help.org::orgmode:gcr:vela:F5636C6E-61AC-491F-936E-FAE5974ED541][orgmode:gcr:vela:F5636C6E-61AC-491F-936E-FAE5974ED541]]
(add-to-list 'ispell-skip-region-alist '("^http" . "\\]"))
;; orgmode:gcr:vela:F5636C6E-61AC-491F-936E-FAE5974ED541 ends here

;; [[file:help.org::orgmode:gcr:vela:D1A2D129-9299-4349-AFF3-8F65F7D0CF95][orgmode:gcr:vela:D1A2D129-9299-4349-AFF3-8F65F7D0CF95]]
(add-to-list 'ispell-skip-region-alist '("- \\*.+" . ".*\\*: "))
;; orgmode:gcr:vela:D1A2D129-9299-4349-AFF3-8F65F7D0CF95 ends here

;; [[file:help.org::orgmode:gcr:vela:3745D1E1-33D3-4D2F-B527-BBBCA619D455][orgmode:gcr:vela:3745D1E1-33D3-4D2F-B527-BBBCA619D455]]
(let ()
  (--each
      '(("ATTR_LATEX" nil)
        ("AUTHOR" nil)
        ("BLOG" nil)
        ("CREATOR" nil)
        ("DATE" nil)
        ("DESCRIPTION" nil)
        ("EMAIL" nil)
        ("EXCLUDE_TAGS" nil)
        ("HTML_CONTAINER" nil)
        ("HTML_DOCTYPE" nil)
        ("HTML_HEAD" nil)
        ("HTML_HEAD_EXTRA" nil)
        ("HTML_LINK_HOME" nil)
        ("HTML_LINK_UP" nil)
        ("HTML_MATHJAX" nil)
        ("INFOJS_OPT" nil)
        ("KEYWORDS" nil)
        ("LANGUAGE" nil)
        ("LATEX_CLASS" nil)
        ("LATEX_CLASS_OPTIONS" nil)
        ("LATEX_HEADER" nil)
        ("LATEX_HEADER_EXTRA" nil)
        ("NAME" t)
        ("OPTIONS" t)
        ("POSTID" nil)
        ("RESULTS" t)
        ("SELECT_TAGS" nil)
        ("STARTUP" nil)
        ("TITLE" nil))
    (add-to-list
     'ispell-skip-region-alist
     (let ((special (concat "#[+]" (car it) ":")))
       (if (cadr it)
           (cons special "$")
         (list special))))))
;; orgmode:gcr:vela:3745D1E1-33D3-4D2F-B527-BBBCA619D455 ends here

;; [[file:help.org::orgmode:gcr:vela:E2D66077-10AC-46D1-AAAA-D0C81BED451B][orgmode:gcr:vela:E2D66077-10AC-46D1-AAAA-D0C81BED451B]]
(help/on-osx
 (defun help/ido-find-file ()
   "Find file as root if necessary.

Attribution: SRC `http://emacsredux.com/blog/2013/04/21/edit-files-as-root/'"
   (unless (and buffer-file-name
              (file-writable-p buffer-file-name))
     (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

 (advice-add #'ido-find-file :after #'help/ido-find-file))
;; orgmode:gcr:vela:E2D66077-10AC-46D1-AAAA-D0C81BED451B ends here

;; [[file:help.org::orgmode:gcr:vela:33473D12-CA77-453B-8115-FE060E033ED4][orgmode:gcr:vela:33473D12-CA77-453B-8115-FE060E033ED4]]
(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  :diminish flycheck-mode)
;; orgmode:gcr:vela:33473D12-CA77-453B-8115-FE060E033ED4 ends here

;; [[file:help.org::orgmode:gcr:vela:6A9C209F-8228-4D10-B23D-6A8376FD7FB3][orgmode:gcr:vela:6A9C209F-8228-4D10-B23D-6A8376FD7FB3]]
(setq-default indent-tabs-mode nil)
;; orgmode:gcr:vela:6A9C209F-8228-4D10-B23D-6A8376FD7FB3 ends here

;; [[file:help.org::orgmode:gcr:vela:FD5B749C-AC7A-40A7-AB88-851F2190E906][orgmode:gcr:vela:FD5B749C-AC7A-40A7-AB88-851F2190E906]]
(defun help/untabify-if-not-indent-tabs-mode ()
  "Untabify if `indent-tabs-mode' is false.

Attribution: URL `http://www.emacswiki.org/emacs/UntabifyUponSave'"
  (interactive)
  (when (not indent-tabs-mode)
    (untabify (point-min) (point-max))))

(add-hook 'before-save-hook #'help/untabify-if-not-indent-tabs-mode)
;; orgmode:gcr:vela:FD5B749C-AC7A-40A7-AB88-851F2190E906 ends here

;; [[file:help.org::orgmode:gcr:vela:1AB838F7-4C9B-4C35-97B5-35390871A22D][orgmode:gcr:vela:1AB838F7-4C9B-4C35-97B5-35390871A22D]]
(setq-default tab-width 2)
;; orgmode:gcr:vela:1AB838F7-4C9B-4C35-97B5-35390871A22D ends here

;; [[file:help.org::orgmode:gcr:vela:14B95634-E6E8-46A0-9698-2C9B847DD404][orgmode:gcr:vela:14B95634-E6E8-46A0-9698-2C9B847DD404]]
(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "s-e") #'help/safb-help/magit-status))
;; orgmode:gcr:vela:14B95634-E6E8-46A0-9698-2C9B847DD404 ends here

;; [[file:help.org::orgmode:gcr:vela:27D5DC40-DD13-4E08-9EF9-D962DD08A7D5][orgmode:gcr:vela:27D5DC40-DD13-4E08-9EF9-D962DD08A7D5]]
(eval-after-load "log-edit"
  '(remove-hook 'log-edit-hook 'log-edit-insert-message-template))
;; orgmode:gcr:vela:27D5DC40-DD13-4E08-9EF9-D962DD08A7D5 ends here

;; [[file:help.org::orgmode:gcr:vela:6FD11818-DB10-4AF4-A714-C32C04291AF2][orgmode:gcr:vela:6FD11818-DB10-4AF4-A714-C32C04291AF2]]
(add-to-list 'auto-mode-alist '(".gitignore$" . text-mode))
;; orgmode:gcr:vela:6FD11818-DB10-4AF4-A714-C32C04291AF2 ends here

;; [[file:help.org::orgmode:gcr:vela:C6FF37A6-EC87-4918-BFC8-927157F890BF][orgmode:gcr:vela:C6FF37A6-EC87-4918-BFC8-927157F890BF]]
(defvar yt-iframe-format
  ;; You may want to change your width and height.
  (concat "<iframe width=\"440\""
          " height=\"335\""
          " src=\"https://www.youtube.com/embed/%s\""
          " frameborder=\"0\""
          " allowfullscreen>%s</iframe>"))

(org-add-link-type
 "yt"
 (lambda (handle)
   (browse-url
    (concat "https://www.youtube.com/embed/"
            handle)))
 (lambda (path desc backend)
   (cl-case backend
     (html (format yt-iframe-format
                   path (or desc "")))
     (latex (format "\href{%s}{%s}"
                    path (or desc "video"))))))
;; orgmode:gcr:vela:C6FF37A6-EC87-4918-BFC8-927157F890BF ends here

;; [[file:help.org::orgmode:gcr:vela:3327B4FF-82CF-42E7-AEF8-DCC968B97BDC][orgmode:gcr:vela:3327B4FF-82CF-42E7-AEF8-DCC968B97BDC]]
(use-package whitespace
  :ensure t
  :config
  (setq whitespace-style '(trailing lines tab-mark))
  (setq whitespace-line-column help/column-width)
  (global-whitespace-mode t)
  :diminish whitespace-mode global-whitespace-mode)
;; orgmode:gcr:vela:3327B4FF-82CF-42E7-AEF8-DCC968B97BDC ends here

;; [[file:help.org::orgmode:gcr:vela:EDD8ABBB-B76A-4B95-9367-211A765348CD][orgmode:gcr:vela:EDD8ABBB-B76A-4B95-9367-211A765348CD]]
(diminish 'visual-line-mode)
;; orgmode:gcr:vela:EDD8ABBB-B76A-4B95-9367-211A765348CD ends here

;; [[file:help.org::orgmode:gcr:vela:562D0238-DF23-44EB-9512-62EA99D6B6C1][orgmode:gcr:vela:562D0238-DF23-44EB-9512-62EA99D6B6C1]]
(setq-default comment-start "> ")
;; orgmode:gcr:vela:562D0238-DF23-44EB-9512-62EA99D6B6C1 ends here

;; [[file:help.org::orgmode:gcr:vela:B56D8E08-DF7C-4EBB-922E-EA215BD66C0D][orgmode:gcr:vela:B56D8E08-DF7C-4EBB-922E-EA215BD66C0D]]
(setq help/hack-modes '(makefile-mode-hook ruby-mode-hook sh-mode-hook plantuml-mode-hook tex-mode-hook R-mode-hook SAS-mode-hook graphviz-dot-mode-hook c-mode-common-hook php-mode-hook scad-mode-hook web-mode-hook))
;; orgmode:gcr:vela:B56D8E08-DF7C-4EBB-922E-EA215BD66C0D ends here

;; [[file:help.org::orgmode:gcr:vela:963C787F-BC23-4A6C-9637-3922541B26E2][orgmode:gcr:vela:963C787F-BC23-4A6C-9637-3922541B26E2]]
(setq help/hack-lisp-modes
      '(emacs-lisp-mode-hook
        ielm-mode-hook
        lisp-interaction-mode-hook
        scheme-mode-hook))
(setq help/hack-modes (append help/hack-modes help/hack-lisp-modes))
;; orgmode:gcr:vela:963C787F-BC23-4A6C-9637-3922541B26E2 ends here

;; [[file:help.org::orgmode:gcr:vela:9585BEED-D8EE-4B47-94FA-7E0C604B5804][orgmode:gcr:vela:9585BEED-D8EE-4B47-94FA-7E0C604B5804]]
(use-package aggressive-indent
  :ensure t
  :config)
;; orgmode:gcr:vela:9585BEED-D8EE-4B47-94FA-7E0C604B5804 ends here

;; [[file:help.org::orgmode:gcr:vela:2B027700-7A37-4C26-BA3C-AAD0E6549F9F][orgmode:gcr:vela:2B027700-7A37-4C26-BA3C-AAD0E6549F9F]]
(use-package smartparens-config
  :ensure smartparens
  :config
  (setq sp-show-pair-from-inside nil)
  :diminish smartparens-mode)
;; orgmode:gcr:vela:2B027700-7A37-4C26-BA3C-AAD0E6549F9F ends here

;; [[file:help.org::orgmode:gcr:vela:A0515707-4727-4A01-82E3-01A41CAA841F][orgmode:gcr:vela:A0515707-4727-4A01-82E3-01A41CAA841F]]
(defun help/hack-prog*-mode-hook-fn ()
  (interactive)
  (help/text-prog*-setup)
  (smartparens-strict-mode)
  (aggressive-indent-mode)
  (hs-minor-mode)
  (help/not-on-gui (local-set-key (kbd "RET") #'newline-and-indent))
  (help/on-gui (local-set-key (kbd "<return>") #'newline-and-indent)))
;; orgmode:gcr:vela:A0515707-4727-4A01-82E3-01A41CAA841F ends here

;; [[file:help.org::orgmode:gcr:vela:EBACFD45-C2FF-47B3-B991-28591C112F28][orgmode:gcr:vela:EBACFD45-C2FF-47B3-B991-28591C112F28]]
(let ()
  (--each help/hack-modes
    (add-hook it #'help/hack-prog*-mode-hook-fn)))

(let ()
  (--each help/hack-lisp-modes
    (add-hook it #'help/emacs-lisp-mode-hook-fn)))

(add-hook 'ielm-mode-hook #'help/ielm-mode-hook-fn)
;; orgmode:gcr:vela:EBACFD45-C2FF-47B3-B991-28591C112F28 ends here

;; [[file:help.org::orgmode:gcr:vela:BDF6F6E5-D219-4C49-BB3F-D414A9741B11][orgmode:gcr:vela:BDF6F6E5-D219-4C49-BB3F-D414A9741B11]]
(setq initial-scratch-message nil)
(use-package lexbind-mode)

(defun help/elisp-eval-buffer ()
  "Intelligently evaluate an Elisp buffer."
  (interactive)
  (help/save-all-file-buffers)
  (eval-buffer))

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
  (eldoc-mode)
  (diminish 'eldoc-mode))

(setq ielm-noisy nil)

(setq ielm-prompt "𝔼LISP> ")

(setq ielm-dynamic-return nil)

(setq ielm-dynamic-multiline-inputs nil)

(defun help/ielm-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (help/ielm-auto-complete))
;; orgmode:gcr:vela:BDF6F6E5-D219-4C49-BB3F-D414A9741B11 ends here

;; [[file:help.org::orgmode:gcr:vela:7CEA216B-6A18-47F6-B1DE-327CFA8A591A][orgmode:gcr:vela:7CEA216B-6A18-47F6-B1DE-327CFA8A591A]]
(define-key emacs-lisp-mode-map (kbd "s-p") #'describe-thing-in-popup)
;; orgmode:gcr:vela:7CEA216B-6A18-47F6-B1DE-327CFA8A591A ends here

;; [[file:help.org::orgmode:gcr:vela:AB26182E-A169-4FB9-BA68-E9F7231069C1][orgmode:gcr:vela:AB26182E-A169-4FB9-BA68-E9F7231069C1]]
(setq org-babel-min-lines-for-block-output 0)
;; orgmode:gcr:vela:AB26182E-A169-4FB9-BA68-E9F7231069C1 ends here

;; [[file:help.org::orgmode:gcr:vela:8F3861FD-B2F6-4618-8E70-026316855E67][orgmode:gcr:vela:8F3861FD-B2F6-4618-8E70-026316855E67]]
(setq org-edit-src-auto-save-idle-delay 0)
(setq org-edit-src-turn-on-auto-save nil)
;; orgmode:gcr:vela:8F3861FD-B2F6-4618-8E70-026316855E67 ends here

;; [[file:help.org::orgmode:gcr:vela:11B7C941-8AA4-471A-B4A4-BCEBFE850206][orgmode:gcr:vela:11B7C941-8AA4-471A-B4A4-BCEBFE850206]]
(defun help/org-babel-after-execute-hook ()
  "HELP settings for the `org-babel-after-execute-hook'.

This does not interfere with exports.

Attribution: URL `https://lists.gnu.org/archive/html/emacs-orgmode/2015-01/msg00534.html'"
  (interactive)
  (org-redisplay-inline-images))

(add-hook 'org-babel-after-execute-hook #'help/org-babel-after-execute-hook)
;; orgmode:gcr:vela:11B7C941-8AA4-471A-B4A4-BCEBFE850206 ends here

;; [[file:help.org::orgmode:gcr:vela:9947D738-D140-4CBF-BB6D-21E2FF58BD24][orgmode:gcr:vela:9947D738-D140-4CBF-BB6D-21E2FF58BD24]]
(setq org-confirm-babel-evaluate nil)
;; orgmode:gcr:vela:9947D738-D140-4CBF-BB6D-21E2FF58BD24 ends here

;; [[file:help.org::orgmode:gcr:vela:6CE707AD-A340-4B63-B747-8692E0DFF41C][orgmode:gcr:vela:6CE707AD-A340-4B63-B747-8692E0DFF41C]]
(setq org-src-tab-acts-natively nil)
;; orgmode:gcr:vela:6CE707AD-A340-4B63-B747-8692E0DFF41C ends here

;; [[file:help.org::orgmode:gcr:vela:BB8A752F-713B-4450-98DC-CE04957577EF][orgmode:gcr:vela:BB8A752F-713B-4450-98DC-CE04957577EF]]
(setq org-todo-keywords
      '((sequence
         "TODO"
         "IN-PROGRESS"
         "HELD-BLOCKED"
         "HELD-FROZEN"
         "HELD-UNTIL"
         "REVIEW"
         "DONE"
         )))
;; orgmode:gcr:vela:BB8A752F-713B-4450-98DC-CE04957577EF ends here

;; [[file:help.org::orgmode:gcr:vela:548D2D49-98E0-456B-91BC-37D0C0BC3557][orgmode:gcr:vela:548D2D49-98E0-456B-91BC-37D0C0BC3557]]
(setq org-startup-with-inline-images (display-graphic-p))
;; orgmode:gcr:vela:548D2D49-98E0-456B-91BC-37D0C0BC3557 ends here

;; [[file:help.org::orgmode:gcr:vela:CE97A1D8-07E2-4445-80B9-3C91ACFE7FB8][orgmode:gcr:vela:CE97A1D8-07E2-4445-80B9-3C91ACFE7FB8]]
(setq org-completion-use-ido t)
(setq org-outline-path-complete-in-steps nil)
(setq org-completion-use-iswitchb nil)
;; orgmode:gcr:vela:CE97A1D8-07E2-4445-80B9-3C91ACFE7FB8 ends here

;; [[file:help.org::orgmode:gcr:vela:232DFCF9-BFC7-4022-8B93-09F323CB1BA8][orgmode:gcr:vela:232DFCF9-BFC7-4022-8B93-09F323CB1BA8]]
(setq org-use-speed-commands t)
;; orgmode:gcr:vela:232DFCF9-BFC7-4022-8B93-09F323CB1BA8 ends here

;; [[file:help.org::orgmode:gcr:vela:F5ABA576-FB0D-4FCE-A000-AA5E38B7EB3D][orgmode:gcr:vela:F5ABA576-FB0D-4FCE-A000-AA5E38B7EB3D]]
(setq org-confirm-shell-link-function 'y-or-n-p)
;; orgmode:gcr:vela:F5ABA576-FB0D-4FCE-A000-AA5E38B7EB3D ends here

;; [[file:help.org::orgmode:gcr:vela:13BBCE85-2D3B-4903-8098-EB565B5CB708][orgmode:gcr:vela:13BBCE85-2D3B-4903-8098-EB565B5CB708]]
(setq org-confirm-elisp-link-function 'y-or-n-p)
;; orgmode:gcr:vela:13BBCE85-2D3B-4903-8098-EB565B5CB708 ends here

;; [[file:help.org::orgmode:gcr:vela:4AE6A326-034C-475A-BC95-877D528A94D6][orgmode:gcr:vela:4AE6A326-034C-475A-BC95-877D528A94D6]]
(setq org-enforce-todo-dependencies t)
;; orgmode:gcr:vela:4AE6A326-034C-475A-BC95-877D528A94D6 ends here

;; [[file:help.org::orgmode:gcr:vela:BA1565BE-2BF1-4121-96BD-A3F7462676CC][orgmode:gcr:vela:BA1565BE-2BF1-4121-96BD-A3F7462676CC]]
(when (display-graphic-p)
  (use-package org-mouse))
;; orgmode:gcr:vela:BA1565BE-2BF1-4121-96BD-A3F7462676CC ends here

;; [[file:help.org::42f9ce2d-591D-4BDD-998E-C85E0B7B5DF5][42f9ce2d-591D-4BDD-998E-C85E0B7B5DF5]]
(setq org-ellipsis "↷")
;; 42f9ce2d-591D-4BDD-998E-C85E0B7B5DF5 ends here

;; [[file:help.org::orgmode:gcr:vela:A0FB5129-6EF9-4D5F-A35A-CB5505C8FD6F][orgmode:gcr:vela:A0FB5129-6EF9-4D5F-A35A-CB5505C8FD6F]]
(setq org-hide-leading-stars t)
;; orgmode:gcr:vela:A0FB5129-6EF9-4D5F-A35A-CB5505C8FD6F ends here

;; [[file:help.org::orgmode:gcr:vela:6801CC24-7220-45DF-BF00-0E3649F2AB4C][orgmode:gcr:vela:6801CC24-7220-45DF-BF00-0E3649F2AB4C]]
(setq org-adapt-indentation nil)
;; orgmode:gcr:vela:6801CC24-7220-45DF-BF00-0E3649F2AB4C ends here

;; [[file:help.org::orgmode:gcr:vela:4FDB1A19-4906-48EE-B7CB-26B3E9301964][orgmode:gcr:vela:4FDB1A19-4906-48EE-B7CB-26B3E9301964]]
(setq org-fontify-emphasized-text t)
;; orgmode:gcr:vela:4FDB1A19-4906-48EE-B7CB-26B3E9301964 ends here

;; [[file:help.org::orgmode:gcr:vela:D2453829-D976-4FE0-B517-7CCD8C3C1A2C][orgmode:gcr:vela:D2453829-D976-4FE0-B517-7CCD8C3C1A2C]]
(setq org-pretty-entities t)
;; orgmode:gcr:vela:D2453829-D976-4FE0-B517-7CCD8C3C1A2C ends here

;; [[file:help.org::orgmode:gcr:vela:93A7C08F-762D-43E9-8E56-4F875BF47464][orgmode:gcr:vela:93A7C08F-762D-43E9-8E56-4F875BF47464]]
(setq org-use-sub-superscripts '{})
;; orgmode:gcr:vela:93A7C08F-762D-43E9-8E56-4F875BF47464 ends here

;; [[file:help.org::orgmode:gcr:vela:B5A535CA-E024-4592-A787-734032E48860][orgmode:gcr:vela:B5A535CA-E024-4592-A787-734032E48860]]
(setq org-highlight-latex-and-related '(latex script entities))
;; orgmode:gcr:vela:B5A535CA-E024-4592-A787-734032E48860 ends here

;; [[file:help.org::orgmode:gcr:vela:834535C5-DCEA-47D3-B251-76DADE4CE897][orgmode:gcr:vela:834535C5-DCEA-47D3-B251-76DADE4CE897]]
(setq org-footnote-define-inline t)
(setq org-footnote-auto-label 'random)
(setq org-footnote-auto-adjust nil)
(setq org-footnote-section nil)
;; orgmode:gcr:vela:834535C5-DCEA-47D3-B251-76DADE4CE897 ends here

;; [[file:help.org::orgmode:gcr:vela:939BFF91-F7AC-446A-B797-6B294D364082][orgmode:gcr:vela:939BFF91-F7AC-446A-B797-6B294D364082]]
(setq org-catch-invisible-edits 'error)
;; orgmode:gcr:vela:939BFF91-F7AC-446A-B797-6B294D364082 ends here

;; [[file:help.org::orgmode:gcr:vela:D8426EE3-702E-4008-B2F5-0A839E0B9C27][orgmode:gcr:vela:D8426EE3-702E-4008-B2F5-0A839E0B9C27]]
(setq org-loop-over-headlines-in-active-region t)
;; orgmode:gcr:vela:D8426EE3-702E-4008-B2F5-0A839E0B9C27 ends here

;; [[file:help.org::orgmode:gcr:vela:EB229153-0540-4EFE-BB44-D44EE0D0E9B8][orgmode:gcr:vela:EB229153-0540-4EFE-BB44-D44EE0D0E9B8]]
(setq org-startup-folded "nofold")
;; orgmode:gcr:vela:EB229153-0540-4EFE-BB44-D44EE0D0E9B8 ends here

;; [[file:help.org::orgmode:gcr:vela:862CCD19-46D8-47E9-85CF-43F0EE9E8404][orgmode:gcr:vela:862CCD19-46D8-47E9-85CF-43F0EE9E8404]]
(setq org-image-actual-width t)
;; orgmode:gcr:vela:862CCD19-46D8-47E9-85CF-43F0EE9E8404 ends here

;; [[file:help.org::orgmode:gcr:vela:4F8C7477-3CE5-4C83-9C00-FCBAAECEB5E8][orgmode:gcr:vela:4F8C7477-3CE5-4C83-9C00-FCBAAECEB5E8]]
(setq org-hide-emphasis-markers t)
;; orgmode:gcr:vela:4F8C7477-3CE5-4C83-9C00-FCBAAECEB5E8 ends here

;; [[file:help.org::orgmode:gcr:vela:78196A51-0117-4C66-8616-1508D81568A7][orgmode:gcr:vela:78196A51-0117-4C66-8616-1508D81568A7]]
(setq org-startup-align-all-tables t)
;; orgmode:gcr:vela:78196A51-0117-4C66-8616-1508D81568A7 ends here

;; [[file:help.org::orgmode:gcr:vela:0102E34E-3098-48E9-AAB9-F5433AE37D66][orgmode:gcr:vela:0102E34E-3098-48E9-AAB9-F5433AE37D66]]
(setq org-html-checkbox-type 'unicode)
;; orgmode:gcr:vela:0102E34E-3098-48E9-AAB9-F5433AE37D66 ends here

;; [[file:help.org::orgmode:gcr:vela:A1636BE6-8477-4085-BB14-E0870A19A440][orgmode:gcr:vela:A1636BE6-8477-4085-BB14-E0870A19A440]]
(setq org-src-fontify-natively nil)
;; orgmode:gcr:vela:A1636BE6-8477-4085-BB14-E0870A19A440 ends here

;; [[file:help.org::orgmode:gcr:vela:59E79DBC-FDA4-4F1A-9306-DB9204233A7C][orgmode:gcr:vela:59E79DBC-FDA4-4F1A-9306-DB9204233A7C]]
(setq org-src-strip-leading-and-trailing-blank-lines t)
;; orgmode:gcr:vela:59E79DBC-FDA4-4F1A-9306-DB9204233A7C ends here

;; [[file:help.org::orgmode:gcr:vela:767547FC-FCB3-433C-AC2E-4240D040F5F8][orgmode:gcr:vela:767547FC-FCB3-433C-AC2E-4240D040F5F8]]
(setq org-src-window-setup 'current-window)
;; orgmode:gcr:vela:767547FC-FCB3-433C-AC2E-4240D040F5F8 ends here

;; [[file:help.org::orgmode:gcr:vela:C0FFD815-3AB7-4101-B1E8-D73A10026CB4][orgmode:gcr:vela:C0FFD815-3AB7-4101-B1E8-D73A10026CB4]]
(setq org-babel-no-eval-on-ctrl-c-ctrl-c t)
;; orgmode:gcr:vela:C0FFD815-3AB7-4101-B1E8-D73A10026CB4 ends here

;; [[file:help.org::orgmode:gcr:vela:C1F1C610-AC69-40E8-AD2F-EB6C849B40CB][orgmode:gcr:vela:C1F1C610-AC69-40E8-AD2F-EB6C849B40CB]]
(defun help/vc-next-action ()
  "If in org source block, exit it before `vc-next-action'."
  (interactive)
  (when (condition-case nil
            (org-src-edit-buffer-p)
          (error nil))
    (org-edit-src-exit))
  (vc-next-action nil))
(defun help/magit-status ()
  "If in org source block, exit it before `magit-status'."
  (interactive)
  (when (condition-case nil
            (org-src-edit-buffer-p)
          (error nil))
    (org-edit-src-exit))
  (magit-status))
;; orgmode:gcr:vela:C1F1C610-AC69-40E8-AD2F-EB6C849B40CB ends here

;; [[file:help.org::orgmode:gcr:vela:727834EF-DF94-4190-98AC-B791FCCDE7E3][orgmode:gcr:vela:727834EF-DF94-4190-98AC-B791FCCDE7E3]]
(setq org-edit-src-code nil)
;; orgmode:gcr:vela:727834EF-DF94-4190-98AC-B791FCCDE7E3 ends here

;; [[file:help.org::orgmode:gcr:vela:593A037F-9615-47CA-9C13-5BC88074F24D][orgmode:gcr:vela:593A037F-9615-47CA-9C13-5BC88074F24D]]
(use-package wrap-region
  :ensure t
  :config
  :diminish wrap-region-mode
  :config
  (add-hook 'org-mode-hook 'wrap-region-mode))
;; orgmode:gcr:vela:593A037F-9615-47CA-9C13-5BC88074F24D ends here

;; [[file:help.org::orgmode:gcr:vela:8055DBFC-C839-4EED-BA59-E56D2E05F027][orgmode:gcr:vela:8055DBFC-C839-4EED-BA59-E56D2E05F027]]
(wrap-region-add-wrapper "*" "*" nil 'org-mode)
;; orgmode:gcr:vela:8055DBFC-C839-4EED-BA59-E56D2E05F027 ends here

;; [[file:help.org::orgmode:gcr:vela:15774582-183E-4625-9BDB-E36D3A7B2AFE][orgmode:gcr:vela:15774582-183E-4625-9BDB-E36D3A7B2AFE]]
(wrap-region-add-wrapper "/" "/" nil 'org-mode)
;; orgmode:gcr:vela:15774582-183E-4625-9BDB-E36D3A7B2AFE ends here

;; [[file:help.org::orgmode:gcr:vela:F3B847CA-C89F-4566-98C3-240514B37447][orgmode:gcr:vela:F3B847CA-C89F-4566-98C3-240514B37447]]
(wrap-region-add-wrapper "=" "=" nil 'org-mode)
;; orgmode:gcr:vela:F3B847CA-C89F-4566-98C3-240514B37447 ends here

;; [[file:help.org::orgmode:gcr:vela:0E2ECE84-87AB-4B18-9929-6E752C88118C][orgmode:gcr:vela:0E2ECE84-87AB-4B18-9929-6E752C88118C]]
(wrap-region-add-wrapper "~" "~" nil 'org-mode)
;; orgmode:gcr:vela:0E2ECE84-87AB-4B18-9929-6E752C88118C ends here

;; [[file:help.org::orgmode:gcr:vela:0EBE9F71-59AC-4D54-B792-AFC3F78985D8][orgmode:gcr:vela:0EBE9F71-59AC-4D54-B792-AFC3F78985D8]]
(wrap-region-add-wrapper "+" "+" nil 'org-mode)
;; orgmode:gcr:vela:0EBE9F71-59AC-4D54-B792-AFC3F78985D8 ends here

;; [[file:help.org::orgmode:gcr:vela:6C80DBCA-AE28-4FE3-91E3-825E642735BA][orgmode:gcr:vela:6C80DBCA-AE28-4FE3-91E3-825E642735BA]]
(setq org-hide-macro-markers t)
;; orgmode:gcr:vela:6C80DBCA-AE28-4FE3-91E3-825E642735BA ends here

;; [[file:help.org::orgmode:gcr:vela:234B7922-3C6B-4F25-A2F6-E1073EB7FC83][orgmode:gcr:vela:234B7922-3C6B-4F25-A2F6-E1073EB7FC83]]
(setq org-return-follows-link t)
;; orgmode:gcr:vela:234B7922-3C6B-4F25-A2F6-E1073EB7FC83 ends here

;; [[file:help.org::orgmode:gcr:vela:8C7E90AC-C7EB-4A43-9377-C3C85CE51849][orgmode:gcr:vela:8C7E90AC-C7EB-4A43-9377-C3C85CE51849]]
(help/not-on-gui
 (define-key org-mode-map (kbd "RET") #'org-return-indent)
 (define-key org-mode-map (kbd "C-M-RET") #'electric-indent-just-newline))
(help/on-gui
 (define-key org-mode-map (kbd "<return>") #'org-return-indent)
 (define-key org-mode-map (kbd "C-M-<return>") #'electric-indent-just-newline))
;; orgmode:gcr:vela:8C7E90AC-C7EB-4A43-9377-C3C85CE51849 ends here

;; [[file:help.org::orgmode:gcr:vela:E65CF1F6-F56C-4A1A-BB45-5E530FA93C04][orgmode:gcr:vela:E65CF1F6-F56C-4A1A-BB45-5E530FA93C04]]
(define-key org-mode-map (kbd "s-6") #'org-babel-load-in-session)
(define-key org-mode-map (kbd "s-7") #'org-babel-switch-to-session)
(define-key org-mode-map (kbd "s-8") #'org-babel-switch-to-session-with-code)
(define-key org-mode-map (kbd "s-9") #'org-todo)
;; orgmode:gcr:vela:E65CF1F6-F56C-4A1A-BB45-5E530FA93C04 ends here

;; [[file:help.org::orgmode:gcr:vela:1BE349AF-620C-4AA4-8250-E1A20FEEFAE6][orgmode:gcr:vela:1BE349AF-620C-4AA4-8250-E1A20FEEFAE6]]
(key-chord-define org-mode-map "U*" #'org-metaup)
(key-chord-define org-mode-map "I(" #'org-metadown)
(key-chord-define org-mode-map "u8" #'org-metaleft)
(key-chord-define org-mode-map "i9" #'org-metaright)
;; orgmode:gcr:vela:1BE349AF-620C-4AA4-8250-E1A20FEEFAE6 ends here

;; [[file:help.org::orgmode:gcr:vela:9CB5CC76-4C1D-40CB-829C-A5AC98FE23FD][orgmode:gcr:vela:9CB5CC76-4C1D-40CB-829C-A5AC98FE23FD]]
(define-key org-mode-map (kbd "s-y") #'help/safb-org-babel-execute-buffer)
(define-key org-mode-map (kbd "s-u") #'help/safb-org-babel-execute-subtree)
(define-key org-mode-map (kbd "s-U") #'org-mark-ring-goto)
(define-key org-mode-map (kbd "s-i") #'org-babel-execute-src-block)
(define-key org-mode-map (kbd "s-o") #'org-babel-remove-result)
(define-key org-mode-map (kbd "s-p") #'org-babel-execute-maybe)
(define-key org-mode-map (kbd "s-[") #'org-babel-remove-inline-result)
;; orgmode:gcr:vela:9CB5CC76-4C1D-40CB-829C-A5AC98FE23FD ends here

;; [[file:help.org::orgmode:gcr:vela:933B1A3A-A77A-4616-B9D8-9DACED018CC2][orgmode:gcr:vela:933B1A3A-A77A-4616-B9D8-9DACED018CC2]]
(define-key org-mode-map (kbd "s-h") #'help/safb-org-babel-tangle)
(define-key org-mode-map (kbd "s-j") #'org-babel-next-src-block)
(define-key org-mode-map (kbd "s-k") #'org-babel-previous-src-block)
(define-key org-mode-map (kbd "s-l") #'help/safb-org-edit-src-code)
(define-key org-mode-map (kbd "s-;") #'help/safb-help/org-babel-demarcate-block)
;; orgmode:gcr:vela:933B1A3A-A77A-4616-B9D8-9DACED018CC2 ends here

;; [[file:help.org::orgmode:gcr:vela:2F8DDC77-27C4-4E81-8913-28243C4A44B6][orgmode:gcr:vela:2F8DDC77-27C4-4E81-8913-28243C4A44B6]]
(define-key org-mode-map (kbd "s-n") #'org-babel-view-src-block-info)
(define-key org-mode-map (kbd "s-m") #'org-babel-expand-src-block)
(define-key org-mode-map (kbd "s-,") #'org-babel-open-src-block-result)
(define-key org-mode-map (kbd "s-.") #'org-time-stamp)
;; orgmode:gcr:vela:2F8DDC77-27C4-4E81-8913-28243C4A44B6 ends here

;; [[file:help.org::orgmode:gcr:vela:5186DD50-F693-4297-A164-192BEA685C6D][orgmode:gcr:vela:5186DD50-F693-4297-A164-192BEA685C6D]]
(defhydra help/hydra/right-side/org-mode (:color blue
                                                 :hint nil)
  "
_1_ SHA-1-hash _2_ +imgs _3_ -imgs _4_ id-create _5_ toggle-macro
_q_ ←/w-code _w_ tbletfld _e_ g2nmrst _r_ g2nms-b _t_ g2s-b/hd _y_ org-archive-subtree _u_ goto
_a_ inshdrgs _s_ oblobigst            _h_ dksieb _k_ ob-check-src-blk
_c_ org-fill-para _b_ swtch2sessn _n_ n2sbtre"
  ;; Row 5
  ("1" org-babel-sha1-hash)
  ("2" org-display-inline-images)
  ("3" org-remove-inline-images)
  ("4" org-id-get-create)
  ("5" help/org-toggle-macro-markers)
  ;; Row 4
  ("q" org-babel-switch-to-session-with-code)
  ("w" org-table-edit-field)
  ("e" org-babel-goto-named-result)
  ("r" org-babel-goto-named-src-block)
  ("t" org-babel-goto-src-block-head)
  ("y" org-archive-subtree)
  ("u" org-goto)
  ;; Row 3
  ("a" org-babel-insert-header-arg)
  ("s" org-babel-lob-ingest)
  ("h" org-babel-do-key-sequence-in-edit-buffer)
  ("k" org-babel-check-src-block)
  ;; Row 2
  ("c" org-fill-paragraph)
  ("b" org-babel-switch-to-session)
  ("n" org-narrow-to-subtree))
(key-chord-define-global "hh" #'help/hydra/right-side/org-mode/body)
;; orgmode:gcr:vela:5186DD50-F693-4297-A164-192BEA685C6D ends here

;; [[file:help.org::orgmode:gcr:vela:BFF7A955-3107-4ED3-9022-CAB792E779EC][orgmode:gcr:vela:BFF7A955-3107-4ED3-9022-CAB792E779EC]]
(define-key org-mode-map (kbd "C-c C-e") #'help/safb-org-export-dispatch)
;; orgmode:gcr:vela:BFF7A955-3107-4ED3-9022-CAB792E779EC ends here

;; [[file:help.org::orgmode:gcr:vela:B489F70A-F1B0-41A9-BB98-A5861A867547][orgmode:gcr:vela:B489F70A-F1B0-41A9-BB98-A5861A867547]]
(define-key org-src-mode-map (kbd "s-l") #'org-edit-src-exit)
;; orgmode:gcr:vela:B489F70A-F1B0-41A9-BB98-A5861A867547 ends here

;; [[file:help.org::orgmode:gcr:vela:46FE856B-D5C6-45B0-95D5-891211AC295C][orgmode:gcr:vela:46FE856B-D5C6-45B0-95D5-891211AC295C]]
(key-chord-define org-mode-map "<<" (lambda () (interactive) (insert "«")))
(key-chord-define org-mode-map ">>" (lambda () (interactive) (insert "»")))
;; orgmode:gcr:vela:46FE856B-D5C6-45B0-95D5-891211AC295C ends here

;; [[file:help.org::orgmode:gcr:vela:A71F1A03-34C0-4F7F-99BE-3E1F1B469AB0][orgmode:gcr:vela:A71F1A03-34C0-4F7F-99BE-3E1F1B469AB0]]
(defun help/describe-char ()
  "Evaluate `describe-char' and then `other-window'."
  (interactive)
  (call-interactively #'describe-char)
  (call-interactively #'other-window))
(global-set-key (kbd "H-d") #'help/describe-char)
;; orgmode:gcr:vela:A71F1A03-34C0-4F7F-99BE-3E1F1B469AB0 ends here

;; [[file:help.org::orgmode:gcr:vela:1ADEB461-7766-437F-80B3-677D3DF6AF1E][orgmode:gcr:vela:1ADEB461-7766-437F-80B3-677D3DF6AF1E]]
(use-package unicode-troll-stopper
  :ensure t)
;; orgmode:gcr:vela:1ADEB461-7766-437F-80B3-677D3DF6AF1E ends here

;; [[file:help.org::orgmode:gcr:vela:7458C43B-A605-4D97-B435-A71E2883C566][orgmode:gcr:vela:7458C43B-A605-4D97-B435-A71E2883C566]]
(use-package unicode-escape
  :ensure t
  :config
  (global-set-key (kbd "H-e") #'unicode-escape-region )
  (global-set-key (kbd "H-u") #'unicode-unescape-region))
;; orgmode:gcr:vela:7458C43B-A605-4D97-B435-A71E2883C566 ends here

;; [[file:help.org::orgmode:gcr:vela:451FC9F3-2517-4979-A9EC-DE34086E4198][orgmode:gcr:vela:451FC9F3-2517-4979-A9EC-DE34086E4198]]
(defun warn-if-utf-8-bom ()
  "Warn if UTF-8 BOM bytes are present.

Attribution: URL `https://www.reddit.com/r/emacs/comments/4tw0iz/can_i_have_a_warning_if_i_open_a_file_with_utf8/d5kszsh'"
  (let ((name (symbol-name buffer-file-coding-system)))
    (when (string-match-p "utf-8-with-signature" name)
      (message "Call the BOM squad! This UTF-8 file has a BOM!"))))

(add-hook 'find-file-hook #'warn-if-utf-8-bom)
;; orgmode:gcr:vela:451FC9F3-2517-4979-A9EC-DE34086E4198 ends here

;; [[file:help.org::orgmode:gcr:vela:C060E54C-9FB2-4E2C-BE67-3188E1BA0F22][orgmode:gcr:vela:C060E54C-9FB2-4E2C-BE67-3188E1BA0F22]]
(use-package dash-at-point
 :ensure t)
;; orgmode:gcr:vela:C060E54C-9FB2-4E2C-BE67-3188E1BA0F22 ends here

;; [[file:help.org::orgmode:gcr:vela:845637D6-CAEF-43FF-AFAB-166EC0E21FC4][orgmode:gcr:vela:845637D6-CAEF-43FF-AFAB-166EC0E21FC4]]
(setq gnu-apl-mode-map-prefix "H-")
(setq gnu-apl-interactive-mode-map-prefix "H-")
(use-package gnu-apl-mode
  :ensure t)
;; orgmode:gcr:vela:845637D6-CAEF-43FF-AFAB-166EC0E21FC4 ends here

;; [[file:help.org::orgmode:gcr:vela:E7AE32C1-42CC-482F-92D2-43DBD703500C][orgmode:gcr:vela:E7AE32C1-42CC-482F-92D2-43DBD703500C]]
(use-package ess
  :ensure t)
;; orgmode:gcr:vela:E7AE32C1-42CC-482F-92D2-43DBD703500C ends here

;; [[file:help.org::orgmode:gcr:vela:DC7E5F11-0C1A-4F9B-B6B1-2133C8B86617][orgmode:gcr:vela:DC7E5F11-0C1A-4F9B-B6B1-2133C8B86617]]
(setq ess-eldoc-show-on-symbol t)
;; orgmode:gcr:vela:DC7E5F11-0C1A-4F9B-B6B1-2133C8B86617 ends here

;; [[file:help.org::orgmode:gcr:vela:7EF0A0EB-FBE6-4411-A0E5-F0B37AF1743D][orgmode:gcr:vela:7EF0A0EB-FBE6-4411-A0E5-F0B37AF1743D]]
(setq ess-describe-at-point-method 'tooltip)
;; orgmode:gcr:vela:7EF0A0EB-FBE6-4411-A0E5-F0B37AF1743D ends here

;; [[file:help.org::orgmode:gcr:vela:2FB01FE3-71DD-4FB6-AEC9-E4499AF5E007][orgmode:gcr:vela:2FB01FE3-71DD-4FB6-AEC9-E4499AF5E007]]
(setq inferior-ess-same-window nil)
(setq inferior-ess-own-frame nil)
;; orgmode:gcr:vela:2FB01FE3-71DD-4FB6-AEC9-E4499AF5E007 ends here

;; [[file:help.org::orgmode:gcr:vela:47202D29-D75E-426E-AD24-7218BB5F2673][orgmode:gcr:vela:47202D29-D75E-426E-AD24-7218BB5F2673]]
(setq ess-help-own-frame nil)
;; orgmode:gcr:vela:47202D29-D75E-426E-AD24-7218BB5F2673 ends here

;; [[file:help.org::orgmode:gcr:vela:FCB70937-540C-4CC9-B0B7-63E0F0626E25][orgmode:gcr:vela:FCB70937-540C-4CC9-B0B7-63E0F0626E25]]
(setq ess-execute-in-process-buffer t)
;; orgmode:gcr:vela:FCB70937-540C-4CC9-B0B7-63E0F0626E25 ends here

;; [[file:help.org::orgmode:gcr:vela:36F5EACF-A2AA-42D2-B7B7-EC5C07B2E1A4][orgmode:gcr:vela:36F5EACF-A2AA-42D2-B7B7-EC5C07B2E1A4]]
(setq ess-switch-to-end-of-proc-buffer t)
;; orgmode:gcr:vela:36F5EACF-A2AA-42D2-B7B7-EC5C07B2E1A4 ends here

;; [[file:help.org::orgmode:gcr:vela:0274002E-BB6F-4131-B6B2-5531D9F630F4][orgmode:gcr:vela:0274002E-BB6F-4131-B6B2-5531D9F630F4]]
(setq ess-tab-complete-in-script t)
(setq ess-first-tab-never-complete 'symbol-or-paren-or-punct)
;; orgmode:gcr:vela:0274002E-BB6F-4131-B6B2-5531D9F630F4 ends here

;; [[file:help.org::orgmode:gcr:vela:043204D6-59AA-4DB4-ABF4-03D2E8D61154][orgmode:gcr:vela:043204D6-59AA-4DB4-ABF4-03D2E8D61154]]
(setq ess-use-ido t)
;; orgmode:gcr:vela:043204D6-59AA-4DB4-ABF4-03D2E8D61154 ends here

;; [[file:help.org::orgmode:gcr:vela:6C6DC638-6869-4534-AA0D-746263D47FD5][orgmode:gcr:vela:6C6DC638-6869-4534-AA0D-746263D47FD5]]
(setq ess-use-eldoc t)
(setq ess-eldoc-show-on-symbol t)
(setq ess-eldoc-abbreviation-style 'normal)
;; orgmode:gcr:vela:6C6DC638-6869-4534-AA0D-746263D47FD5 ends here

;; [[file:help.org::orgmode:gcr:vela:F0740222-26A5-4DA0-9C60-6EC04DCCDDFB][orgmode:gcr:vela:F0740222-26A5-4DA0-9C60-6EC04DCCDDFB]]
(setq ess-keep-dump-files +1)
;; orgmode:gcr:vela:F0740222-26A5-4DA0-9C60-6EC04DCCDDFB ends here

;; [[file:help.org::orgmode:gcr:vela:9FD6F694-08ED-4E08-96FE-28634970388B][orgmode:gcr:vela:9FD6F694-08ED-4E08-96FE-28634970388B]]
(setq ess-delete-dump-files nil)
;; orgmode:gcr:vela:9FD6F694-08ED-4E08-96FE-28634970388B ends here

;; [[file:help.org::orgmode:gcr:vela:252643D9-4FC2-4037-BAF8-5F6043D02C5A][orgmode:gcr:vela:252643D9-4FC2-4037-BAF8-5F6043D02C5A]]
(setq ess-mode-silently-save +1)
;; orgmode:gcr:vela:252643D9-4FC2-4037-BAF8-5F6043D02C5A ends here

;; [[file:help.org::orgmode:gcr:vela:B46D5051-6F7D-4BC9-8A47-DDE14B41C3A5][orgmode:gcr:vela:B46D5051-6F7D-4BC9-8A47-DDE14B41C3A5]]
(setq ess-eval-visibly 'nowait)
;; orgmode:gcr:vela:B46D5051-6F7D-4BC9-8A47-DDE14B41C3A5 ends here

;; [[file:help.org::orgmode:gcr:vela:77E7570C-C08D-42B4-996D-F38C9F91C248][orgmode:gcr:vela:77E7570C-C08D-42B4-996D-F38C9F91C248]]
(setq ess-use-tracebug t)
;; orgmode:gcr:vela:77E7570C-C08D-42B4-996D-F38C9F91C248 ends here

;; [[file:help.org::orgmode:gcr:vela:F21989AE-7351-49A7-9B1F-6926F7298182][orgmode:gcr:vela:F21989AE-7351-49A7-9B1F-6926F7298182]]
(setq ess-tracebug-search-path '())
;; orgmode:gcr:vela:F21989AE-7351-49A7-9B1F-6926F7298182 ends here

;; [[file:help.org::orgmode:gcr:vela:FAFD7683-E1BF-43CF-B862-B90029FBB319][orgmode:gcr:vela:FAFD7683-E1BF-43CF-B862-B90029FBB319]]
(define-key compilation-minor-mode-map [(?n)] #'next-error-no-select)
(define-key compilation-minor-mode-map [(?p)] #'previous-error-no-select)
;; orgmode:gcr:vela:FAFD7683-E1BF-43CF-B862-B90029FBB319 ends here

;; [[file:help.org::orgmode:gcr:vela:08D73B43-0EAC-433E-A5C8-F4E89A5ADA12][orgmode:gcr:vela:08D73B43-0EAC-433E-A5C8-F4E89A5ADA12]]
(setq ess-watch-scale-amount -1)
;; orgmode:gcr:vela:08D73B43-0EAC-433E-A5C8-F4E89A5ADA12 ends here

;; [[file:help.org::orgmode:gcr:vela:CAA06F3F-C308-4C51-B5EA-84CB75C66DE7][orgmode:gcr:vela:CAA06F3F-C308-4C51-B5EA-84CB75C66DE7]]
(setq ess-ask-for-ess-directory nil)
;; orgmode:gcr:vela:CAA06F3F-C308-4C51-B5EA-84CB75C66DE7 ends here

;; [[file:help.org::orgmode:gcr:vela:4A9DDBA7-1715-45C8-A979-69725E37381E][orgmode:gcr:vela:4A9DDBA7-1715-45C8-A979-69725E37381E]]
(setq inferior-ess-exit-command "q('no')
")
;; orgmode:gcr:vela:4A9DDBA7-1715-45C8-A979-69725E37381E ends here

;; [[file:help.org::orgmode:gcr:vela:A0EA1072-089F-4C7A-AE35-7C05D090097E][orgmode:gcr:vela:A0EA1072-089F-4C7A-AE35-7C05D090097E]]
(use-package ess-R-object-popup
  :ensure t)
;; orgmode:gcr:vela:A0EA1072-089F-4C7A-AE35-7C05D090097E ends here

;; [[file:help.org::orgmode:gcr:vela:FCFBA6B6-B76D-4230-93BE-1DDFE411FF82][orgmode:gcr:vela:FCFBA6B6-B76D-4230-93BE-1DDFE411FF82]]
(autoload 'ess-rdired "ess-rdired")
;; orgmode:gcr:vela:FCFBA6B6-B76D-4230-93BE-1DDFE411FF82 ends here

;; [[file:help.org::orgmode:gcr:vela:B2C94B37-92A9-4320-A5EE-BAAD81FAB1AD][orgmode:gcr:vela:B2C94B37-92A9-4320-A5EE-BAAD81FAB1AD]]
(use-package ess-R-data-view
  :ensure t)
;; orgmode:gcr:vela:B2C94B37-92A9-4320-A5EE-BAAD81FAB1AD ends here

;; [[file:help.org::orgmode:gcr:vela:E49028CA-9CE0-41FD-9B1E-004C3D68445B][orgmode:gcr:vela:E49028CA-9CE0-41FD-9B1E-004C3D68445B]]
(use-package inlineR
  :ensure t)
;; orgmode:gcr:vela:E49028CA-9CE0-41FD-9B1E-004C3D68445B ends here

;; [[file:help.org::orgmode:gcr:vela:D0976061-7DE0-4441-898F-4014547FFB29][orgmode:gcr:vela:D0976061-7DE0-4441-898F-4014547FFB29]]
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
;; orgmode:gcr:vela:D0976061-7DE0-4441-898F-4014547FFB29 ends here

;; [[file:help.org::orgmode:gcr:vela:931F150B-01FB-455C-B6F9-D730BEC162FF][orgmode:gcr:vela:931F150B-01FB-455C-B6F9-D730BEC162FF]]
(setq inferior-ess-program "R")
(setq inferior-R-program-name "R")
(setq ess-local-process-name "R")
;; orgmode:gcr:vela:931F150B-01FB-455C-B6F9-D730BEC162FF ends here

;; [[file:help.org::orgmode:gcr:vela:5D17A7DE-ECAF-4FAE-8425-AD43FEDD2D45][orgmode:gcr:vela:5D17A7DE-ECAF-4FAE-8425-AD43FEDD2D45]]
(add-to-list 'auto-mode-alist '("\\.rd\\'" . Rd-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd$" . r-mode))
;; orgmode:gcr:vela:5D17A7DE-ECAF-4FAE-8425-AD43FEDD2D45 ends here

;; [[file:help.org::orgmode:gcr:vela:8122AAC4-008A-454B-A3F6-4F9B11F7278E][orgmode:gcr:vela:8122AAC4-008A-454B-A3F6-4F9B11F7278E]]
(local-set-key (kbd "C-c C-. S") #'ess-rutils-rsitesearch)
;; orgmode:gcr:vela:8122AAC4-008A-454B-A3F6-4F9B11F7278E ends here

;; [[file:help.org::orgmode:gcr:vela:17FD6489-F187-4667-9E96-5ECF3DAED95B][orgmode:gcr:vela:17FD6489-F187-4667-9E96-5ECF3DAED95B]]
(use-package ess-rutils
  :config
  (setq ess-rutils-keys t))
;; orgmode:gcr:vela:17FD6489-F187-4667-9E96-5ECF3DAED95B ends here

;; [[file:help.org::orgmode:gcr:vela:588C7A99-908C-4CD9-A1BE-1818938E2D13][orgmode:gcr:vela:588C7A99-908C-4CD9-A1BE-1818938E2D13]]
(use-package r-autoyas
  :ensure t
  :config
  (setq r-autoyas-debug t)
  (setq r-autoyas-expand-package-functions-only nil)
  (setq r-autoyas-remove-explicit-assignments nil))
;; orgmode:gcr:vela:588C7A99-908C-4CD9-A1BE-1818938E2D13 ends here

;; [[file:help.org::orgmode:gcr:vela:5D526636-47A1-463B-9466-4DD240C7F382][orgmode:gcr:vela:5D526636-47A1-463B-9466-4DD240C7F382]]
(setq ess-R-argument-suffix "=")
;; orgmode:gcr:vela:5D526636-47A1-463B-9466-4DD240C7F382 ends here

;; [[file:help.org::orgmode:gcr:vela:9E931868-056E-49E6-A0AE-D1447BA27039][orgmode:gcr:vela:9E931868-056E-49E6-A0AE-D1447BA27039]]
(setq ess-S-assign-key (kbd "C-,"))
(ess-toggle-S-assign-key t)
(ess-toggle-underscore nil)
;; orgmode:gcr:vela:9E931868-056E-49E6-A0AE-D1447BA27039 ends here

;; [[file:help.org::orgmode:gcr:vela:4B373CC7-EF17-4900-87BE-E38995585C46][orgmode:gcr:vela:4B373CC7-EF17-4900-87BE-E38995585C46]]
(setq inferior-R-args "--no-save --no-restore")
;; orgmode:gcr:vela:4B373CC7-EF17-4900-87BE-E38995585C46 ends here

;; [[file:help.org::orgmode:gcr:vela:E5F48F7A-E926-4FB0-92D2-92204808630E][orgmode:gcr:vela:E5F48F7A-E926-4FB0-92D2-92204808630E]]
(defun help/R-mode-hook-fn ()
  (local-set-key (kbd "s-6") #'ess-switch-to-end-of-ESS)
  (local-set-key (kbd "s-7") #'ess-rdired)
  (local-set-key (kbd "s-8") #'ess-R-dv-ctable)
  (local-set-key (kbd "s-9") #'ess-R-dv-pprint)
  (local-set-key (kbd "s-y") #'r-autoyas-expand)
  (local-set-key (kbd "s-o") #'ess-describe-object-at-point)
  (local-set-key (kbd "s-p") #'ess-R-object-popup)
  (local-set-key (kbd "C-.") #'(lambda () (interactive) (insert " -> ")))
  (key-chord-define-local "<<" #'(lambda () (interactive) (insert " <<- ")))
  (key-chord-define-local ">>" #'(lambda () (interactive) (insert " ->> ")))
  (key-chord-define-local "<>" #'(lambda () (interactive) (insert " %<>% ")))
  (local-set-key (kbd "s-.") #'(lambda () (interactive) (insert " %>% ")))
  (r-autoyas-ess-activate)
  (help/turn-on-r-hide-show)
  (lambda () (add-hook 'ess-presend-filter-functions
                  (lambda ()
                    (warn
                     "ESS now supports a standard pre-send filter hook. Please update your configuration to use it instead of using advice."))))
  (ess-set-style 'RRR))

(add-hook 'R-mode-hook #'help/R-mode-hook-fn)

(defun help/turn-on-r-hide-show ()
  "Attribution: SRC https://github.com/mlf176f2/EmacsMate/blob/master/EmacsMate-ess.org"
  (when (string= "S" ess-language)
    (set (make-local-variable 'hs-special-modes-alist) #'((ess-mode "{" "}" "#" nil nil)))
    (hs-minor-mode 1)
    (when (fboundp 'foldit-mode)
      (foldit-mode 1))
    (when (fboundp 'fold-dwim-org/minor-mode)
      (fold-dwim-org/minor-mode))))

(defun help/Rd-mode-hook-fn ()
  (help/R-mode-hook-fn))

(add-hook 'Rd-mode-hook #'help/Rd-mode-hook-fn)

(defun help/inferior-ess-mode-hook-fn ()
  (help/R-mode-hook-fn))

(add-hook 'inferior-ess-mode-hook #'help/inferior-ess-mode-hook-fn)

(defun help/ess-rdired-mode-hook-fn ()
  "Personal customizations."
  (interactive)
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))

(add-hook 'ess-rdired-mode-hook #'help/ess-rdired-mode-hook-fn)
;; orgmode:gcr:vela:E5F48F7A-E926-4FB0-92D2-92204808630E ends here

;; [[file:help.org::orgmode:gcr:vela:4798425A-55ED-49F1-AA3A-D0AB82DC070C][orgmode:gcr:vela:4798425A-55ED-49F1-AA3A-D0AB82DC070C]]
  (add-to-list 'auto-mode-alist '("\\.scm\\'" . scheme-mode))
  (add-to-list 'auto-mode-alist '("\\.ss\\'" . scheme-mode))
;; orgmode:gcr:vela:4798425A-55ED-49F1-AA3A-D0AB82DC070C ends here

;; [[file:help.org::orgmode:gcr:vela:E937C67E-3F3B-4B46-9F0F-F14C558559FC][orgmode:gcr:vela:E937C67E-3F3B-4B46-9F0F-F14C558559FC]]
  (add-to-list 'auto-mode-alist '("\\.rkt\\'" . scheme-mode))
;; orgmode:gcr:vela:E937C67E-3F3B-4B46-9F0F-F14C558559FC ends here

;; [[file:help.org::orgmode:gcr:vela:69A655C1-D6E9-4043-A064-477C33736BD8][orgmode:gcr:vela:69A655C1-D6E9-4043-A064-477C33736BD8]]
  (add-to-list 'auto-mode-alist '("\\.sls\\'" . scheme-mode))
  (add-to-list 'auto-mode-alist '("\\.sps\\'" . scheme-mode))
;; orgmode:gcr:vela:69A655C1-D6E9-4043-A064-477C33736BD8 ends here

;; [[file:help.org::orgmode:gcr:vela:8BF8587E-9227-4BA4-8693-E43971E5F9CB][orgmode:gcr:vela:8BF8587E-9227-4BA4-8693-E43971E5F9CB]]
(use-package geiser
  :ensure t)
;; orgmode:gcr:vela:8BF8587E-9227-4BA4-8693-E43971E5F9CB ends here

;; [[file:help.org::orgmode:gcr:vela:B8C71D71-D5C6-409C-A104-26CD6C540746][orgmode:gcr:vela:B8C71D71-D5C6-409C-A104-26CD6C540746]]
(use-package racket-mode
  :ensure t)
;; orgmode:gcr:vela:B8C71D71-D5C6-409C-A104-26CD6C540746 ends here

;; [[file:help.org::orgmode:gcr:vela:E0EBE05B-F57B-4F99-A791-E45634671737][orgmode:gcr:vela:E0EBE05B-F57B-4F99-A791-E45634671737]]
(use-package ac-geiser
  :ensure t
  :config
  (add-hook 'geiser-mode-hook 'ac-geiser-setup)
  (add-hook 'geiser-repl-mode-hook 'ac-geiser-setup)
  (eval-after-load "auto-complete"
    '(add-to-list 'ac-modes 'geiser-repl-mode))
  (setq geiser-active-implementations '(racket guile))
  (setq geiser-repl-history-no-dups-p t))
;; orgmode:gcr:vela:E0EBE05B-F57B-4F99-A791-E45634671737 ends here

;; [[file:help.org::orgmode:gcr:vela:1827B724-7BC0-4228-8389-2B06F308D6AF][orgmode:gcr:vela:1827B724-7BC0-4228-8389-2B06F308D6AF]]
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode t)
  (help/not-on-gui (define-key yas-minor-mode-map (kbd "TAB") nil))
  (help/on-gui (define-key yas-minor-mode-map (kbd "<tab>") nil))
  (define-key yas-minor-mode-map (kbd "s-t") #'yas-expand)
  (help/not-on-gui (define-key yas-keymap (kbd "TAB") #'yas-next-field))
  (help/on-gui (define-key yas-keymap (kbd "<tab>") #'yas-next-field))
  (add-to-list #'yas-snippet-dirs "~/src/help/yasnippet")
  (yas-reload-all)
  (setq yas-prompt-functions '(yas-ido-prompt))
  :diminish yas-minor-mode)
;; orgmode:gcr:vela:1827B724-7BC0-4228-8389-2B06F308D6AF ends here

;; [[file:help.org::orgmode:gcr:vela:F91A42F6-ED96-4451-B5C0-EB2EFACB75FA][orgmode:gcr:vela:F91A42F6-ED96-4451-B5C0-EB2EFACB75FA]]
(eval-after-load "abbrev"
  '(diminish 'abbrev-mode))
;; orgmode:gcr:vela:F91A42F6-ED96-4451-B5C0-EB2EFACB75FA ends here

;; [[file:help.org::orgmode:gcr:vela:ABA05DE1-22EF-4BDB-935C-B842EBB843B5][orgmode:gcr:vela:ABA05DE1-22EF-4BDB-935C-B842EBB843B5]]
(use-package web-mode
  :ensure t
  :init
  (setq web-mode-enable-current-element-highlight t)
  :config
  (setf (cdr (rassoc 'php-mode auto-mode-alist)) 'web-mode)
  (add-to-list 'auto-mode-alist '("\\.tpl'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.scss?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.xml?\\'" . web-mode))
  (setq web-mode-enable-engine-detection t)
  (define-key web-mode-map (kbd "s-n") 'web-mode-tag-match))

(defun help/web-mode-hook-fn ()
  "HELP web-mode customizations."
  (interactive)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-style-padding 1)
  (setq web-mode-script-padding 1)
  (setq web-mode-block-padding 0)
  (setq web-mode-comment-style 2)
  (setq web-mode-extra-snippets
        '( ("php" . (("dowhile" . ("<?php do { ?>\n\n<?php } while (|); ?>"))
                     ("debug" . ("<?php error_log(__LINE__); ?>"))))))
  (setq web-mode-enable-auto-pairing nil)
  (defun sp-web-mode-is-code-context (id action context)
    (and (eq action 'insert)
       (not (or (get-text-property (point) 'part-side)
             (get-text-property (point) 'block-side)))))

  (sp-local-pair 'web-mode "<" nil :when '(sp-web-mode-is-code-context))
  (setq web-mode-enable-css-colorization t)
  (setq web-mode-enable-block-face t)
  (setq web-mode-enable-part-face t)
  (setq web-mode-enable-comment-keywords t)
  (setq web-mode-enable-heredoc-fontification t))

(add-hook 'web-mode-hook #'help/web-mode-hook-fn)
;; orgmode:gcr:vela:ABA05DE1-22EF-4BDB-935C-B842EBB843B5 ends here

;; [[file:help.org::orgmode:gcr:vela:B97EDF2E-0538-475A-AA0A-6C708DCCEC11][orgmode:gcr:vela:B97EDF2E-0538-475A-AA0A-6C708DCCEC11]]
(use-package tex-site
  :ensure auctex
  :config
  (eval-after-load "tex"
    '(define-key TeX-mode-map (kbd "C-c C-c") #'help/safb-TeX-command-master)))
;; orgmode:gcr:vela:B97EDF2E-0538-475A-AA0A-6C708DCCEC11 ends here

;; [[file:help.org::orgmode:gcr:vela:2B0193C4-291A-4C5E-9FA0-36A80DE1D379][orgmode:gcr:vela:2B0193C4-291A-4C5E-9FA0-36A80DE1D379]]
(setq TeX-auto-save t)
;; orgmode:gcr:vela:2B0193C4-291A-4C5E-9FA0-36A80DE1D379 ends here

;; [[file:help.org::orgmode:gcr:vela:278E7DC2-6BD3-4F90-A4F2-25B9BE614981][orgmode:gcr:vela:278E7DC2-6BD3-4F90-A4F2-25B9BE614981]]
(setq TeX-parse-self t)
;; orgmode:gcr:vela:278E7DC2-6BD3-4F90-A4F2-25B9BE614981 ends here

;; [[file:help.org::orgmode:gcr:vela:10789FA5-E5AA-4F8C-BB0E-62307655F7AD][orgmode:gcr:vela:10789FA5-E5AA-4F8C-BB0E-62307655F7AD]]
(setq TeX-auto-save t)
;; orgmode:gcr:vela:10789FA5-E5AA-4F8C-BB0E-62307655F7AD ends here

;; [[file:help.org::orgmode:gcr:vela:F89FBF57-D32D-45B0-B43F-D5A9EB489ABE][orgmode:gcr:vela:F89FBF57-D32D-45B0-B43F-D5A9EB489ABE]]
(setq TeX-PDF-mode t)
(setq TeX-DVI-via-PDFTeX t)
;; orgmode:gcr:vela:F89FBF57-D32D-45B0-B43F-D5A9EB489ABE ends here

;; [[file:help.org::orgmode:gcr:vela:A193F562-9E1C-49A2-982C-EBF7D9AFF32F][orgmode:gcr:vela:A193F562-9E1C-49A2-982C-EBF7D9AFF32F]]
(setq TeX-save-query nil)
;; orgmode:gcr:vela:A193F562-9E1C-49A2-982C-EBF7D9AFF32F ends here

;; [[file:help.org::orgmode:gcr:vela:083E953F-E95D-4596-98D1-C8554D451721][orgmode:gcr:vela:083E953F-E95D-4596-98D1-C8554D451721]]
(add-to-list 'auto-mode-alist '("\\.lco?\\'" . TeX-latex-mode))
;; orgmode:gcr:vela:083E953F-E95D-4596-98D1-C8554D451721 ends here

;; [[file:help.org::orgmode:gcr:vela:9FA4E728-0AB8-4A18-9EE8-DC4387E6DD08][orgmode:gcr:vela:9FA4E728-0AB8-4A18-9EE8-DC4387E6DD08]]
(add-to-list 'org-latex-packages-alist '("english" "babel" t))
;; orgmode:gcr:vela:9FA4E728-0AB8-4A18-9EE8-DC4387E6DD08 ends here

;; [[file:help.org::orgmode:gcr:vela:6C50239B-2D5D-4022-8645-+BEGIN_SRC][orgmode:gcr:vela:6C50239B-2D5D-4022-8645-+BEGIN_SRC]]
(add-to-list 'org-latex-packages-alist '("osf" "mathpazo" t))
;; orgmode:gcr:vela:6C50239B-2D5D-4022-8645-+BEGIN_SRC ends here

;; [[file:help.org::orgmode:gcr:vela:AA859065-4868-4A02-882E-AD5840B74349][orgmode:gcr:vela:AA859065-4868-4A02-882E-AD5840B74349]]
(add-to-list 'org-latex-packages-alist '("margin=0.5in" "geometry" nil))
;; orgmode:gcr:vela:AA859065-4868-4A02-882E-AD5840B74349 ends here

;; [[file:help.org::orgmode:gcr:vela:E6559423-7FC3-4924-A38B-FE4C9CA8CD91][orgmode:gcr:vela:E6559423-7FC3-4924-A38B-FE4C9CA8CD91]]
(defvar help/ltx-cls-opt "paper=letter, fontsize=10pt, parskip")
;; orgmode:gcr:vela:E6559423-7FC3-4924-A38B-FE4C9CA8CD91 ends here

;; [[file:help.org::orgmode:gcr:vela:6C864008-5602-4E73-A8DE-6DDE5DFA1EE0][orgmode:gcr:vela:6C864008-5602-4E73-A8DE-6DDE5DFA1EE0]]
(eval-after-load "ox-latex"
  '(add-to-list 'org-latex-classes
                `("help-article"
                  ,(concat "\\documentclass["
                           help/ltx-cls-opt
                           "]{article}"))))

(setq org-latex-default-class "help-article")
;; orgmode:gcr:vela:6C864008-5602-4E73-A8DE-6DDE5DFA1EE0 ends here

;; [[file:help.org::orgmode:gcr:vela:9B903D8E-6E42-41BB-83AA-EBE64298A7C8][orgmode:gcr:vela:9B903D8E-6E42-41BB-83AA-EBE64298A7C8]]
(setq org-export-with-smart-quotes t)
;; orgmode:gcr:vela:9B903D8E-6E42-41BB-83AA-EBE64298A7C8 ends here

;; [[file:help.org::orgmode:gcr:vela:C2C100F1-B302-4BC7-8633-A79BCBFE1FC7][orgmode:gcr:vela:C2C100F1-B302-4BC7-8633-A79BCBFE1FC7]]
(eval-after-load "ox" '(require 'ox-koma-letter))
;; orgmode:gcr:vela:C2C100F1-B302-4BC7-8633-A79BCBFE1FC7 ends here

;; [[file:help.org::orgmode:gcr:vela:05968019-B83F-4F5B-ACF7-4CFF10CB8690][orgmode:gcr:vela:05968019-B83F-4F5B-ACF7-4CFF10CB8690]]
(eval-after-load "ox-koma-letter"
  '(progn
     (add-to-list 'org-latex-classes
                  `("help-letter"
                    ,(concat "\\documentclass["
                             help/ltx-cls-opt
                             "]{scrlttr2}")))

     (setq org-koma-letter-default-class "help-letter")))
;; orgmode:gcr:vela:05968019-B83F-4F5B-ACF7-4CFF10CB8690 ends here

;; [[file:help.org::orgmode:gcr:vela:EFFC0DFD-168F-42F5-9405-BAECD7EC5CB4][orgmode:gcr:vela:EFFC0DFD-168F-42F5-9405-BAECD7EC5CB4]]
(setq org-koma-letter-class-option-file "UScommercial9 KomaDefault")
;; orgmode:gcr:vela:EFFC0DFD-168F-42F5-9405-BAECD7EC5CB4 ends here

;; [[file:help.org::orgmode:gcr:vela:02005BF5-AADC-45B1-AC64-67ECB028352A][orgmode:gcr:vela:02005BF5-AADC-45B1-AC64-67ECB028352A]]
(use-package ox-gfm)
;; orgmode:gcr:vela:02005BF5-AADC-45B1-AC64-67ECB028352A ends here

;; [[file:help.org::orgmode:gcr:vela:8A4DB408-7888-4705-AB2B-C7EED9262DF2][orgmode:gcr:vela:8A4DB408-7888-4705-AB2B-C7EED9262DF2]]
(use-package markdown-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
  (setq markdown-coding-system "utf-8"))
;; orgmode:gcr:vela:8A4DB408-7888-4705-AB2B-C7EED9262DF2 ends here

;; [[file:help.org::orgmode:gcr:vela:080472B8-EC76-4318-876A-A4A65547B056][orgmode:gcr:vela:080472B8-EC76-4318-876A-A4A65547B056]]
(setq org-html-doctype "html5")
;; orgmode:gcr:vela:080472B8-EC76-4318-876A-A4A65547B056 ends here

;; [[file:help.org::orgmode:gcr:vela:E26F69F8-ED1F-4F10-A291-6F9CB958FD18][orgmode:gcr:vela:E26F69F8-ED1F-4F10-A291-6F9CB958FD18]]
(use-package htmlize
  :config
  (setq org-html-htmlize-output-type htmlize-output-type)
  (setq htmlize-output-type 'inline-css)
  (defvar help/htmlize-initial-fci-state nil
    "Variable to store the state of `fci-mode' upon calling `htmlize-buffer'.

Attribution: URL `http://permalink.gmane.org/gmane.emacs.orgmode/98153'.")
  (defvar help/htmlize-initial-flyspell-state nil
    "Variable to store the state of `flyspell-mode' upon calling `htmlize-buffer'.

Attribution: URL `http://permalink.gmane.org/gmane.emacs.orgmode/98153'.")

  (defun help/htmlize-before-hook-fn ()
    (when (fboundp 'fci-mode)
      (setq help/htmlize-initial-fci-state fci-mode)
      (when fci-mode
        (fci-mode -1))))
  (add-hook 'htmlize-before-hook #'help/htmlize-before-hook-fn)

  (defun help/htmlize-after-hook-fn ()
    (when (fboundp 'fci-mode)
      (when help/htmlize-initial-fci-state
        (fci-mode t))))
  (add-hook 'htmlize-after-hook #'help/htmlize-after-hook-fn))
;; orgmode:gcr:vela:E26F69F8-ED1F-4F10-A291-6F9CB958FD18 ends here

;; [[file:help.org::orgmode:gcr:vela:B7F010D3-4A47-4E4A-9E00-D54E4D0F9D63][orgmode:gcr:vela:B7F010D3-4A47-4E4A-9E00-D54E4D0F9D63]]
(setq org-ascii-text-width 80)
(setq org-ascii-global-margin 0)
;; orgmode:gcr:vela:B7F010D3-4A47-4E4A-9E00-D54E4D0F9D63 ends here

;; [[file:help.org::orgmode:gcr:vela:B77E265B-EE1A-469D-BEFB-51360B7AB45E][orgmode:gcr:vela:B77E265B-EE1A-469D-BEFB-51360B7AB45E]]
(use-package ox-beamer)
;; orgmode:gcr:vela:B77E265B-EE1A-469D-BEFB-51360B7AB45E ends here

;; [[file:help.org::orgmode:gcr:vela:3433DE3A-994E-4E4C-97E1-8C0A1831ABB3][orgmode:gcr:vela:3433DE3A-994E-4E4C-97E1-8C0A1831ABB3]]
(use-package fountain-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.fountain$" . fountain-mode))
  (let ((fountain-stx '(
                        "CONT'D"
                        "CROSSFADE"
                        "FLASHCUTS"
                        "FLASHFORWARD"
                        "INTERCUT"
                        "PRE"
                        "PRELAP"
                        )))
    (mapc (lambda (stx) (add-to-list 'ispell-skip-region-alist (list stx)))
          fountain-stx)))
;; orgmode:gcr:vela:3433DE3A-994E-4E4C-97E1-8C0A1831ABB3 ends here

;; [[file:help.org::orgmode:gcr:vela:63E64A4A-FC5E-4663-BC58-205F5EF130D3][orgmode:gcr:vela:63E64A4A-FC5E-4663-BC58-205F5EF130D3]]
(use-package apache-mode
  :ensure t)
;; orgmode:gcr:vela:63E64A4A-FC5E-4663-BC58-205F5EF130D3 ends here

;; [[file:help.org::orgmode:gcr:vela:43157E0F-7B49-4594-B41C-3B3805B8D6EF][orgmode:gcr:vela:43157E0F-7B49-4594-B41C-3B3805B8D6EF]]
(use-package ssh-config-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("/\\.ssh/config\\'"     . ssh-config-mode))
  (add-to-list 'auto-mode-alist '("/sshd?_config\\'"      . ssh-config-mode))
  (add-to-list 'auto-mode-alist '("/known_hosts\\'"       . ssh-known-hosts-mode))
  (add-to-list 'auto-mode-alist '("/authorized_keys2?\\'" . ssh-authorized-keys-mode))
  (add-hook 'ssh-config-mode-hook 'turn-on-font-lock))
;; orgmode:gcr:vela:43157E0F-7B49-4594-B41C-3B3805B8D6EF ends here

;; [[file:help.org::orgmode:gcr:vela:7592B1CF-CDA3-4ED1-99FA-205E41C74FFF][orgmode:gcr:vela:7592B1CF-CDA3-4ED1-99FA-205E41C74FFF]]
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.art" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
;; orgmode:gcr:vela:7592B1CF-CDA3-4ED1-99FA-205E41C74FFF ends here

;; [[file:help.org::orgmode:gcr:vela:6907A176-CCF4-4BDF-A242-BDBC4C67239F][orgmode:gcr:vela:6907A176-CCF4-4BDF-A242-BDBC4C67239F]]
(defconst help/ditaa-jar "/usr/local/Cellar/ditaa/0.9/libexec/ditaa0_9.jar")
(setq org-ditaa-jar-path help/ditaa-jar)
;; orgmode:gcr:vela:6907A176-CCF4-4BDF-A242-BDBC4C67239F ends here

;; [[file:help.org::orgmode:gcr:vela:EAADBBCB-9054-4040-8579-1EC08FB97BDE][orgmode:gcr:vela:EAADBBCB-9054-4040-8579-1EC08FB97BDE]]
(use-package graphviz-dot-mode
  :ensure t
  :config
  (setf (cdr (assoc "dot" org-src-lang-modes)) 'graphviz-dot))
;; orgmode:gcr:vela:EAADBBCB-9054-4040-8579-1EC08FB97BDE ends here

;; [[file:help.org::orgmode:gcr:vela:80EE7930-0025-4D06-96BB-24A70169CDEA][orgmode:gcr:vela:80EE7930-0025-4D06-96BB-24A70169CDEA]]
(use-package plantuml-mode
  :ensure t
  :init
  (defconst help/plantuml-jar "/usr/local/Cellar/plantuml/8031/plantuml.8031.jar")
  (setq plantuml-jar-path help/plantuml-jar)
  :config
  (eval-after-load "ob-plantuml"
    (setq org-plantuml-jar-path help/plantuml-jar)))
;; orgmode:gcr:vela:80EE7930-0025-4D06-96BB-24A70169CDEA ends here

;; [[file:help.org::orgmode:gcr:vela:6C53BC6D-012D-44A6-963B-610610933D4B][orgmode:gcr:vela:6C53BC6D-012D-44A6-963B-610610933D4B]]
(use-package scad-mode
  :ensure t)
;; orgmode:gcr:vela:6C53BC6D-012D-44A6-963B-610610933D4B ends here

;; [[file:help.org::orgmode:gcr:vela:1B924EB9-5B03-4853-B99A-63984BA344B8][orgmode:gcr:vela:1B924EB9-5B03-4853-B99A-63984BA344B8]]
(use-package selectric-mode
  :ensure t)
;; orgmode:gcr:vela:1B924EB9-5B03-4853-B99A-63984BA344B8 ends here

;; [[file:help.org::orgmode:gcr:vela:DC131133-BEC7-45D2-BA35-42E77FC3BB22][orgmode:gcr:vela:DC131133-BEC7-45D2-BA35-42E77FC3BB22]]
(use-package nlinum
  :ensure t
  :config
  (setq nlinum-format "%05d"))
;; orgmode:gcr:vela:DC131133-BEC7-45D2-BA35-42E77FC3BB22 ends here

;; [[file:help.org::orgmode:gcr:vela:61F1703A-48AA-4C2E-AE78-4C9766B6C8BC][orgmode:gcr:vela:61F1703A-48AA-4C2E-AE78-4C9766B6C8BC]]
(setq inhibit-eol-conversion t)
;; orgmode:gcr:vela:61F1703A-48AA-4C2E-AE78-4C9766B6C8BC ends here

;; [[file:help.org::orgmode:gcr:vela:A5438CB6-5228-4753-B2A7-BFEFC573F6B6][orgmode:gcr:vela:A5438CB6-5228-4753-B2A7-BFEFC573F6B6]]
(use-package uniquify)
(setq uniquify-buffer-name-style 'forward)
;; orgmode:gcr:vela:A5438CB6-5228-4753-B2A7-BFEFC573F6B6 ends here

;; [[file:help.org::orgmode:gcr:vela:295C91F5-6CD4-41C8-A62C-600B11838B2B][orgmode:gcr:vela:295C91F5-6CD4-41C8-A62C-600B11838B2B]]
(setq ring-bell-function 'ignore)
(setq visible-bell t)
;; orgmode:gcr:vela:295C91F5-6CD4-41C8-A62C-600B11838B2B ends here

;; [[file:help.org::orgmode:gcr:vela:59F87147-F8C3-49D0-BEC6-A8D19989001E][orgmode:gcr:vela:59F87147-F8C3-49D0-BEC6-A8D19989001E]]
(setq blink-matching-paren nil)
(show-paren-mode)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
;; orgmode:gcr:vela:59F87147-F8C3-49D0-BEC6-A8D19989001E ends here

;; [[file:help.org::orgmode:gcr:vela:CC0CDAEB-8460-43CE-BA7E-3A9D986A02BB][orgmode:gcr:vela:CC0CDAEB-8460-43CE-BA7E-3A9D986A02BB]]
(blink-cursor-mode 0)
(help/on-gui
 (setq-default cursor-type 'box)
 (setq x-stretch-cursor 1))
;; orgmode:gcr:vela:CC0CDAEB-8460-43CE-BA7E-3A9D986A02BB ends here

;; [[file:help.org::orgmode:gcr:vela:BC706CBF-2B98-4FD7-9A5A-61F5483D0899][orgmode:gcr:vela:BC706CBF-2B98-4FD7-9A5A-61F5483D0899]]
(prefer-coding-system 'utf-8)
(help/on-gui
 (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
 (help/on-windows
  (set-clipboard-coding-system 'utf-16le-dos)))
;; orgmode:gcr:vela:BC706CBF-2B98-4FD7-9A5A-61F5483D0899 ends here

;; [[file:help.org::orgmode:gcr:vela:6FD9F092-7062-4E7A-BB58-4B5F45AF0AD0][orgmode:gcr:vela:6FD9F092-7062-4E7A-BB58-4B5F45AF0AD0]]
(global-hl-line-mode t)
;; orgmode:gcr:vela:6FD9F092-7062-4E7A-BB58-4B5F45AF0AD0 ends here

;; [[file:help.org::orgmode:gcr:vela:D0F5616F-1609-4E12-A4D7-7A1F46D34A2C][orgmode:gcr:vela:D0F5616F-1609-4E12-A4D7-7A1F46D34A2C]]
(setq default-input-method 'TeX)
;; orgmode:gcr:vela:D0F5616F-1609-4E12-A4D7-7A1F46D34A2C ends here

;; [[file:help.org::orgmode:gcr:vela:22652727-D070-49FE-804F-72FA4C86B770][orgmode:gcr:vela:22652727-D070-49FE-804F-72FA4C86B770]]
(setq mouse-drag-copy-region t)
;; orgmode:gcr:vela:22652727-D070-49FE-804F-72FA4C86B770 ends here

;; [[file:help.org::orgmode:gcr:vela:021B7D3A-E696-43B9-BC08-C8BDABB33999][orgmode:gcr:vela:021B7D3A-E696-43B9-BC08-C8BDABB33999]]
(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-distinct-fringe-background t)
  (setq solarized-high-contrast-mode-line nil)
  (setq solarized-use-less-bold t)
  (setq solarized-use-more-italic nil)
  (setq solarized-emphasize-indicators nil)
  (load-theme 'solarized-dark t))
;; orgmode:gcr:vela:021B7D3A-E696-43B9-BC08-C8BDABB33999 ends here

;; [[file:help.org::orgmode:gcr:vela:CDD7F353-867A-4E9C-A060-5C0F6A26866B][orgmode:gcr:vela:CDD7F353-867A-4E9C-A060-5C0F6A26866B]]
(setq comint-scroll-to-bottom-on-input 'this)
(setq comint-scroll-to-bottom-on-output 'others)
(setq comint-move-point-for-output 'others)
(setq comint-show-maximum-output t)
(setq comint-scroll-show-maximum-output t)
(setq comint-move-point-for-output t)
;; orgmode:gcr:vela:CDD7F353-867A-4E9C-A060-5C0F6A26866B ends here

;; [[file:help.org::orgmode:gcr:vela:346012D4-6861-458B-8352-3874D1F934E6][orgmode:gcr:vela:346012D4-6861-458B-8352-3874D1F934E6]]
(setq comint-prompt-read-only nil)
;; orgmode:gcr:vela:346012D4-6861-458B-8352-3874D1F934E6 ends here

;; [[file:help.org::orgmode:gcr:vela:21687556-D79E-4734-86E6-52FF9EE107B5][orgmode:gcr:vela:21687556-D79E-4734-86E6-52FF9EE107B5]]
(help/on-gui
 (defvar help/font-size-current 10 "The preferred font size.")
 (help/on-osx (setq help/font-size-current 17))
 (help/on-windows (setq help/font-size-current 13))
 (defconst help/font-size-ideal help/font-size-current "The ideal font for this system.")
 (defconst help/font-base "DejaVu Sans Mono" "The preferred font name.")
 (defun help/font-ok-p ()
   "Is the configured font valid?"
   (interactive)
   (member help/font-base (font-family-list)))
 (defun help/font-name ()
   "Compute the font name and size string."
   (interactive)
   (let* ((size (number-to-string help/font-size-current))
          (name (concat help/font-base "-" size)))
     name))
 (defun help/update-font ()
   "Updates the current font given configuration values."
   (interactive)
   (if (help/font-ok-p)
       (progn
         (message "%s : Font Set" (help/font-name))
         (set-frame-font (help/font-name)))
     (message (concat "Your preferred font is not available: " help/font-base))))
 (defun help/font-size-reset ()
   "Restore the ideal font size."
   (interactive)
   (setq help/font-size-current help/font-size-ideal)
   (help/update-font))
 (help/update-font))
;; orgmode:gcr:vela:21687556-D79E-4734-86E6-52FF9EE107B5 ends here

;; [[file:help.org::orgmode:gcr:vela:96EB14DD-CB63-46F3-B2E3-6F433D70DFAE][orgmode:gcr:vela:96EB14DD-CB63-46F3-B2E3-6F433D70DFAE]]
(scroll-bar-mode 0)
;; orgmode:gcr:vela:96EB14DD-CB63-46F3-B2E3-6F433D70DFAE ends here

;; [[file:help.org::orgmode:gcr:vela:2063ECD7-C23B-4CDC-96E0-786361DFAA9C][orgmode:gcr:vela:2063ECD7-C23B-4CDC-96E0-786361DFAA9C]]
(tool-bar-mode -1)
;; orgmode:gcr:vela:2063ECD7-C23B-4CDC-96E0-786361DFAA9C ends here

;; [[file:help.org::orgmode:gcr:vela:9E122111-1074-42D5-A57D-855E3A888C8E][orgmode:gcr:vela:9E122111-1074-42D5-A57D-855E3A888C8E]]
(setq make-pointer-invisible t)
;; orgmode:gcr:vela:9E122111-1074-42D5-A57D-855E3A888C8E ends here

;; [[file:help.org::orgmode:gcr:vela:668C63F3-C52E-4BDF-929D-E2BF2E985304][orgmode:gcr:vela:668C63F3-C52E-4BDF-929D-E2BF2E985304]]
(use-package diff-hl
  :ensure t)
;; orgmode:gcr:vela:668C63F3-C52E-4BDF-929D-E2BF2E985304 ends here

;; [[file:help.org::orgmode:gcr:vela:5B8FCEDB-66BA-4912-8FC8-B6EFBF6EF34D][orgmode:gcr:vela:5B8FCEDB-66BA-4912-8FC8-B6EFBF6EF34D]]
(setq ediff-split-window-function 'split-window-horizontally)
;; orgmode:gcr:vela:5B8FCEDB-66BA-4912-8FC8-B6EFBF6EF34D ends here

;; [[file:help.org::orgmode:gcr:vela:00BC7BEE-F9FC-4B9D-AC1A-4B1A3FFA64A7][orgmode:gcr:vela:00BC7BEE-F9FC-4B9D-AC1A-4B1A3FFA64A7]]
(menu-bar-mode t)
;; orgmode:gcr:vela:00BC7BEE-F9FC-4B9D-AC1A-4B1A3FFA64A7 ends here

;; [[file:help.org::orgmode:gcr:vela:3FB7FA94-1A6B-4E3B-8EDE-7A4D1D86E50E][orgmode:gcr:vela:3FB7FA94-1A6B-4E3B-8EDE-7A4D1D86E50E]]
(winner-mode t)
;; orgmode:gcr:vela:3FB7FA94-1A6B-4E3B-8EDE-7A4D1D86E50E ends here

;; [[file:help.org::orgmode:gcr:vela:EA28235F-22B2-463F-AC06-EC79FA613F22][orgmode:gcr:vela:EA28235F-22B2-463F-AC06-EC79FA613F22]]
(defun help/1-window ()
  "Work with this buffer in 1 window."
  (interactive)
  (delete-other-windows))

(defun help/2-window ()
  "Work with this buffer in 2 windows."
  (interactive)
  (delete-other-windows)
  (split-window-below)
  (balance-windows))

(defun help/3-window ()
  "Work with this buffer in 3 windows."
  (interactive)
  (delete-other-windows)
  (split-window-below)
  (split-window-below)
  (balance-windows))
;; orgmode:gcr:vela:EA28235F-22B2-463F-AC06-EC79FA613F22 ends here

;; [[file:help.org::orgmode:gcr:vela:2DB2EB2C-74AA-4121-A2BE-4974DCB5638E][orgmode:gcr:vela:2DB2EB2C-74AA-4121-A2BE-4974DCB5638E]]
(setq help-window-select t)
;; orgmode:gcr:vela:2DB2EB2C-74AA-4121-A2BE-4974DCB5638E ends here

;; [[file:help.org::orgmode:gcr:vela:8D9EC2AC-FCF0-4A64-9C84-7EF272BC802F][orgmode:gcr:vela:8D9EC2AC-FCF0-4A64-9C84-7EF272BC802F]]
(global-set-key (kbd "<f9>") #'org2blog/wp-new-entry)
(global-set-key (kbd "<f8>") #'org2blog/wp-post-buffer-and-publish)
(global-set-key (kbd "<f7>") #'org2blog/wp-login)
;; orgmode:gcr:vela:8D9EC2AC-FCF0-4A64-9C84-7EF272BC802F ends here

;; [[file:help.org::orgmode:gcr:vela:E4B98196-FDFB-42B4-A52A-8CA7DC066E8E][orgmode:gcr:vela:E4B98196-FDFB-42B4-A52A-8CA7DC066E8E]]
(global-set-key (kbd "s-4") #'mc/mark-next-like-this)
(global-set-key (kbd "s-3") #'mc/mark-previous-like-this)
(global-set-key (kbd "s-2") #'mc/mark-all-like-this)
(global-set-key (kbd "s-1") #'mc/edit-lines)
(global-set-key (kbd "s--") #'decrement-integer-at-point)
(global-set-key (kbd "s-+") #'increment-integer-at-point)
;; orgmode:gcr:vela:E4B98196-FDFB-42B4-A52A-8CA7DC066E8E ends here

;; [[file:help.org::orgmode:gcr:vela:239A85C3-2CEB-4E40-975F-8B3584F7F450][orgmode:gcr:vela:239A85C3-2CEB-4E40-975F-8B3584F7F450]]
(global-set-key (kbd "s-w") #'imenu)
(key-chord-define-global "1o" #'help/1-window)
(key-chord-define-global "2o" #'help/2-window)
(key-chord-define-global "3o" #'help/3-window)
(global-set-key (kbd "s-q") #'kill-buffer)
(global-set-key (kbd "s-Q") #'kill-this-buffer)
(global-set-key (kbd "H-i") #'insert-char)
(global-set-key (kbd "H-p") #'help/insert-datestamp)
(global-set-key (kbd "H-P") #'help/insert-timestamp)
;; orgmode:gcr:vela:239A85C3-2CEB-4E40-975F-8B3584F7F450 ends here

;; [[file:help.org::orgmode:gcr:vela:E60EA15F-28A0-4E98-B62E-1F8BDE444BD8][orgmode:gcr:vela:E60EA15F-28A0-4E98-B62E-1F8BDE444BD8]]
(global-set-key (kbd "s-a") #'help/safb-switch-to-previous-buffer)
(global-set-key (kbd "s-d") #'er/expand-region)
;; orgmode:gcr:vela:E60EA15F-28A0-4E98-B62E-1F8BDE444BD8 ends here

;; [[file:help.org::orgmode:gcr:vela:F6C7AAB7-DF69-4EBA-8116-15DC32022D49][orgmode:gcr:vela:F6C7AAB7-DF69-4EBA-8116-15DC32022D49]]
(defhydra help/hydra/left-side/global (:color blue
                                              :hint nil)
  "
_1_ reset-font _2_ -font  _3_ +font _4_ ellipsis _5_ UUID _6_ bfr-cdng-systm  _7_ grade-level _8_ reading-ease
_q_ apropos _w_ widen _e_ flycheck _t_ unicode-troll-stopper-mode _u_ ucs-insert  _i_ scrollUp _I_ prevLogLine _o_ dbgOnErr _p_ query-replace _[_ ↑page _]_ ↓page
_Q_ ✓ _W_ ✗ _E_ ☐ _R_ ☑ _T_ ☒_
_a_ ag  _s_ help/toggle-mac-right-option-modifier _S_ help/toggle-mac-function-modifier _d_ dash-at-point _D_ detangle _j_ obtj2o _k_ scrollDown _K_ nextLogLine  _;_ toggle-lax-whitespace
_x_ delete-indentation _c_ fill-paragraph _v_ view-mode _b_ erase-buffer  _m_ imenu-list _M_ Marked 2 Viewer
_<_ cmtIn _>_ cmtOut _?_ snp"
  ("1" help/font-size-reset :exit nil)
  ("Q" (lambda () (interactive) (insert "✓")) :exit nil)
  ("2" help/text-scale-decrease :exit nil)
  ("W" (lambda () (interactive) (insert "✗")) :exit nil)
  ("3" help/text-scale-increase :exit nil)
  ("e" help/safb-flycheck-list-errors)
  ("E" (lambda () (interactive) (insert "☐")) :exit nil)
  ("4" help/insert-ellipsis)
  ("R" (lambda () (interactive) (insert "☑")) :exit nil)
  ("5" help/uuid)
  ("T" (lambda () (interactive) (insert "☒")) :exit nil)
  ("6" set-buffer-file-coding-system)
  ("7" writegood-grade-level)
  ("8" writegood-reading-ease)
  ("9" help/insert-checkmark)
  ("a" ag)
  ("s" help/toggle-mac-right-option-modifier)
  ("S" help/toggle-mac-function-modifier)
  ("x" delete-indentation)
  ("v" view-mode)
  ("q" hydra-apropos/body)
  ("w" widen)
  ("t" unicode-troll-stopper-mode)
  ("j" org-babel-tangle-jump-to-org)
  ("u" ucs-insert)
  ("i" scroll-down-command :exit nil)
  ("d" dash-at-point)
  ("D" help/safb-org-babel-detangle)
  ("k" scroll-up-command :exit nil)
  ("I" previous-logical-line :exit nil)
  ("K" next-logical-line :exit nil)
  ("m" imenu-list-minor-mode)
  ("M" help/preview-buffer-file-in-marked-2)
  ("<" help/chs)
  (">" help/che)
  ("?" help/insert-noticeable-snip-comment-line)
  (";" isearch-toggle-lax-whitespace)
  ("o" toggle-debug-on-error)
  ("p" anzu-query-replace)
  ("[" backward-page :exit nil)
  ("]" forward-page :exit nil)
  ("c" fill-paragraph )
  ("b" erase-buffer))
;; orgmode:gcr:vela:F6C7AAB7-DF69-4EBA-8116-15DC32022D49 ends here

;; [[file:help.org::orgmode:gcr:vela:EFFA5A5F-58A8-476D-A8D4-16F232231EC7][orgmode:gcr:vela:EFFA5A5F-58A8-476D-A8D4-16F232231EC7]]
(key-chord-define-global "vv" #'help/hydra/left-side/global/body)
;; orgmode:gcr:vela:EFFA5A5F-58A8-476D-A8D4-16F232231EC7 ends here

;; [[file:help.org::orgmode:gcr:vela:362686F6-B397-44D5-812F-BE24670F4204][orgmode:gcr:vela:362686F6-B397-44D5-812F-BE24670F4204]]
(defhydra hydra-apropos (:color blue
                                :hint nil)
  "
_a_propos        _c_ommand
_d_ocumentation  _l_ibrary
_v_ariable       _u_ser-option
^ ^          valu_e_"
  ("a" apropos)
  ("d" apropos-documentation)
  ("v" apropos-variable)
  ("c" apropos-command)
  ("l" apropos-library)
  ("u" apropos-user-option)
  ("e" apropos-value))
;; orgmode:gcr:vela:362686F6-B397-44D5-812F-BE24670F4204 ends here

;; [[file:help.org::orgmode:gcr:vela:9224105B-2CDB-46F4-AF3F-312B3467C2B8][orgmode:gcr:vela:9224105B-2CDB-46F4-AF3F-312B3467C2B8]]
(global-set-key (kbd "s-v") #'smex)
(global-set-key (kbd "C-x C-c") #'help/safb-save-buffers-kill-terminal)
(global-set-key (kbd "s-x") #'ido-find-file)
(global-set-key (kbd "s-c") #'ido-switch-buffer)
;; orgmode:gcr:vela:9224105B-2CDB-46F4-AF3F-312B3467C2B8 ends here

;; [[file:help.org::orgmode:gcr:vela:A45F49E2-E330-463B-82C6-907F138E8F2A][orgmode:gcr:vela:A45F49E2-E330-463B-82C6-907F138E8F2A]]
(define-prefix-command 'help/vc-map)
(global-set-key (kbd "s-r") #'help/vc-map)
(define-key help/vc-map "e" #'help/safb-vc-ediff)
(define-key help/vc-map "d" #'help/safb-vc-diff)
(define-key help/vc-map "u" #'help/safb-vc-revert)
(global-set-key (kbd "s-f") #'help/safb-help/vc-next-action)
;; orgmode:gcr:vela:A45F49E2-E330-463B-82C6-907F138E8F2A ends here

;; [[file:help.org::orgmode:gcr:vela:C9521BF3-23E7-4952-846F-322D107E3EE3][orgmode:gcr:vela:C9521BF3-23E7-4952-846F-322D107E3EE3]]
(global-set-key (kbd "C-a") #'beginning-of-line-dwim)
;; orgmode:gcr:vela:C9521BF3-23E7-4952-846F-322D107E3EE3 ends here

;; [[file:help.org::orgmode:gcr:vela:2608E62D-62B4-4B82-BFE0-E1E04C0D6914][orgmode:gcr:vela:2608E62D-62B4-4B82-BFE0-E1E04C0D6914]]
(global-set-key (kbd "H-o") #'help/occur-dwim)
;; orgmode:gcr:vela:2608E62D-62B4-4B82-BFE0-E1E04C0D6914 ends here

;; [[file:help.org::orgmode:gcr:vela:FD9CED46-8D84-495F-A413-90DA9EA52B8A][orgmode:gcr:vela:FD9CED46-8D84-495F-A413-90DA9EA52B8A]]
(global-set-key (kbd "s-g") #'help/safb-other-window)
;; orgmode:gcr:vela:FD9CED46-8D84-495F-A413-90DA9EA52B8A ends here

;; [[file:help.org::orgmode:gcr:vela:4E784CF7-8CB1-42D0-A8EB-6FF54E7B60E9][orgmode:gcr:vela:4E784CF7-8CB1-42D0-A8EB-6FF54E7B60E9]]
(key-chord-define-global "f9" #'help/util-cycle)
;; orgmode:gcr:vela:4E784CF7-8CB1-42D0-A8EB-6FF54E7B60E9 ends here

;; [[file:help.org::orgmode:gcr:vela:374B4284-8823-4E85-A469-F3985D48EC61][orgmode:gcr:vela:374B4284-8823-4E85-A469-F3985D48EC61]]
(global-set-key (kbd "s-b") #'hs-toggle-hiding)
;; orgmode:gcr:vela:374B4284-8823-4E85-A469-F3985D48EC61 ends here

;; [[file:help.org::orgmode:gcr:vela:779A4232-960E-4CE1-B6EC-018FC997F0DD][orgmode:gcr:vela:779A4232-960E-4CE1-B6EC-018FC997F0DD]]
(key-chord-define-global "d8" #'describe-function)
(key-chord-define-global "d9" #'describe-variable)
;; orgmode:gcr:vela:779A4232-960E-4CE1-B6EC-018FC997F0DD ends here

;; [[file:help.org::orgmode:gcr:vela:55D2A3E6-07B1-47B0-9ADD-54C966FA252B][orgmode:gcr:vela:55D2A3E6-07B1-47B0-9ADD-54C966FA252B]]
(global-set-key (kbd "s-`") #'help/comment-or-uncomment)
;; orgmode:gcr:vela:55D2A3E6-07B1-47B0-9ADD-54C966FA252B ends here

;; [[file:help.org::orgmode:gcr:vela:E167321A-E8E5-4C54-B570-241B465B2D4B][orgmode:gcr:vela:E167321A-E8E5-4C54-B570-241B465B2D4B]]
(key-chord-define-global "qp" #'ispell)
(key-chord-define-global "qo" #'ispell-word)
;; orgmode:gcr:vela:E167321A-E8E5-4C54-B570-241B465B2D4B ends here

;; [[file:help.org::orgmode:gcr:vela:52E762F8-9A31-4FEC-859D-049BD658C6D9][orgmode:gcr:vela:52E762F8-9A31-4FEC-859D-049BD658C6D9]]
(define-prefix-command 'help/langtool-map)
(key-chord-define-global "qk" #'help/langtool-map)
(define-key help/langtool-map "c" #'langtool-check-buffer)
(define-key help/langtool-map "C" #'langtool-correct-buffer)
(define-key help/langtool-map "j" #'langtool-goto-previous-error)
(define-key help/langtool-map "k" #'langtool-show-message-at-point)
(define-key help/langtool-map "l" #'langtool-goto-next-error)
(define-key help/langtool-map "q" #'langtool-check-done)
;; orgmode:gcr:vela:52E762F8-9A31-4FEC-859D-049BD658C6D9 ends here

;; [[file:help.org::orgmode:gcr:vela:5C8D8A46-256B-4533-97AD-52968CC92C75][orgmode:gcr:vela:5C8D8A46-256B-4533-97AD-52968CC92C75]]
(key-chord-define-global "TH" (lambda () (interactive) (insert "Th")))
;; orgmode:gcr:vela:5C8D8A46-256B-4533-97AD-52968CC92C75 ends here

;; [[file:help.org::orgmode:gcr:vela:5F07753E-91BA-4B4F-B051-0C7C90B1F04A][orgmode:gcr:vela:5F07753E-91BA-4B4F-B051-0C7C90B1F04A]]
(key-chord-define-global "fj" #'avy-goto-word-1)
(key-chord-define-global "FJ" #'avy-pop-mark)
;; orgmode:gcr:vela:5F07753E-91BA-4B4F-B051-0C7C90B1F04A ends here

;; [[file:help.org::orgmode:gcr:vela:B05E89FC-9FCE-48D6-8112-9BF990A8A15D][orgmode:gcr:vela:B05E89FC-9FCE-48D6-8112-9BF990A8A15D]]
(key-chord-define-global "fk" #'help/safb-help/goto-line)
;; orgmode:gcr:vela:B05E89FC-9FCE-48D6-8112-9BF990A8A15D ends here

;; [[file:help.org::orgmode:gcr:vela:F3708409-D807-4541-95AB-C6298540FD59][orgmode:gcr:vela:F3708409-D807-4541-95AB-C6298540FD59]]
(key-chord-define-global "FK" #'pop-to-mark-command)
;; orgmode:gcr:vela:F3708409-D807-4541-95AB-C6298540FD59 ends here

;; [[file:help.org::orgmode:gcr:vela:0410911F-2D84-4799-8F68-1F3173E318B6][orgmode:gcr:vela:0410911F-2D84-4799-8F68-1F3173E318B6]]
(help/not-on-gui (global-set-key (kbd "s-RET") #'help/smart-open-line))
(help/on-gui (global-set-key (kbd "s-<return>") #'help/smart-open-line))
;; orgmode:gcr:vela:0410911F-2D84-4799-8F68-1F3173E318B6 ends here

;; [[file:help.org::orgmode:gcr:vela:7B79E6A3-90F2-4F3F-AA40-1231D0DDA684][orgmode:gcr:vela:7B79E6A3-90F2-4F3F-AA40-1231D0DDA684]]
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))
;; orgmode:gcr:vela:7B79E6A3-90F2-4F3F-AA40-1231D0DDA684 ends here

;; [[file:help.org::orgmode:gcr:vela:FA4DDBA3-494B-4062-B43F-5D17DB239AF5][orgmode:gcr:vela:FA4DDBA3-494B-4062-B43F-5D17DB239AF5]]
(global-set-key (kbd "s-:") #'my-eval-expression)
;; orgmode:gcr:vela:FA4DDBA3-494B-4062-B43F-5D17DB239AF5 ends here

;; [[file:help.org::orgmode:gcr:vela:65D190DA-D23D-427D-B070-1C74053EDC4E][orgmode:gcr:vela:65D190DA-D23D-427D-B070-1C74053EDC4E]]
(global-set-key (kbd "s-C-n") #'next-line)
(global-set-key (kbd "C-n") #'next-logical-line)
(global-set-key (kbd "s-C-p") #'previous-line)
(global-set-key (kbd "C-p") #'previous-logical-line)
;; orgmode:gcr:vela:65D190DA-D23D-427D-B070-1C74053EDC4E ends here

;; [[file:help.org::orgmode:gcr:vela:C8A58EDC-466A-493E-8709-2A241ED10808][orgmode:gcr:vela:C8A58EDC-466A-493E-8709-2A241ED10808]]
(global-set-key (kbd "M-%") #'anzu-query-replace)
(global-set-key (kbd "C-M-%") #'anzu-query-replace-regexp)
;; orgmode:gcr:vela:C8A58EDC-466A-493E-8709-2A241ED10808 ends here
