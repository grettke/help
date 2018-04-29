;; -*- lexical-binding: t; no-byte-compile: t; -*-

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_EE00DAED-88BD-4271-9CFE-34BDCEE68932][org_gcr_2017-05-12_mara_EE00DAED-88BD-4271-9CFE-34BDCEE68932]]
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)

(load-file "~/src/help/.org-mode-contribute.emacs.el")
;; org_gcr_2017-05-12_mara_EE00DAED-88BD-4271-9CFE-34BDCEE68932 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_289C017E-D5F0-4B8A-987F-A64696094359][org_gcr_2017-05-12_mara_289C017E-D5F0-4B8A-987F-A64696094359]]
(setq custom-file "~/src/help/custom.el")
(load custom-file :noerror)
;; org_gcr_2017-05-12_mara_289C017E-D5F0-4B8A-987F-A64696094359 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_0A242AFE-3101-4F88-A2CB-F230FA19AC64][org_gcr_2017-05-12_mara_0A242AFE-3101-4F88-A2CB-F230FA19AC64]]
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
;; org_gcr_2017-05-12_mara_0A242AFE-3101-4F88-A2CB-F230FA19AC64 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D2A1FF8B-4A1A-4D25-A0CC-D86F3FFD7B28][org_gcr_2017-05-12_mara_D2A1FF8B-4A1A-4D25-A0CC-D86F3FFD7B28]]
(use-package hydra
  :ensure t)
;; org_gcr_2017-05-12_mara_D2A1FF8B-4A1A-4D25-A0CC-D86F3FFD7B28 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B25D3BDE-CB14-440D-8246-B833BD8F1C0B][org_gcr_2017-05-12_mara_B25D3BDE-CB14-440D-8246-B833BD8F1C0B]]
(use-package key-chord
  :ensure t
  :config
  (key-chord-mode t))
;; org_gcr_2017-05-12_mara_B25D3BDE-CB14-440D-8246-B833BD8F1C0B ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_6BB32DFA-105B-4712-BF6D-945A240C29E1][org_gcr_2017-05-12_mara_6BB32DFA-105B-4712-BF6D-945A240C29E1]]
(setq echo-keystrokes 0.02)
;; org_gcr_2017-05-12_mara_6BB32DFA-105B-4712-BF6D-945A240C29E1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_12B73D47-AAFB-4271-92F2-98A18E19DC2A][org_gcr_2017-05-12_mara_12B73D47-AAFB-4271-92F2-98A18E19DC2A]]
(use-package dash
  :ensure t
  :config
  (dash-enable-font-lock))
(use-package dash-functional
  :ensure t)
;; org_gcr_2017-05-12_mara_12B73D47-AAFB-4271-92F2-98A18E19DC2A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D99938CC-B521-4A2D-8DAA-F023FFB1E21E][org_gcr_2017-05-12_mara_D99938CC-B521-4A2D-8DAA-F023FFB1E21E]]
(use-package f
  :ensure t)
;; org_gcr_2017-05-12_mara_D99938CC-B521-4A2D-8DAA-F023FFB1E21E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_04215D1F-F7E8-46E2-A3BC-0D8DEE28B7E1][org_gcr_2017-05-12_mara_04215D1F-F7E8-46E2-A3BC-0D8DEE28B7E1]]
(use-package s
  :ensure t)
;; org_gcr_2017-05-12_mara_04215D1F-F7E8-46E2-A3BC-0D8DEE28B7E1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-23_mara_5BAD0073-631D-4D4E-83CD-5B0CD0C7CAD6][org_gcr_2017-05-23_mara_5BAD0073-631D-4D4E-83CD-5B0CD0C7CAD6]]
(use-package ht
  :ensure t)
;; org_gcr_2017-05-23_mara_5BAD0073-631D-4D4E-83CD-5B0CD0C7CAD6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C063F7CE-637E-43F8-8E16-AFBC68CA7618][org_gcr_2017-05-12_mara_C063F7CE-637E-43F8-8E16-AFBC68CA7618]]
(use-package persistent-soft
  :ensure t)
;; org_gcr_2017-05-12_mara_C063F7CE-637E-43F8-8E16-AFBC68CA7618 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C0E2C1E6-A271-47A1-84C3-BE9382235979][org_gcr_2017-05-12_mara_C0E2C1E6-A271-47A1-84C3-BE9382235979]]
(use-package with-editor
  :ensure t)
;; org_gcr_2017-05-12_mara_C0E2C1E6-A271-47A1-84C3-BE9382235979 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2FD3C2CA-508B-453E-A619-76D6EA4AAF71][org_gcr_2017-05-12_mara_2FD3C2CA-508B-453E-A619-76D6EA4AAF71]]
(use-package diminish)
;; org_gcr_2017-05-12_mara_2FD3C2CA-508B-453E-A619-76D6EA4AAF71 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_555EE82E-410B-4189-BE53-D33346F3F3BE][org_gcr_2017-05-12_mara_555EE82E-410B-4189-BE53-D33346F3F3BE]]
(size-indication-mode)
;; org_gcr_2017-05-12_mara_555EE82E-410B-4189-BE53-D33346F3F3BE ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_BC16CA62-6474-4848-880C-F1EDE2BB5616][org_gcr_2017-05-12_mara_BC16CA62-6474-4848-880C-F1EDE2BB5616]]
(column-number-mode t)
;; org_gcr_2017-05-12_mara_BC16CA62-6474-4848-880C-F1EDE2BB5616 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-06-13_mara_7F117B6D-AFE7-479C-8313-3E9B6B4D967F][org_gcr_2017-06-13_mara_7F117B6D-AFE7-479C-8313-3E9B6B4D967F]]
(use-package smart-mode-line
  :ensure t)
;; org_gcr_2017-06-13_mara_7F117B6D-AFE7-479C-8313-3E9B6B4D967F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-11-15_mara_361908ED-32C9-4339-91AE-F02A2E017A87][org_gcr_2017-11-15_mara_361908ED-32C9-4339-91AE-F02A2E017A87]]
(defvar-local hidden-mode-line-mode nil)

(define-minor-mode hidden-mode-line-mode
  "Minor mode to hide the mode-line in the current buffer."
  :init-value nil
  :global t
  :variable hidden-mode-line-mode
  :group 'editing-basics
  (if hidden-mode-line-mode
      (setq hide-mode-line mode-line-format
            mode-line-format nil)
    (setq mode-line-format hide-mode-line
          hide-mode-line nil))
  (force-mode-line-update)
  ;; Apparently force-mode-line-update is not always enough to
  ;; redisplay the mode-line
  (redraw-display)
  (when (and (called-interactively-p 'interactive)
           hidden-mode-line-mode)
    (run-with-idle-timer
     0 nil 'message
     (concat "Hidden Mode Line Mode enabled.  "
             "Use M-x hidden-mode-line-mode to make the mode-line appear."))))
;; org_gcr_2017-11-15_mara_361908ED-32C9-4339-91AE-F02A2E017A87 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_FF670CDD-5374-49BA-897A-AE1A30B444D6][org_gcr_2017-05-12_mara_FF670CDD-5374-49BA-897A-AE1A30B444D6]]
(defmacro help/on-osx (statement &rest statements)
  "Evaluate the enclosed body only when run on OSX."
  `(when (eq system-type 'darwin)
     ,statement
     ,@statements))
;; org_gcr_2017-05-12_mara_FF670CDD-5374-49BA-897A-AE1A30B444D6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_375D2A3D-54B5-4DBC-B911-38CAB716286A][org_gcr_2017-05-12_mara_375D2A3D-54B5-4DBC-B911-38CAB716286A]]
(help/on-osx
 (use-package exec-path-from-shell
   :ensure t
   :config
   (setq exec-path-from-shell-check-startup-files nil)
   (exec-path-from-shell-initialize)))
;; org_gcr_2017-05-12_mara_375D2A3D-54B5-4DBC-B911-38CAB716286A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F29E41A6-234D-4727-B9DF-75E5F5AC2AD3][org_gcr_2017-05-12_mara_F29E41A6-234D-4727-B9DF-75E5F5AC2AD3]]
(help/on-osx
 (setq mac-control-modifier 'control)
 (setq mac-right-control-modifier 'left)
 (setq mac-command-modifier 'meta)
 (setq mac-right-command-modifier 'left)
 (setq mac-option-modifier 'super)
 (setq mac-right-option-modifier 'left)
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
;; org_gcr_2017-05-12_mara_F29E41A6-234D-4727-B9DF-75E5F5AC2AD3 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_82602D6E-30DB-49CF-A900-1FC9B733C347][org_gcr_2017-05-12_mara_82602D6E-30DB-49CF-A900-1FC9B733C347]]
(help/on-osx
 (defun help/yes-or-no-p (orig-fun &rest args)
   "Prevent yes-or-no-p from activating a dialog."
   (let ((use-dialog-box nil))
     (apply orig-fun args)))
 (advice-add #'yes-or-no-p :around #'help/yes-or-no-p)
 (advice-add #'y-or-n-p :around #'help/yes-or-no-p))
;; org_gcr_2017-05-12_mara_82602D6E-30DB-49CF-A900-1FC9B733C347 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9C48F55A-19D7-4B5F-8779-11BFFF4AE514][org_gcr_2017-05-12_mara_9C48F55A-19D7-4B5F-8779-11BFFF4AE514]]
(defmacro help/on-windows (statement &rest statements)
  "Evaluate the enclosed body only when run on Microsoft Windows."
  `(when (eq system-type 'windows-nt)
     ,statement
     ,@statements))
;; org_gcr_2017-05-12_mara_9C48F55A-19D7-4B5F-8779-11BFFF4AE514 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9CAED015-5B25-41BE-82A9-CBA4D07E8F3D][org_gcr_2017-05-12_mara_9CAED015-5B25-41BE-82A9-CBA4D07E8F3D]]
(help/on-windows
 (setq shell-file-name "cmdproxy.exe"))
;; org_gcr_2017-05-12_mara_9CAED015-5B25-41BE-82A9-CBA4D07E8F3D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7AFA0161-4DCA-4C54-8D3C-9EF3FD529BF4][org_gcr_2017-05-12_mara_7AFA0161-4DCA-4C54-8D3C-9EF3FD529BF4]]
(help/on-windows
 (setq w32-pass-lwindow-to-system nil)
 (defvar w32-lwindow-modifier 'super)
 (setq w32-pass-rwindow-to-system nil)
 (defvar w32-rwindow-modifier 'super))
;; org_gcr_2017-05-12_mara_7AFA0161-4DCA-4C54-8D3C-9EF3FD529BF4 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-23_mara_ED1CAC7D-4B9E-4316-8AB3-85ACDC06B3F4][org_gcr_2017-07-23_mara_ED1CAC7D-4B9E-4316-8AB3-85ACDC06B3F4]]
(defmacro help/on-gnu/linux (statement &rest statements)
  "Evaluate the enclosed body only when run on GNU/Linux"
  `(when (eq system-type 'gnu/linux)
     ,statement
     ,@statements))
;; org_gcr_2017-07-23_mara_ED1CAC7D-4B9E-4316-8AB3-85ACDC06B3F4 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7D37FFE5-2D2B-4CF7-AF27-F3CB8616D81B][org_gcr_2017-05-12_mara_7D37FFE5-2D2B-4CF7-AF27-F3CB8616D81B]]
(defun help/save-all-file-buffers ()
  "Saves every buffer associated with a file."
  (interactive)
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (when (and (buffer-file-name) (buffer-modified-p))
        (save-buffer)))))

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
  (insert "\dots{}"))

(defun help/insert-checkmark ()
  "Insert a checkmark into the current buffer."
  (interactive)
  (insert "\checkmark{}"))

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
            (funcall font-lock-function 1)
            (insert "()")
            (backward-char))
        (read-from-minibuffer prompt initial-contents
                              my-read-expression-map nil
                              'read-expression-history))))

  (defun my-eval-expression (expression &optional arg)
    "Evaluate EXPRESSION adding the result to the kill-ring then
    either display it in a buffer or with a prefix argument ARG
    insert it into this buffer.

Attribution: URL `https://lists.gnu.org/archive/html/help-gnu-emacs/2014-07/msg00135.html'."
    (interactive (list (read (my-read--expression "𝔼𝕍𝔸𝕃: "))
                       current-prefix-arg))
    (let* ((it (eval expression lexical-binding))
           (itstr (pp-to-string it)))
      (kill-new itstr)
      (if arg
          (insert itstr)
        (pp-display-expression it
                               "*HELP Eval Output*")))))

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

Attribuation: URL https://github.com/sachac/.emacs.d/blob/gh-pages/Sacha.org#unfill-paragraph"
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
   (help/update-font)))
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

(defun help/org-weave-gfm (id)
  "Select an ID to export to the same name as Github Flavored Markdown.."
  (interactive "sEnter the ID to export: ")
  (help/org-weave-subtree-gfm id (s-prepend id ".md")))

(defun help/org-weave-readme ()
  (interactive)
  (help/org-weave-subtree-gfm
   "orgmode:gcr:vela:README"
   "README.md"))

(defun help/org-weave-style-guide ()
  (interactive)
  (help/org-weave-subtree-gfm
   "orgmode:gcr:vela:STYLEGUIDE"
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

(defun help/safb-kill-this-buffer ()
  "Save all file buffers and maybe kill this buffer."
  (interactive)
  (help/save-all-file-buffers)
  (kill-this-buffer))

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

(defun help/open-help ()
  "Switch to the buffer backed by `help/help.org'."
  (interactive)
  (if (get-buffer "help/help.org")
      (switch-to-buffer "help/help.org")))

(defun help/open-projects ()
  "Switch to the buffer backed by `bitbucket/projects.org'."
  (interactive)
  (if (get-buffer "bitbucket/projects.org")
      (switch-to-buffer "bitbucket/projects.org")))

(defun help/open-si-projects ()
  "Switch to the buffer backed by `bitbucket-gcrstoneisle/projects.org'."
  (interactive)
  (if (get-buffer "bitbucket-gcrstoneisle/projects.org")
      (switch-to-buffer "bitbucket-gcrstoneisle/projects.org")))

(defun help/move-file (new-location)
  "Write this file to NEW-LOCATION, and delete the old one.

Attribution: URL `http://zck.me/emacs-move-file'"
  (interactive (list (if buffer-file-name
                         (read-file-name "Move file to: ")
                       (read-file-name "Move file to: "
                                       default-directory
                                       (expand-file-name (file-name-nondirectory (buffer-name))
                                                         default-directory)))))
  (when (file-exists-p new-location)
    (delete-file new-location))
  (let ((old-location (buffer-file-name)))
    (write-file new-location t)
    (when (and old-location
               (file-exists-p new-location)
               (not (string-equal old-location new-location)))
      (delete-file old-location))))

(defun help/rename-current-buffer-file ()
  "Renames current buffer and file it is visiting.

Attribution: `http://stackoverflow.com/a/25212377'"
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))


(defun help/sort-lines-ignore-case ()
  "Sort lines ignoring case.

Attribution: `https://stackoverflow.com/questions/20967818/emacs-function-to-case-insensitive-sort-lines'"
  (interactive)
  (let ((sort-fold-case t))
    (call-interactively 'sort-lines)))


(defun help/delete-this-buffer-and-file ()
  "Deletes file connected to this buffer and kills this buffer.

Attribution: URL `https://rejeep.github.io/emacs/elisp/2010/11/16/delete-file-and-buffer-in-emacs.html'"
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Nothing to delete: '%s' is not visiting a file." name)
      (when (yes-or-no-p "Are you sure you want to delete this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully deleted." filename)))))

(defun help/wih ()
  (interactive)
  (when (use-region-p) (call-interactively 'kill-region))
  (insert "#+CATEGORY: Article
#+TAGS: Happiness, Health, philosophy, Yoga
#+TITLE: (Happiness) "))

(defun help/wio ()
  (interactive)
  (when (use-region-p) (call-interactively 'kill-region))
  (insert "#+CATEGORY: Article
#+TAGS: Babel, Emacs, Ide, Lisp, Literate Programming, Programming Language, Reproducible research, elisp, org-mode
#+TITLE: (Emacs+Org-Mode) "))

(defun help/wip ()
  (interactive)
  (when (use-region-p) (call-interactively 'kill-region))
  (let ((name (read-string "Programming language name? ")))
    (insert (format
             "#+CATEGORY: Article
#+TAGS: Programming Language, %s
#+TITLE: (%s) " name name))))

(defconst help/buffalo "(🐃) Buffalo buffalo Buffalo buffalo buffalo buffalo Buffalo buffalo (🐃)"
  "URL: `https://en.wikipedia.org/wiki/Buffalo_buffalo_Buffalo_buffalo_buffalo_buffalo_Buffalo_buffalo'")

(defun help/safb/compile ()
  "Save all file buffers and call `compile'"
  (interactive)
  (help/save-all-file-buffers)
  (call-interactively 'compile))

(defun help/insert-formfeed ()
  (interactive)
  (insert "\f"))

(defun help/itwas ()
  "Attribution: W<"
  (interactive)
  (insert-file-contents-literally "~/src/help/ascii/it-was-a-dark-and-stormy-night.asc"))

(defun help/pie-blurb ()
  "Attribution: FontAwesome"
  (interactive)
  (insert-file-contents-literally "~/src/help/ascii/pie.asc"))

(defun remove-vowel ($string &optional $from $to)
  "Remove the following letters: {a e i o u}.

When called interactively, work on current paragraph or text selection.

When called in lisp code, if ξstring is non-nil, returns a changed string.
If ξstring nil, change the text in the region between positions ξfrom ξto.

Attribution: URL `http://ergoemacs.org/emacs/elisp_command_working_on_string_or_region.html'"
  (interactive
   (if (use-region-p)
       (list nil (region-beginning) (region-end))
     (let ((bds (bounds-of-thing-at-point 'paragraph)) )
       (list nil (car bds) (cdr bds)) ) ) )

  (let (workOnStringP inputStr outputStr)
    (setq workOnStringP (if $string t nil))
    (setq inputStr (if workOnStringP $string (buffer-substring-no-properties $from $to)))
    (setq outputStr
          (let ((case-fold-search t))
            (replace-regexp-in-string "a\\|e\\|i\\|o\\|u\\|" "" inputStr) )  )

    (if workOnStringP
        outputStr
      (save-excursion
        (delete-region $from $to)
        (goto-char $from)
        (insert outputStr) )) ) )

(defun help/indent-buffer ()
  "Indent the currently visited buffer.

URL: `http://emacsredux.com/blog/2013/03/27/indent-region-or-buffer/'"
  (interactive)
  (indent-region (point-min) (point-max)))

(defun help/indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer.

URL: `http://emacsredux.com/blog/2013/03/27/indent-region-or-buffer/'"
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indented selected region."))
      (progn
        (help/indent-buffer)
        (message "Indented buffer.")))))

(defun help/alist-set (key val alist &optional symbol)
  "Set property KEY to VAL in ALIST. Return new alist.
This creates the association if it is missing, and otherwise sets
the cdr of the first matching association in the list. It does
not create duplicate associations. By default, key comparison is
done with `equal'. However, if SYMBOL is non-nil, then `eq' is
used instead.

This method may mutate the original alist, but you still need to
use the return value of this method instead of the original
alist, to ensure correct results.

Atribution: URL `https://emacs.stackexchange.com/a/33893/341'"
  (if-let ((pair (if symbol (assq key alist) (assoc key alist))))
      (setcdr pair val)
    (push (cons key val) alist))
  alist)

(defun help/org-time-stamp-with-seconds-now ()
  (interactive)
  (let ((current-prefix-arg '(16)))
    (call-interactively 'org-time-stamp)))

(defun help/insert-datestamp-us ()
  "Produces and inserts a US datestamp."
  (interactive)
  (insert (format-time-string "%m/%d/%y")))

(defun help/insert-datestamp-us-full-year ()
  "Produces and inserts a US datestamp with full year."
  (interactive)
  (insert (format-time-string "%m/%d/%Y")))

(defun help/insert-datestamp-us-words ()
  "Produces and inserts a US datestamp using words."
  (interactive)
  (insert (format-time-string "%A %B %d, %Y")))
;; org_gcr_2017-05-12_mara_7D37FFE5-2D2B-4CF7-AF27-F3CB8616D81B ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7354096C-3F3A-408E-8F1C-79ABB054040F][org_gcr_2017-05-12_mara_7354096C-3F3A-408E-8F1C-79ABB054040F]]
(defconst help/column-width 78)
(setq-default fill-column help/column-width)
;; org_gcr_2017-05-12_mara_7354096C-3F3A-408E-8F1C-79ABB054040F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_38909B55-115D-44E4-B84F-70285016BF92][org_gcr_2017-05-12_mara_38909B55-115D-44E4-B84F-70285016BF92]]
(setq colon-double-space nil)
;; org_gcr_2017-05-12_mara_38909B55-115D-44E4-B84F-70285016BF92 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1986C8FB-6C8F-43F6-811D-D95577160064][org_gcr_2017-05-12_mara_1986C8FB-6C8F-43F6-811D-D95577160064]]
(desktop-save-mode t)
(setq desktop-restore-eager 10)
;; org_gcr_2017-05-12_mara_1986C8FB-6C8F-43F6-811D-D95577160064 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_40A89EBE-247D-43B1-A606-896B172681D8][org_gcr_2017-05-12_mara_40A89EBE-247D-43B1-A606-896B172681D8]]
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode 1)
  (global-set-key (kbd "C-M-u") #'undo-tree-visualize)
  :diminish undo-tree-mode)
;; org_gcr_2017-05-12_mara_40A89EBE-247D-43B1-A606-896B172681D8 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B41C6C0B-AC1A-44A4-9D0F-471A781BCA81][org_gcr_2017-05-12_mara_B41C6C0B-AC1A-44A4-9D0F-471A781BCA81]]
(setq require-final-newline t)
;; org_gcr_2017-05-12_mara_B41C6C0B-AC1A-44A4-9D0F-471A781BCA81 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_60C775FC-0ACD-47E3-8724-8F4C48980081][org_gcr_2017-05-12_mara_60C775FC-0ACD-47E3-8724-8F4C48980081]]
(setq track-eol t)
(setq line-move-visual nil)
;; org_gcr_2017-05-12_mara_60C775FC-0ACD-47E3-8724-8F4C48980081 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_6E2D611F-11F0-4703-AC88-AA11CEE56F8D][org_gcr_2017-05-12_mara_6E2D611F-11F0-4703-AC88-AA11CEE56F8D]]
(setq scroll-preserve-screen-position t)
;; org_gcr_2017-05-12_mara_6E2D611F-11F0-4703-AC88-AA11CEE56F8D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F6787724-7C59-4BD3-B436-0AB39E4F96E9][org_gcr_2017-05-12_mara_F6787724-7C59-4BD3-B436-0AB39E4F96E9]]
(setq scroll-conservatively 101)
;; org_gcr_2017-05-12_mara_F6787724-7C59-4BD3-B436-0AB39E4F96E9 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1BA609EB-C430-4CE0-BD33-9524EBB5A0AC][org_gcr_2017-05-12_mara_1BA609EB-C430-4CE0-BD33-9524EBB5A0AC]]
(use-package stripe-buffer
  :ensure t)
;; org_gcr_2017-05-12_mara_1BA609EB-C430-4CE0-BD33-9524EBB5A0AC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1710CA80-60CB-4E40-94E9-C38A2E0A0DE9][org_gcr_2017-05-12_mara_1710CA80-60CB-4E40-94E9-C38A2E0A0DE9]]
(setq sentence-end-double-space nil)
;; org_gcr_2017-05-12_mara_1710CA80-60CB-4E40-94E9-C38A2E0A0DE9 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A04E6B4A-EFC6-4AE3-946B-E08CF4E02DD9][org_gcr_2017-05-12_mara_A04E6B4A-EFC6-4AE3-946B-E08CF4E02DD9]]
(add-hook 'before-save-hook #'help/delete-trailing-whitespace)
;; org_gcr_2017-05-12_mara_A04E6B4A-EFC6-4AE3-946B-E08CF4E02DD9 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_14A9724E-F0E0-40CA-9FD8-142CB77B87BF][org_gcr_2017-05-12_mara_14A9724E-F0E0-40CA-9FD8-142CB77B87BF]]
(use-package expand-region
  :ensure t)
;; org_gcr_2017-05-12_mara_14A9724E-F0E0-40CA-9FD8-142CB77B87BF ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_11CC1DCC-05D6-4564-A40B-DE2AD0A7C46D][org_gcr_2017-05-12_mara_11CC1DCC-05D6-4564-A40B-DE2AD0A7C46D]]
(use-package page-break-lines
  :diminish page-break-lines-mode)
;; org_gcr_2017-05-12_mara_11CC1DCC-05D6-4564-A40B-DE2AD0A7C46D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_87233BFD-A241-48A6-9113-B383B30F9BC5][org_gcr_2017-05-12_mara_87233BFD-A241-48A6-9113-B383B30F9BC5]]
(advice-add #'backward-page :after #'recenter)
(advice-add #'forward-page :after #'recenter)
;; org_gcr_2017-05-12_mara_87233BFD-A241-48A6-9113-B383B30F9BC5 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B8BDE36B-4B27-4580-BA34-35C047FBEA62][org_gcr_2017-05-12_mara_B8BDE36B-4B27-4580-BA34-35C047FBEA62]]
(use-package mwim
  :ensure t
  :config
  (global-set-key (kbd "C-a") 'mwim-beginning-of-code-or-line))
;; org_gcr_2017-05-12_mara_B8BDE36B-4B27-4580-BA34-35C047FBEA62 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-06-28_mara_EE77505E-5757-409C-9E87-2FA685145AB2][org_gcr_2017-06-28_mara_EE77505E-5757-409C-9E87-2FA685145AB2]]
(use-package indent-guide
  :ensure t
  :diminish 'indent-guide-mode)
;; org_gcr_2017-06-28_mara_EE77505E-5757-409C-9E87-2FA685145AB2 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-19_mara_845BEC94-54CC-46D3-B85F-7B537944E328][org_gcr_2017-05-19_mara_845BEC94-54CC-46D3-B85F-7B537944E328]]
(defhydra hydra-ibuffer-main (:color pink :hint nil)
  "
   ^Navigation^ | ^Mark^        | ^Actions^        | ^View^
  -^----------^-+-^----^--------+-^-------^--------+-^----^-------
    _k_:    ʌ   | _m_: mark     | _D_: delete      | _g_: refresh
   _RET_: visit | _u_: unmark   | _S_: save        | _s_: sort
    _j_:    v   | _*_: specific | _a_: all actions | _/_: filter
  -^----------^-+-^----^--------+-^-------^--------+-^----^-------
  "
  ("j" ibuffer-forward-line)
  ("RET" ibuffer-visit-buffer :color blue)
  ("k" ibuffer-backward-line)

  ("m" ibuffer-mark-forward)
  ("u" ibuffer-unmark-forward)
  ("*" hydra-ibuffer-mark/body :color blue)

  ("D" ibuffer-do-delete)
  ("S" ibuffer-do-save)
  ("a" hydra-ibuffer-action/body :color blue)

  ("g" ibuffer-update)
  ("s" hydra-ibuffer-sort/body :color blue)
  ("/" hydra-ibuffer-filter/body :color blue)

  ("o" ibuffer-visit-buffer-other-window "other window" :color blue)
  ("q" ibuffer-quit "quit ibuffer" :color blue)
  ("." nil "toggle hydra" :color blue))

(defhydra hydra-ibuffer-mark (:color teal :columns 5
                                     :after-exit (hydra-ibuffer-main/body))
  "Mark"
  ("*" ibuffer-unmark-all "unmark all")
  ("M" ibuffer-mark-by-mode "mode")
  ("m" ibuffer-mark-modified-buffers "modified")
  ("u" ibuffer-mark-unsaved-buffers "unsaved")
  ("s" ibuffer-mark-special-buffers "special")
  ("r" ibuffer-mark-read-only-buffers "read-only")
  ("/" ibuffer-mark-dired-buffers "dired")
  ("e" ibuffer-mark-dissociated-buffers "dissociated")
  ("h" ibuffer-mark-help-buffers "help")
  ("z" ibuffer-mark-compressed-file-buffers "compressed")
  ("b" hydra-ibuffer-main/body "back" :color blue))

(defhydra hydra-ibuffer-action (:color teal :columns 4
                                       :after-exit
                                       (if (eq major-mode 'ibuffer-mode)
                                           (hydra-ibuffer-main/body)))
  "Action"
  ("A" ibuffer-do-view "view")
  ("E" ibuffer-do-eval "eval")
  ("F" ibuffer-do-shell-command-file "shell-command-file")
  ("I" ibuffer-do-query-replace-regexp "query-replace-regexp")
  ("H" ibuffer-do-view-other-frame "view-other-frame")
  ("N" ibuffer-do-shell-command-pipe-replace "shell-cmd-pipe-replace")
  ("M" ibuffer-do-toggle-modified "toggle-modified")
  ("O" ibuffer-do-occur "occur")
  ("P" ibuffer-do-print "print")
  ("Q" ibuffer-do-query-replace "query-replace")
  ("R" ibuffer-do-rename-uniquely "rename-uniquely")
  ("T" ibuffer-do-toggle-read-only "toggle-read-only")
  ("U" ibuffer-do-replace-regexp "replace-regexp")
  ("V" ibuffer-do-revert "revert")
  ("W" ibuffer-do-view-and-eval "view-and-eval")
  ("X" ibuffer-do-shell-command-pipe "shell-command-pipe")
  ("b" nil "back"))

(defhydra hydra-ibuffer-sort (:color amaranth :columns 3)
  "Sort"
  ("i" ibuffer-invert-sorting "invert")
  ("a" ibuffer-do-sort-by-alphabetic "alphabetic")
  ("v" ibuffer-do-sort-by-recency "recently used")
  ("s" ibuffer-do-sort-by-size "size")
  ("f" ibuffer-do-sort-by-filename/process "filename")
  ("m" ibuffer-do-sort-by-major-mode "mode")
  ("b" hydra-ibuffer-main/body "back" :color blue))

(defhydra hydra-ibuffer-filter (:color amaranth :columns 4)
  "Filter"
  ("m" ibuffer-filter-by-used-mode "mode")
  ("M" ibuffer-filter-by-derived-mode "derived mode")
  ("n" ibuffer-filter-by-name "name")
  ("c" ibuffer-filter-by-content "content")
  ("e" ibuffer-filter-by-predicate "predicate")
  ("f" ibuffer-filter-by-filename "filename")
  (">" ibuffer-filter-by-size-gt "size")
  ("<" ibuffer-filter-by-size-lt "size")
  ("/" ibuffer-filter-disable "disable")
  ("b" hydra-ibuffer-main/body "back" :color blue))
(use-package ibuffer
  :config
  (define-key ibuffer-mode-map "." #'hydra-ibuffer-main/body))
(use-package ibuffer-vc
  :ensure t)
(defun help/ibuffer-hook-fn ()
  "HELP customizations."
  (interactive)
  (setq ibuffer-expert t)
  (setq ibuffer-show-empty-filter-groups nil)
  (ibuffer-auto-mode t)
  (stripe-buffer-mode)
  (ibuffer-vc-set-filter-groups-by-vc-root)
  (unless (eq ibuffer-sorting-mode 'alphabetic)
    (ibuffer-do-sort-by-alphabetic)))
(add-hook 'ibuffer-mode-hooks #'help/ibuffer-hook-fn)
;; org_gcr_2017-05-19_mara_845BEC94-54CC-46D3-B85F-7B537944E328 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-20_mara_51310F49-2C54-43DC-AA11-CA3A4ABF1A5F][org_gcr_2017-07-20_mara_51310F49-2C54-43DC-AA11-CA3A4ABF1A5F]]
(use-package face-remap
  :diminish 'buffer-face-mode)
;; org_gcr_2017-07-20_mara_51310F49-2C54-43DC-AA11-CA3A4ABF1A5F ends here

;; [[file:~/src/help/help.org::org_gcr_2018-01-03_mara_F64F240D-3891-46C0-8989-6124AEF60518][org_gcr_2018-01-03_mara_F64F240D-3891-46C0-8989-6124AEF60518]]
(use-package smart-shift
  :ensure t
  :config
  (global-smart-shift-mode 1)
  (defhydra help/hydra/smart-shift (:color blue
                                           :hint nil)
    "
Smart-Shift: (q to quit)
    ↑
    _i_
← _j_   _l_ →
    _k_
    ↓
"
    ("j" smart-shift-left :exit nil)
    ("k" smart-shift-down :exit nil)
    ("i" smart-shift-up :exit nil)
    ("l" smart-shift-right :exit nil)
    ("q" nil))
  (global-set-key (kbd "C-s-j") #'help/hydra/smart-shift/body))
;; org_gcr_2018-01-03_mara_F64F240D-3891-46C0-8989-6124AEF60518 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-04-12T21-31-52-05-00_mara_4844006E-A8C3-4F45-BA6D-FFC6B3BFF7DC][org_gcr_2018-04-12T21-31-52-05-00_mara_4844006E-A8C3-4F45-BA6D-FFC6B3BFF7DC]]
(use-package unfill
  :ensure t)
;; org_gcr_2018-04-12T21-31-52-05-00_mara_4844006E-A8C3-4F45-BA6D-FFC6B3BFF7DC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_611E83B9-E797-4512-95EE-643473026607][org_gcr_2017-05-12_mara_611E83B9-E797-4512-95EE-643473026607]]
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
  (defvar help/my-hs-hide nil "Current state of hideshow for toggling all.")
  (defun help/my-toggle-hideshow-all () "Toggle hideshow all."
         (interactive)
         (setq help/my-hs-hide (not help/my-hs-hide))
         (if help/my-hs-hide
             (hs-hide-all)
           (hs-show-all)))
  :diminish hs-minor-mode)
;; org_gcr_2017-05-12_mara_611E83B9-E797-4512-95EE-643473026607 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-01-03_mara_0B7D49CD-6177-4F18-8C2E-540B01E34340][org_gcr_2018-01-03_mara_0B7D49CD-6177-4F18-8C2E-540B01E34340]]
(defun aj-toggle-fold ()
  "Toggle fold all lines larger than indentation on current line

URL: `https://stackoverflow.com/questions/1587972/how-to-display-indentation-guides-in-emacs/4459159#4459159'"
  (interactive)
  (let ((col 1))
    (save-excursion
      (back-to-indentation)
      (setq col (+ 1 (current-column)))
      (set-selective-display
       (if selective-display nil (or col 1))))))
(global-set-key (kbd "s-q") #'aj-toggle-fold)
;; org_gcr_2018-01-03_mara_0B7D49CD-6177-4F18-8C2E-540B01E34340 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_510C1AB4-A266-40A6-9DCF-25B827E60786][org_gcr_2017-05-12_mara_510C1AB4-A266-40A6-9DCF-25B827E60786]]
(use-package macrostep
  :ensure t)
;; org_gcr_2017-05-12_mara_510C1AB4-A266-40A6-9DCF-25B827E60786 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_CD327ED5-E83D-471F-9A30-B7A3FBB67486][org_gcr_2017-05-12_mara_CD327ED5-E83D-471F-9A30-B7A3FBB67486]]
(setq-default eval-expression-print-level nil)
;; org_gcr_2017-05-12_mara_CD327ED5-E83D-471F-9A30-B7A3FBB67486 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_41240CBD-3217-466E-BD0F-5737D8BC68BF][org_gcr_2017-05-12_mara_41240CBD-3217-466E-BD0F-5737D8BC68BF]]
(put #'upcase-region 'disabled nil)
(put #'downcase-region 'disabled nil)
(put #'narrow-to-region 'disabled nil)
;; org_gcr_2017-05-12_mara_41240CBD-3217-466E-BD0F-5737D8BC68BF ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A9233A74-18F8-4C65-AC14-1A6C41F69B80][org_gcr_2017-05-12_mara_A9233A74-18F8-4C65-AC14-1A6C41F69B80]]
(add-to-list 'load-path (getenv "CCRYPT"))
(use-package ps-ccrypt)
;; org_gcr_2017-05-12_mara_A9233A74-18F8-4C65-AC14-1A6C41F69B80 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E5296E8A-C433-4FBF-97EE-8B95918B5A06][org_gcr_2017-05-12_mara_E5296E8A-C433-4FBF-97EE-8B95918B5A06]]
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
;; org_gcr_2017-05-12_mara_E5296E8A-C433-4FBF-97EE-8B95918B5A06 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_47F75687-F505-42B3-9E2B-EA832B41F7EC][org_gcr_2017-05-12_mara_47F75687-F505-42B3-9E2B-EA832B41F7EC]]
(setq eshell-prompt-regexp "^.+@.+:.+> ")
(setq eshell-prompt-function
      (lambda ()
        (concat
         (user-login-name)
         "@"
         (system-name)
         ":"
         (eshell/pwd)
         "⮞ ")))
;; org_gcr_2017-05-12_mara_47F75687-F505-42B3-9E2B-EA832B41F7EC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_11891C85-578F-417F-9956-FEBB52045CDC][org_gcr_2017-05-12_mara_11891C85-578F-417F-9956-FEBB52045CDC]]
(setq auto-save-default t)
(setq make-backup-files nil)
(setq auto-save-visited-file-name t)
(setq auto-save-interval 0)
(setq auto-save-timeout (* 60 5))
;; org_gcr_2017-05-12_mara_11891C85-578F-417F-9956-FEBB52045CDC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A02347F8-B3BB-4F43-8987-718530B6E053][org_gcr_2017-05-12_mara_A02347F8-B3BB-4F43-8987-718530B6E053]]
(add-hook 'focus-out-hook #'help/save-all-file-buffers)
;; org_gcr_2017-05-12_mara_A02347F8-B3BB-4F43-8987-718530B6E053 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_EE759660-2FB2-4BC1-AC4D-EFD21E5B02C0][org_gcr_2017-05-12_mara_EE759660-2FB2-4BC1-AC4D-EFD21E5B02C0]]
(global-auto-revert-mode 1)
(diminish 'auto-revert-mode)
;; org_gcr_2017-05-12_mara_EE759660-2FB2-4BC1-AC4D-EFD21E5B02C0 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E2747C5E-DA22-4B22-9C0A-EB9DEED9A5F7][org_gcr_2017-05-12_mara_E2747C5E-DA22-4B22-9C0A-EB9DEED9A5F7]]
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
    (message (concat "org-babel-tangle began at: "
                     (help/get-timestamp)))
    (org-babel-tangle)
    (let* ((dur (float-time (time-since start)))
           (msg (format "Tangled for %s " (seconds-to-string dur))))
      (message (concat "org-babel-tangle completed on: "
                       (help/get-timestamp)))
      (message msg)
      (help/on-gui (alert msg :title "Org-Mode")))))

(defun help/safb-org-babel-detangle ()
  (interactive)
  (help/save-all-file-buffers)
  (let ((start (current-time)))
    (message (concat "org-babel-detangle began at: "
                     (help/get-timestamp)
                     ">"))
    (org-babel-detangle)
    (let* ((dur (float-time (time-since start)))
           (msg (format "DE-Tangled for %s" (seconds-to-string dur))))
      (message (concat "org-babel-detangle on: "
                       (help/get-timestamp)))
      (message msg)
      (help/on-gui (alert msg :title "Org-Mode")))))

(defun help/safb-other-window ()
  (interactive)
  (help/save-all-file-buffers)
  (other-window 1))

(defun help/ace-window ()
  (interactive)
  (help/save-all-file-buffers)
  (call-interactively #'ace-window))

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

(defun help/safb-normal-mode ()
  (interactive)
  (help/save-all-file-buffers)
  (call-interactively #'normal-mode)
  (help/save-all-file-buffers))
;; org_gcr_2017-05-12_mara_E2747C5E-DA22-4B22-9C0A-EB9DEED9A5F7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_CF605547-BD59-48FD-8CE1-47AD7F28D1B6][org_gcr_2017-05-12_mara_CF605547-BD59-48FD-8CE1-47AD7F28D1B6]]
(add-to-list 'find-file-not-found-functions #'help/create-non-existent-directory)
;; org_gcr_2017-05-12_mara_CF605547-BD59-48FD-8CE1-47AD7F28D1B6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_6F55AC0E-3877-4935-B93C-22A132C672AB][org_gcr_2017-05-12_mara_6F55AC0E-3877-4935-B93C-22A132C672AB]]
(setq large-file-warning-threshold (* 1024 1024 2))
;; org_gcr_2017-05-12_mara_6F55AC0E-3877-4935-B93C-22A132C672AB ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7102B5B4-168F-4E0E-87BD-EEA78DF6837A][org_gcr_2017-05-12_mara_7102B5B4-168F-4E0E-87BD-EEA78DF6837A]]
(setq temporary-file-directory "/tmp")
;; org_gcr_2017-05-12_mara_7102B5B4-168F-4E0E-87BD-EEA78DF6837A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F0004AA3-B2A6-4265-A9D5-13590DCBEE9A][org_gcr_2017-05-12_mara_F0004AA3-B2A6-4265-A9D5-13590DCBEE9A]]
(use-package hardhat
  :ensure t
  :diminish global-hardhat-mode
  :config
  (global-hardhat-mode 1))
;; org_gcr_2017-05-12_mara_F0004AA3-B2A6-4265-A9D5-13590DCBEE9A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B746C905-E59E-4F33-88F9-5F6CD32C0DE2][org_gcr_2017-05-12_mara_B746C905-E59E-4F33-88F9-5F6CD32C0DE2]]
(use-package imenu
  :config
  (setq imenu-sort-function #'imenu--sort-by-name))
(defun help/try-to-add-imenu ()
  "Add Imenu to modes that have `font-lock-mode' activated.

Attribution: URL http://www.emacswiki.org/emacs/ImenuMode"
  (condition-case nil (imenu-add-to-menubar "Imenu") (error nil)))
(add-hook 'font-lock-mode-hook #'help/try-to-add-imenu)
;; org_gcr_2017-05-12_mara_B746C905-E59E-4F33-88F9-5F6CD32C0DE2 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E8A1EB03-CB72-4761-BC0A-555670C0D452][org_gcr_2017-05-12_mara_E8A1EB03-CB72-4761-BC0A-555670C0D452]]
(use-package imenu-list
  :ensure t
  :config
  (setq imenu-list-focus-after-activation t)
  (setq imenu-list-auto-resize t)
  (setq imenu-list-position 'left)
  (setq imenu-list-size 40))
;; org_gcr_2017-05-12_mara_E8A1EB03-CB72-4761-BC0A-555670C0D452 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9F4ACDEA-BC93-4BB6-BEA2-B622FF676EB6][org_gcr_2017-05-12_mara_9F4ACDEA-BC93-4BB6-BEA2-B622FF676EB6]]
(use-package ido)
(use-package flx-ido
  :ensure t
  :config
  (ido-mode t))
(use-package ido-hacks
  :ensure t)
(use-package ido-completing-read+
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
;; org_gcr_2017-05-12_mara_9F4ACDEA-BC93-4BB6-BEA2-B622FF676EB6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8C3DB0A1-305E-4746-8455-E8CB880842B1][org_gcr_2017-05-12_mara_8C3DB0A1-305E-4746-8455-E8CB880842B1]]
(use-package smex
  :ensure t
  :config
  (smex-initialize))
;; org_gcr_2017-05-12_mara_8C3DB0A1-305E-4746-8455-E8CB880842B1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5295DEDE-687E-440B-89B9-9BF9BF301595][org_gcr_2017-05-12_mara_5295DEDE-687E-440B-89B9-9BF9BF301595]]
(setq ido-use-url-at-point t)
(setq ido-use-filename-at-point 'guess)
;; org_gcr_2017-05-12_mara_5295DEDE-687E-440B-89B9-9BF9BF301595 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_501304FE-D5DB-40FA-B1BB-01A580C4A155][org_gcr_2017-05-12_mara_501304FE-D5DB-40FA-B1BB-01A580C4A155]]
(set-fontset-font "fontset-default" nil
                  (font-spec :size 20 :name "Symbola"))
;; org_gcr_2017-05-12_mara_501304FE-D5DB-40FA-B1BB-01A580C4A155 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_ADAB043E-BF70-4AE0-BA60-CD08D82474FA][org_gcr_2017-05-12_mara_ADAB043E-BF70-4AE0-BA60-CD08D82474FA]]
(global-font-lock-mode t)
;; org_gcr_2017-05-12_mara_ADAB043E-BF70-4AE0-BA60-CD08D82474FA ends here

;; [[file:~/src/help/help.org::org_gcr_2018-04-22T14-17-00-05-00_mara_5C4879AB-6272-4269-A515-CD2FD35F3549][org_gcr_2018-04-22T14-17-00-05-00_mara_5C4879AB-6272-4269-A515-CD2FD35F3549]]
(use-package fontawesome
  :ensure t)
;; org_gcr_2018-04-22T14-17-00-05-00_mara_5C4879AB-6272-4269-A515-CD2FD35F3549 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2B0564C9-2091-4364-8A28-E33A548284A2][org_gcr_2017-05-12_mara_2B0564C9-2091-4364-8A28-E33A548284A2]]
(use-package avy
  :ensure t
  :config)
;; org_gcr_2017-05-12_mara_2B0564C9-2091-4364-8A28-E33A548284A2 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9336B241-3511-4BB1-9CBA-30CA8BD4EFAB][org_gcr_2017-05-12_mara_9336B241-3511-4BB1-9CBA-30CA8BD4EFAB]]
(use-package writegood-mode
  :ensure t
  :config
  (eval-after-load "writegood-mode"
    '(diminish 'writegood-mode)))
;; org_gcr_2017-05-12_mara_9336B241-3511-4BB1-9CBA-30CA8BD4EFAB ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1CB16C79-7EC3-4375-BAD3-FC612A1C0B9B][org_gcr_2017-05-12_mara_1CB16C79-7EC3-4375-BAD3-FC612A1C0B9B]]
(use-package langtool
  :ensure t
  :init
  (setq langtool-language-tool-jar (getenv "LANGTOOL"))
  (setq langtool-mother-tongue "en")
  (setq langtool-java-bin (concat (getenv "JAVA_HOME") "/bin/java"))
  (setq langtool-disabled-rules nil)
  (setq langtool-java-user-arguments '("-Dfile.encoding=UTF-8"))
  (setq langtool-user-arguments nil)
  (defhydra help/hydra/both/langtool (:color blue :hint nil)
    "
 Langtool:^         ^|^                   ^|^
-------------------^^+^-------------------^+^----------------------
 _h_: check buffer   | _j_: next error     | _i_: brief message
 _y_: corrent buffer | _k_: previous error | _o_: detailed message
 _n_: finished       | _q_: quit           |
 "
    ("h" langtool-check :exit nil)
    ("y" langtool-correct-buffer :exit nil)
    ("n" langtool-check-done)

    ("j" langtool-goto-next-error :exit nil)
    ("k" langtool-goto-previous-error :exit nil)

    ("i" langtool-show-brief-message-at-point :exit nil)
    ("o" langtool-show-message-at-point :exit nil)

    ("q" nil))
  (key-chord-define-global "qk" #'help/hydra/both/langtool/body))
;; org_gcr_2017-05-12_mara_1CB16C79-7EC3-4375-BAD3-FC612A1C0B9B ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A17A873C-5FC0-473F-842F-875CA99981D5][org_gcr_2017-05-12_mara_A17A873C-5FC0-473F-842F-875CA99981D5]]
(with-eval-after-load "flycheck"
  (flycheck-define-checker proselint
    "A linter for prose."
    :command ("/Users/gcr/proselint/env/bin/proselint" source-inplace)
    :error-patterns
    ((warning line-start (file-name) ":" line ":" column ": "
              (id (one-or-more (not (any " "))))
              (message (one-or-more not-newline)
                       (zero-or-more "\n" (any " ") (one-or-more not-newline)))
              line-end))
    :modes (text-mode org-mode markdown-mode gfm-mode))
  (add-to-list 'flycheck-checkers 'proselint))
;; org_gcr_2017-05-12_mara_A17A873C-5FC0-473F-842F-875CA99981D5 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_54E04F50-33B3-411D-B759-19408AE1DE48][org_gcr_2017-05-12_mara_54E04F50-33B3-411D-B759-19408AE1DE48]]
(setq kmacro-ring-max 32)
;; org_gcr_2017-05-12_mara_54E04F50-33B3-411D-B759-19408AE1DE48 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_0BE407C6-354F-4E92-B7DC-66000217CCE6][org_gcr_2017-05-12_mara_0BE407C6-354F-4E92-B7DC-66000217CCE6]]
(use-package elmacro
  :ensure t
  :diminish (elmacro-mode)
  :config
  (elmacro-mode))
;; org_gcr_2017-05-12_mara_0BE407C6-354F-4E92-B7DC-66000217CCE6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_909723A4-3234-40B4-B741-E59C3C9E3E0A][org_gcr_2017-05-12_mara_909723A4-3234-40B4-B741-E59C3C9E3E0A]]
(use-package fuzzy
  :ensure t)
(use-package auto-complete
  :ensure t
  :config
  (use-package auto-complete-config)
  (setq ac-quick-help-prefer-pos-tip nil)
  (ac-config-default)
  (setq ac-auto-start nil)
  (help/on-gui (ac-set-trigger-key "<tab>"))
  :diminish auto-complete-mode)
(use-package auto-complete-chunk
  :ensure t)
;; org_gcr_2017-05-12_mara_909723A4-3234-40B4-B741-E59C3C9E3E0A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_0F225CED-24F2-4801-A3AF-7E45BF787E71][org_gcr_2017-05-12_mara_0F225CED-24F2-4801-A3AF-7E45BF787E71]]
(use-package auto-complete-chunk
  :ensure t)
;; org_gcr_2017-05-12_mara_0F225CED-24F2-4801-A3AF-7E45BF787E71 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_DA93DCF6-E0AB-4B92-9708-4DE4781AA2ED][org_gcr_2017-05-12_mara_DA93DCF6-E0AB-4B92-9708-4DE4781AA2ED]]
(use-package browse-kill-ring
  :ensure t
  :config
  (browse-kill-ring-default-keybindings)
  (setq browse-kill-ring-highlight-current-entry t)
  (setq browse-kill-ring-highlight-inserted-item t)
  (setq browse-kill-ring-show-preview nil)
  (setq browse-kill-ring-separator
        ".-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-.-~-
")
  (global-set-key (kbd "M-y") #'browse-kill-ring))
;; org_gcr_2017-05-12_mara_DA93DCF6-E0AB-4B92-9708-4DE4781AA2ED ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B696F088-B5EB-4507-8EBE-C719995EB5DA][org_gcr_2017-05-12_mara_B696F088-B5EB-4507-8EBE-C719995EB5DA]]
(delete-selection-mode t)
;; org_gcr_2017-05-12_mara_B696F088-B5EB-4507-8EBE-C719995EB5DA ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_DDBFF500-4387-47FD-95BD-7F6F369AB0E8][org_gcr_2017-05-12_mara_DDBFF500-4387-47FD-95BD-7F6F369AB0E8]]
(setq save-interprogram-paste-before-kill t)
;; org_gcr_2017-05-12_mara_DDBFF500-4387-47FD-95BD-7F6F369AB0E8 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_087C8A85-9AC0-48C5-A19B-6C5E97F40572][org_gcr_2017-05-12_mara_087C8A85-9AC0-48C5-A19B-6C5E97F40572]]
(setq mouse-drag-copy-region t)
;; org_gcr_2017-05-12_mara_087C8A85-9AC0-48C5-A19B-6C5E97F40572 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F19234A5-0F40-46FE-946A-4B3F47C96424][org_gcr_2017-05-12_mara_F19234A5-0F40-46FE-946A-4B3F47C96424]]
(fset #'yes-or-no-p #'y-or-n-p)
;; org_gcr_2017-05-12_mara_F19234A5-0F40-46FE-946A-4B3F47C96424 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2B089323-1D60-416F-83A7-792AEE290E67][org_gcr_2017-05-12_mara_2B089323-1D60-416F-83A7-792AEE290E67]]
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)
;; org_gcr_2017-05-12_mara_2B089323-1D60-416F-83A7-792AEE290E67 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A0D0BC89-5180-4B18-BFDC-17650901FB7F][org_gcr_2017-05-12_mara_A0D0BC89-5180-4B18-BFDC-17650901FB7F]]
(setq enable-recursive-minibuffers t)
(minibuffer-depth-indicate-mode t)
;; org_gcr_2017-05-12_mara_A0D0BC89-5180-4B18-BFDC-17650901FB7F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-29_mara_59F9B6F3-A62C-424A-AC57-D2677788FF1A][org_gcr_2017-07-29_mara_59F9B6F3-A62C-424A-AC57-D2677788FF1A]]
(add-hook 'minibuffer-setup-hook #'help/double-gc-cons-threshold)
(add-hook 'minibuffer-exit-hook #'help/set-gc-cons-threshold)
;; org_gcr_2017-07-29_mara_59F9B6F3-A62C-424A-AC57-D2677788FF1A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_4AA275B8-8C5E-498F-969E-28459D7E88E5][org_gcr_2017-05-12_mara_4AA275B8-8C5E-498F-969E-28459D7E88E5]]
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse t)
;; org_gcr_2017-05-12_mara_4AA275B8-8C5E-498F-969E-28459D7E88E5 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_0EB7874B-7C34-4879-97FA-C487115385EE][org_gcr_2017-05-12_mara_0EB7874B-7C34-4879-97FA-C487115385EE]]
(defun help/occur-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (turn-on-stripe-buffer-mode)
  (occur-rename-buffer))
(add-hook 'occur-mode-hook #'help/occur-mode-hook-fn)
(define-key occur-mode-map (kbd "n") #'next-logical-line)
(define-key occur-mode-map (kbd "p") #'previous-logical-line)
(add-hook 'occur-mode-find-occurrence-hook #'help/recenter-line-near-top-fn)
;; org_gcr_2017-05-12_mara_0EB7874B-7C34-4879-97FA-C487115385EE ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_66255B58-A96D-445E-83BF-F597E4BA4FB8][org_gcr_2017-05-12_mara_66255B58-A96D-445E-83BF-F597E4BA4FB8]]
(use-package alert
  :ensure t
  :config
  (setq alert-fade-time 10)
  (setq alert-default-style 'message)
  (help/on-gui
   (help/on-osx
    (setq alert-default-style 'notifier)))
  (setq alert-reveal-idle-time 120))
;; org_gcr_2017-05-12_mara_66255B58-A96D-445E-83BF-F597E4BA4FB8 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_814E8B43-89FD-4EC2-9C5A-EEE03D92A918][org_gcr_2017-05-12_mara_814E8B43-89FD-4EC2-9C5A-EEE03D92A918]]
(use-package projectile
  :ensure t
  :config
  (projectile-global-mode t)
  (global-set-key (kbd "s-c") #'projectile-find-file)
  (help/on-windows
   (setq projectile-indexing-method 'alien))
  :diminish projectile-mode)
;; org_gcr_2017-05-12_mara_814E8B43-89FD-4EC2-9C5A-EEE03D92A918 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A3BF1E41-D15E-43FD-A379-E5283602BBB3][org_gcr_2017-05-12_mara_A3BF1E41-D15E-43FD-A379-E5283602BBB3]]
(eval-after-load "projectile"
  '(progn (setq magit-repository-directories (mapcar (lambda (dir)
                                                       (substring dir 0 -1))
                                                     (remove-if-not (lambda (project)
                                                                      (file-directory-p (concat project "/.git/")))
                                                                    (projectile-relevant-known-projects)))

                magit-repository-directories-depth 1)))
;; org_gcr_2017-05-12_mara_A3BF1E41-D15E-43FD-A379-E5283602BBB3 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_22C5C379-532B-488C-A155-6212DB791ED6][org_gcr_2017-05-12_mara_22C5C379-532B-488C-A155-6212DB791ED6]]
(use-package pp
  :commands (pp-display-expression))
;; org_gcr_2017-05-12_mara_22C5C379-532B-488C-A155-6212DB791ED6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5418551F-1788-4236-B98B-B963BE0032F7][org_gcr_2017-05-12_mara_5418551F-1788-4236-B98B-B963BE0032F7]]
(setq register-preview-delay 2)
(setq register-separator "\n\n")
;; org_gcr_2017-05-12_mara_5418551F-1788-4236-B98B-B963BE0032F7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_82232186-B19E-402C-B9E7-6FD6839FD7F6][org_gcr_2017-05-12_mara_82232186-B19E-402C-B9E7-6FD6839FD7F6]]
(use-package anzu
  :ensure t
  :config
  (global-anzu-mode t)
  (setq anzu-mode-lighter "")
  (setq anzu-deactivate-region t)
  (setq anzu-search-threshold 1000)
  (setq anzu-replace-to-string-separator " ⇒ "))
;; org_gcr_2017-05-12_mara_82232186-B19E-402C-B9E7-6FD6839FD7F6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9D56BD82-FDED-4326-9078-547457D593ED][org_gcr_2017-05-12_mara_9D56BD82-FDED-4326-9078-547457D593ED]]
(save-place-mode 1)
;; org_gcr_2017-05-12_mara_9D56BD82-FDED-4326-9078-547457D593ED ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2C0AC56F-8956-4EC1-90A9-2FBCC4AA5AD1][org_gcr_2017-05-12_mara_2C0AC56F-8956-4EC1-90A9-2FBCC4AA5AD1]]
(setq savehist-save-minibuffer-history t)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring
        last-kbd-macro
        kmacro-ring
        shell-command-history))
(savehist-mode t)
;; org_gcr_2017-05-12_mara_2C0AC56F-8956-4EC1-90A9-2FBCC4AA5AD1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D92CB94A-5CDE-49D3-83AD-65242EACA752][org_gcr_2017-05-12_mara_D92CB94A-5CDE-49D3-83AD-65242EACA752]]
(setq history-delete-duplicates t)
;; org_gcr_2017-05-12_mara_D92CB94A-5CDE-49D3-83AD-65242EACA752 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-08-01_mara_98164910-DD0A-4AAE-A9B2-FAF864BCCE1C][org_gcr_2017-08-01_mara_98164910-DD0A-4AAE-A9B2-FAF864BCCE1C]]
(setq search-default-mode #'char-fold-to-regexp)
;; org_gcr_2017-08-01_mara_98164910-DD0A-4AAE-A9B2-FAF864BCCE1C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-08-01_mara_1FA6AB2F-B0A9-491E-89D3-BFDFBD173EDD][org_gcr_2017-08-01_mara_1FA6AB2F-B0A9-491E-89D3-BFDFBD173EDD]]
(setq replace-char-fold t)
;; org_gcr_2017-08-01_mara_1FA6AB2F-B0A9-491E-89D3-BFDFBD173EDD ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9F40A141-4464-4D4C-A062-54BEC12992FF][org_gcr_2017-05-12_mara_9F40A141-4464-4D4C-A062-54BEC12992FF]]
(use-package wgrep
  :ensure t
  :config
  (setq wgrep-auto-save-buffer t))
;; org_gcr_2017-05-12_mara_9F40A141-4464-4D4C-A062-54BEC12992FF ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_58F6AD1E-7E9B-4650-B859-F9C0540C74B6][org_gcr_2017-05-12_mara_58F6AD1E-7E9B-4650-B859-F9C0540C74B6]]
(use-package ag
  :ensure t
  :config
  (setq ag-highlight-search t)
  (setq ag-reuse-window nil)
  (setq ag-reuse-buffers nil)
  (add-to-list 'ag-arguments "--hidden")
  (defun help/ag-mode-hook-fn ()
    "HELP ag customizations."
    (interactive)
    (turn-on-stripe-buffer-mode))
  (defun help/ag-mode-finished-hook-fn ()
    "HELP ag finished hook function."
    (interactive)
    (let ((compilation-scroll-output 'first-error))
      (pop-to-buffer next-error-last-buffer)))
  (add-hook 'ag-mode-hook #'help/ag-mode-hook-fn)
  (add-hook 'ag-search-finished-hook #'help/ag-mode-finished-hook-fn)
  (defhydra help/hydra/ag (:color blue
                                  :hint nil)
    "
`ag', The Silver Searcher:
  Present in window:
    Search in folder:
      _j_ limit search by file type _k_ search in everything
    Search in project:
      _l_ limit search by file type _;_ search in everything
  Present in dired:
    Search in folder:
      _u_ limit search by file type _i_ search in everything
    Search in project:
      _o_ limit search by file type _p_ search in everything
  Other:
    _n_ close every other buffer _m_ close every buffer _q_ quit
"
    ("u" ag-dired-regexp)
    ("i" ag-dired)
    ("o" ag-project-dired-regexp)
    ("p" ag-project-dired)
    ("j" ag-files)
    ("k" ag)
    ("l" ag-project-files)
    (";" ag-project)
    ("n" ag-kill-other-buffers)
    ("m" ag-kill-buffers)
    ("q" nil)))
;; org_gcr_2017-05-12_mara_58F6AD1E-7E9B-4650-B859-F9C0540C74B6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E4E1E1A0-1353-4483-BE1C-746097F60CB6][org_gcr_2017-05-12_mara_E4E1E1A0-1353-4483-BE1C-746097F60CB6]]
(use-package wgrep-ag
  :ensure t
  :after ag)
;; org_gcr_2017-05-12_mara_E4E1E1A0-1353-4483-BE1C-746097F60CB6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5EDEEFA9-7DED-41D9-AD9D-5C48BA580AC5][org_gcr_2017-05-12_mara_5EDEEFA9-7DED-41D9-AD9D-5C48BA580AC5]]
(defun help/block-regex (special)
  "Make an ispell skip-region alist for a SPECIAL block."
  (interactive)
  `(,(concat help/org-special-pre "BEGIN_" special)
    .
    ,(concat help/org-special-pre "END_" special)))
;; org_gcr_2017-05-12_mara_5EDEEFA9-7DED-41D9-AD9D-5C48BA580AC5 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D15F7E3E-9D35-4AB3-A043-67154E3D588A][org_gcr_2017-05-12_mara_D15F7E3E-9D35-4AB3-A043-67154E3D588A]]
(add-to-list 'ispell-skip-region-alist (help/block-regex "SRC"))
;; org_gcr_2017-05-12_mara_D15F7E3E-9D35-4AB3-A043-67154E3D588A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_EB14B834-8486-4750-96C5-E5E3CFB4C19B][org_gcr_2017-05-12_mara_EB14B834-8486-4750-96C5-E5E3CFB4C19B]]
(add-to-list 'ispell-skip-region-alist (help/block-regex "EXAMPLE"))
;; org_gcr_2017-05-12_mara_EB14B834-8486-4750-96C5-E5E3CFB4C19B ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F7E77F03-5A3E-4DC1-A345-4BE8E4C7FF11][org_gcr_2017-05-12_mara_F7E77F03-5A3E-4DC1-A345-4BE8E4C7FF11]]
(add-to-list 'ispell-skip-region-alist '("^\s*:PROPERTIES\:$" . "^\s*:END\:$"))
;; org_gcr_2017-05-12_mara_F7E77F03-5A3E-4DC1-A345-4BE8E4C7FF11 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5459C549-E938-4899-827D-D03707983E52][org_gcr_2017-05-12_mara_5459C549-E938-4899-827D-D03707983E52]]
(add-to-list 'ispell-skip-region-alist '("\\[fn:.+:" . "\\]"))
;; org_gcr_2017-05-12_mara_5459C549-E938-4899-827D-D03707983E52 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_ECD4198B-7335-4141-8256-971748EE4D22][org_gcr_2017-05-12_mara_ECD4198B-7335-4141-8256-971748EE4D22]]
(add-to-list 'ispell-skip-region-alist '("^http" . "\\]"))
;; org_gcr_2017-05-12_mara_ECD4198B-7335-4141-8256-971748EE4D22 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1048E593-5E66-4F70-A591-B17A18634D8F][org_gcr_2017-05-12_mara_1048E593-5E66-4F70-A591-B17A18634D8F]]
(add-to-list 'ispell-skip-region-alist '("- \\*.+" . ".*\\*: "))
;; org_gcr_2017-05-12_mara_1048E593-5E66-4F70-A591-B17A18634D8F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5DB6D56D-1C05-4816-8BB6-8F3E936E5EFC][org_gcr_2017-05-12_mara_5DB6D56D-1C05-4816-8BB6-8F3E936E5EFC]]
(add-to-list 'ispell-skip-region-alist '("\\rarr"))
;; org_gcr_2017-05-12_mara_5DB6D56D-1C05-4816-8BB6-8F3E936E5EFC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5C415ECB-91FC-44C2-9886-29704EF74836][org_gcr_2017-05-12_mara_5C415ECB-91FC-44C2-9886-29704EF74836]]
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
;; org_gcr_2017-05-12_mara_5C415ECB-91FC-44C2-9886-29704EF74836 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_BC64FFC2-D587-4D4F-B693-71B3731A71F1][org_gcr_2017-05-12_mara_BC64FFC2-D587-4D4F-B693-71B3731A71F1]]
(help/on-osx
 (defun help/ido-find-file ()
   "Find file as root if necessary.

Attribution: URL `http://emacsredux.com/blog/2013/04/21/edit-files-as-root/'"
   (unless (and buffer-file-name
                (file-writable-p buffer-file-name))
     (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

 (advice-add #'ido-find-file :after #'help/ido-find-file))
;; org_gcr_2017-05-12_mara_BC64FFC2-D587-4D4F-B693-71B3731A71F1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9931B79E-7900-4DE1-B097-45A8DE90CB44][org_gcr_2017-05-12_mara_9931B79E-7900-4DE1-B097-45A8DE90CB44]]
(use-package flycheck
  :ensure t
  :diminish flycheck-mode)
;; org_gcr_2017-05-12_mara_9931B79E-7900-4DE1-B097-45A8DE90CB44 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C23EBD24-B2DC-40CB-9F9E-CAEB03FF8EDC][org_gcr_2017-05-12_mara_C23EBD24-B2DC-40CB-9F9E-CAEB03FF8EDC]]
(setq-default indent-tabs-mode nil)
;; org_gcr_2017-05-12_mara_C23EBD24-B2DC-40CB-9F9E-CAEB03FF8EDC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_3FFCD7B4-0055-4BE8-938F-EEA09D077343][org_gcr_2017-05-12_mara_3FFCD7B4-0055-4BE8-938F-EEA09D077343]]
(defun help/untabify-buffer-if-not-indent-tabs-mode ()
  "Untabify buffer if `indent-tabs-mode' is false.

Attribution: URL `http://www.emacswiki.org/emacs/UntabifyUponSave'"
  (interactive)
  (when (not indent-tabs-mode)
    (untabify (point-min) (point-max))))

(defun help/untabify-buffer-or-region-if-not-indent-tabs-mode ()
  "Untabify a region if selected, otherwise the whole buffer.

URL: `http://emacsredux.com/blog/2013/03/27/indent-region-or-buffer/'"
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (untabify (region-beginning) (region-end))
          (message "Untabified selected region."))
      (progn
        (help/untabify-buffer-if-not-indent-tabs-mode)
        (message "Untabified buffer.")))))

(add-hook 'before-save-hook #'help/untabify-buffer-if-not-indent-tabs-mode)
;; org_gcr_2017-05-12_mara_3FFCD7B4-0055-4BE8-938F-EEA09D077343 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5A73C4A8-C2AE-4F36-9D64-3FB6A4FF31E0][org_gcr_2017-05-12_mara_5A73C4A8-C2AE-4F36-9D64-3FB6A4FF31E0]]
(setq-default tab-width 2)
;; org_gcr_2017-05-12_mara_5A73C4A8-C2AE-4F36-9D64-3FB6A4FF31E0 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_3E77B825-E0A4-40EC-88DC-3F5C1E1445CE][org_gcr_2017-05-12_mara_3E77B825-E0A4-40EC-88DC-3F5C1E1445CE]]
(add-to-list 'load-path "~/src/magit/lisp")
(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/src/magit/Documentation/"))
;; org_gcr_2017-05-12_mara_3E77B825-E0A4-40EC-88DC-3F5C1E1445CE ends here

;; [[file:~/src/help/help.org::org_gcr_2018-02-24_mara_A2D8DA8E-CE8C-4F26-9DED-7E0AA2DD3CCA][org_gcr_2018-02-24_mara_A2D8DA8E-CE8C-4F26-9DED-7E0AA2DD3CCA]]
(defun help/magit-kill-buffers ()
  "Restore window configuration and kill all Magit buffers.

Attribution: URL `https://manuel-uberti.github.io/emacs/2018/02/17/magit-bury-buffer/'"
  (interactive)
  (let ((buffers (magit-mode-get-buffers)))
    (magit-restore-window-configuration)
    (mapc #'kill-buffer buffers)))

(bind-key "q" #'help/magit-kill-buffers magit-status-mode-map)
;; org_gcr_2018-02-24_mara_A2D8DA8E-CE8C-4F26-9DED-7E0AA2DD3CCA ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A078BCD9-1559-412A-8D51-528CDDD4E402][org_gcr_2017-05-12_mara_A078BCD9-1559-412A-8D51-528CDDD4E402]]
(eval-after-load "log-edit"
  '(remove-hook 'log-edit-hook 'log-edit-insert-message-template))
;; org_gcr_2017-05-12_mara_A078BCD9-1559-412A-8D51-528CDDD4E402 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A696BECA-ED39-4A7A-911A-66C396E0925C][org_gcr_2017-05-12_mara_A696BECA-ED39-4A7A-911A-66C396E0925C]]
(use-package git-timemachine
  :ensure t)
;; org_gcr_2017-05-12_mara_A696BECA-ED39-4A7A-911A-66C396E0925C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A4E407FE-DD42-458A-BD83-2EFD71C1D728][org_gcr_2017-05-12_mara_A4E407FE-DD42-458A-BD83-2EFD71C1D728]]
(global-set-key (kbd "C-M-w") #'git-timemachine)
(global-set-key (kbd "s-e") #'help/safb-help/magit-status)
(global-set-key (kbd "s-r") #'help/safb-vc-revert)
(global-set-key (kbd "s-f") #'help/safb-help/vc-next-action)
;; org_gcr_2017-05-12_mara_A4E407FE-DD42-458A-BD83-2EFD71C1D728 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C374930E-5AE3-478D-B3F1-E7791791D530][org_gcr_2017-05-12_mara_C374930E-5AE3-478D-B3F1-E7791791D530]]
(add-to-list 'auto-mode-alist '(".gitignore$" . text-mode))
;; org_gcr_2017-05-12_mara_C374930E-5AE3-478D-B3F1-E7791791D530 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_0183A8E0-5A59-4A4B-9260-FF5E8C5CAF2C][org_gcr_2017-05-12_mara_0183A8E0-5A59-4A4B-9260-FF5E8C5CAF2C]]
(use-package gitignore-mode
  :ensure t)

(use-package gitconfig-mode
  :ensure t)

(use-package gitattributes-mode
  :ensure t)
;; org_gcr_2017-05-12_mara_0183A8E0-5A59-4A4B-9260-FF5E8C5CAF2C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-12-22_mara_9F9E1F38-1FD7-474F-B2D9-4D9086316632][org_gcr_2017-12-22_mara_9F9E1F38-1FD7-474F-B2D9-4D9086316632]]
(defhydra help/hydra/commit-message (:color blue
                                            :hint nil)
  "
Commit Message Descriptor (q to quit)
_E_nhancement: \"an increase or improvement in quality, value, or extent.\"
_R_efinement: \"the improvement or clarification of something by the making of small changes.\"
_C_orrection: \"a change that rectifies an error or inaccuracy.\"
C_l_oses | _F_ixes | Resol_v_es
_T_odo | _A_rchives | Rest_o_res
"
  ("E" (lambda () (interactive) (insert "(nhncmnt) ")))
  ("R" (lambda () (interactive) (insert "(rfnmnt) ")))
  ("C" (lambda () (interactive) (insert "(crrctn) ")))
  ("l" (lambda () (interactive (insert "Closes #"))))
  ("F" (lambda () (interactive (insert "Fixes #"))))
  ("v" (lambda () (interactive (insert "Resolves #"))))
  ("T" (lambda () (interactive) (insert "(ToDoDoDoDoDoDo)")))
  ("A" (lambda () (interactive (insert "(rchvs) "))))
  ("o" (lambda () (interactive (insert "(rslvs) "))))
  ("q" nil))
;; org_gcr_2017-12-22_mara_9F9E1F38-1FD7-474F-B2D9-4D9086316632 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-12-22_mara_93DCBFA6-1D9E-4126-ABA7-070A42297927][org_gcr_2017-12-22_mara_93DCBFA6-1D9E-4126-ABA7-070A42297927]]
(defun help/commit-message-mode-hook-fn ()
  "HELP Commit Message Mode Hook Function"
  (key-chord-define-local "hh" #'help/hydra/commit-message/body))
(add-hook 'vc-git-log-edit-mode-hook #'help/commit-message-mode-hook-fn)
(add-hook 'git-commit-setup-hook #'help/commit-message-mode-hook-fn)
;; org_gcr_2017-12-22_mara_93DCBFA6-1D9E-4126-ABA7-070A42297927 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-01-04_mara_3088E232-25CB-4DCA-8FA0-ADD739504E08][org_gcr_2018-01-04_mara_3088E232-25CB-4DCA-8FA0-ADD739504E08]]
(diminish "smerge-mode")
;; org_gcr_2018-01-04_mara_3088E232-25CB-4DCA-8FA0-ADD739504E08 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_BCF6CC3A-98AD-4845-BBE2-EB601E1A8550][org_gcr_2017-05-12_mara_BCF6CC3A-98AD-4845-BBE2-EB601E1A8550]]
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
;; org_gcr_2017-05-12_mara_BCF6CC3A-98AD-4845-BBE2-EB601E1A8550 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_081024E6-F582-40DF-A96F-7216725FDD00][org_gcr_2017-05-12_mara_081024E6-F582-40DF-A96F-7216725FDD00]]
(use-package whitespace
  :ensure t
  :config
  (setq whitespace-style '(tab-mark))
  (setq whitespace-display-mappings
        '((tab-mark ?\t [?↹ ?\t] [?␉ ?\t] [?\t])))
  (setq whitespace-line-column help/column-width)
  (global-whitespace-mode t)
  (setq whitespace-global-modes '(not go-mode))
  :diminish whitespace-mode global-whitespace-mode)
;; org_gcr_2017-05-12_mara_081024E6-F582-40DF-A96F-7216725FDD00 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_BC6CD3BC-C736-40EE-84FD-33E2BB514A0C][org_gcr_2017-05-12_mara_BC6CD3BC-C736-40EE-84FD-33E2BB514A0C]]
(diminish 'visual-line-mode)
;; org_gcr_2017-05-12_mara_BC6CD3BC-C736-40EE-84FD-33E2BB514A0C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_EA8B5E3D-0F0B-4BD8-A510-864EC04BABD7][org_gcr_2017-05-12_mara_EA8B5E3D-0F0B-4BD8-A510-864EC04BABD7]]
(setq visual-line-fringe-indicators '(nil right-curly-arrow))
;; org_gcr_2017-05-12_mara_EA8B5E3D-0F0B-4BD8-A510-864EC04BABD7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-23_mara_9517CF5A-C95B-454E-A68F-1E4BA677C08C][org_gcr_2017-05-23_mara_9517CF5A-C95B-454E-A68F-1E4BA677C08C]]
(use-package parent-mode
  :ensure t
  :config
  (defun help/parent-mode-display ()
    "Display this buffer's mode hierarchy."
    (interactive)
    (let ((ls (parent-mode-list major-mode)))
      (princ ls))))
;; org_gcr_2017-05-23_mara_9517CF5A-C95B-454E-A68F-1E4BA677C08C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-11-30_mara_75B00948-177E-487A-83A9-2F690611CA59][org_gcr_2017-11-30_mara_75B00948-177E-487A-83A9-2F690611CA59]]
(use-package auto-capitalize
  :ensure t
  :config
  (diminish 'auto-capitalize)
  (add-to-list 'auto-capitalize-words "HTTP")
  (add-to-list 'auto-capitalize-words "HTTPS")
  (add-to-list 'auto-capitalize-words "Fr")
  (add-to-list 'auto-capitalize-words "SI")
  (add-to-list 'auto-capitalize-words "24B")
  (add-to-list 'desktop-minor-mode-handlers
               '(auto-capitalize . (lambda (desktop-buffer-locals)))))
;; org_gcr_2017-11-30_mara_75B00948-177E-487A-83A9-2F690611CA59 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-11-30_mara_0D5DE620-895E-4BC5-AA15-1E0D19B1815A][org_gcr_2017-11-30_mara_0D5DE620-895E-4BC5-AA15-1E0D19B1815A]]
(global-set-key (kbd "C-;") (lambda () (interactive) (insert ". ")))
(global-set-key (kbd "C-.") (lambda () (interactive) (insert ", ")))
(global-set-key (kbd "C-,") (lambda () (interactive) (insert "; ")))
;; org_gcr_2017-11-30_mara_0D5DE620-895E-4BC5-AA15-1E0D19B1815A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1FF81C16-BEB0-4B42-806A-D033566FC63F][org_gcr_2017-05-12_mara_1FF81C16-BEB0-4B42-806A-D033566FC63F]]
(defun help/text-mode-fn ()
  "HELP's standard configuration for buffer's working with text, often for
   programming."
  (interactive)
  (auto-fill-mode)
  (diminish 'auto-fill-function)
  (visual-line-mode)
  (help/try-to-add-imenu)
  (turn-on-page-break-lines-mode)
  (turn-on-auto-capitalize-mode))
(add-hook 'text-mode-hook #'help/text-mode-fn)
;; org_gcr_2017-05-12_mara_1FF81C16-BEB0-4B42-806A-D033566FC63F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-11-17_mara_FCDC3DE5-3584-4431-A443-FFC8F9EA8253][org_gcr_2017-11-17_mara_FCDC3DE5-3584-4431-A443-FFC8F9EA8253]]
(add-to-list 'org-babel-load-languages '(text . t))
;; org_gcr_2017-11-17_mara_FCDC3DE5-3584-4431-A443-FFC8F9EA8253 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B9BA4FF5-62AC-4806-8E74-766E36C5148C][org_gcr_2017-05-12_mara_B9BA4FF5-62AC-4806-8E74-766E36C5148C]]
(setq help/prog-modes '(makefile-mode-hook
                        ruby-mode-hook
                        sh-mode-hook
                        plantuml-mode-hook
                        tex-mode-hook
                        R-mode-hook
                        SAS-mode-hook
                        graphviz-dot-mode-hook
                        c-mode-common-hook
                        php-mode-hook
                        scad-mode-hook
                        web-mode-hook
                        js2-mode-hook
                        json-mode-hook
                        yaml-mode-hook
                        crontab-mode-hook
                        apache-mode-hook
                        python-mode-hook
                        gnu-apl-mode-hook
                        geiser-mode-hook
                        geiser-repl-mode-hook
                        go-mode-hook
                        TeX-mode-hook
                        apples-mode-hook))
;; org_gcr_2017-05-12_mara_B9BA4FF5-62AC-4806-8E74-766E36C5148C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F410CDAB-D4FE-42B8-BCB7-F37DC500CE86][org_gcr_2017-05-12_mara_F410CDAB-D4FE-42B8-BCB7-F37DC500CE86]]
(setq help/lisp-modes
      '(emacs-lisp-mode-hook
        ielm-mode-hook
        lisp-interaction-mode-hook
        scheme-mode-hook
        inferior-scheme-mode-hook
        geiser-mode-hook
        geiser-repl-mode-hook))
(setq help/prog-modes (append help/prog-modes help/lisp-modes))
;; org_gcr_2017-05-12_mara_F410CDAB-D4FE-42B8-BCB7-F37DC500CE86 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_02408658-D767-4D6E-8AAA-2BE1933BCBD1][org_gcr_2017-05-12_mara_02408658-D767-4D6E-8AAA-2BE1933BCBD1]]
(use-package aggressive-indent
  :ensure t
  :diminish aggressive-indent-mode
  :config
  (global-aggressive-indent-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'minibuffer-inactive-mode))
;; org_gcr_2017-05-12_mara_02408658-D767-4D6E-8AAA-2BE1933BCBD1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_3AB5C00B-E0FF-40A1-9C3B-420CB4E8D417][org_gcr_2017-05-12_mara_3AB5C00B-E0FF-40A1-9C3B-420CB4E8D417]]
(use-package smartparens
  :ensure t
  :config
  (setq sp-show-pair-from-inside nil)
  (require 'smartparens-config)
  :diminish smartparens-mode)
;; org_gcr_2017-05-12_mara_3AB5C00B-E0FF-40A1-9C3B-420CB4E8D417 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A3C53136-65BE-4771-A214-19E102E0158B][org_gcr_2017-05-12_mara_A3C53136-65BE-4771-A214-19E102E0158B]]
(defun help/prog-mode-hook-fn ()
  (interactive)
  (help/text-mode-fn)
  (smartparens-strict-mode)
  (unless (equal major-mode 'fundamental-mode)
    (hs-minor-mode))
  (help/on-gui (local-set-key (kbd "<return>") #'newline-and-indent))
  (turn-off-auto-capitalize-mode))

(let ()
  (--each help/prog-modes
    (add-hook it #'help/prog-mode-hook-fn)))
;; org_gcr_2017-05-12_mara_A3C53136-65BE-4771-A214-19E102E0158B ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C344E972-D31C-48F4-8E3B-83A799DE7D37][org_gcr_2017-05-12_mara_C344E972-D31C-48F4-8E3B-83A799DE7D37]]
(setq initial-scratch-message ";; Happy Hacking 🖖\n\n")
;; org_gcr_2017-05-12_mara_C344E972-D31C-48F4-8E3B-83A799DE7D37 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A929CBE0-E6D3-4A45-8341-15F50EF2F93A][org_gcr_2017-05-12_mara_A929CBE0-E6D3-4A45-8341-15F50EF2F93A]]
(setq initial-major-mode 'emacs-lisp-mode)
;; org_gcr_2017-05-12_mara_A929CBE0-E6D3-4A45-8341-15F50EF2F93A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1F06F375-41F5-48FA-B787-8B937BDF56FC][org_gcr_2017-05-12_mara_1F06F375-41F5-48FA-B787-8B937BDF56FC]]
(with-current-buffer "*scratch*"
  (emacs-lock-mode 'kill))
;; org_gcr_2017-05-12_mara_1F06F375-41F5-48FA-B787-8B937BDF56FC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2757B16C-18ED-4F29-8DFD-CE51B930BA81][org_gcr_2017-05-12_mara_2757B16C-18ED-4F29-8DFD-CE51B930BA81]]
(use-package persistent-scratch
  :ensure t
  :config
  (persistent-scratch-setup-default))
;; org_gcr_2017-05-12_mara_2757B16C-18ED-4F29-8DFD-CE51B930BA81 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_BEA970EF-78FA-448D-96B3-1E135640D16A][org_gcr_2017-05-12_mara_BEA970EF-78FA-448D-96B3-1E135640D16A]]
(use-package lexbind-mode)
;; org_gcr_2017-05-12_mara_BEA970EF-78FA-448D-96B3-1E135640D16A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-16_mara_766EBC8F-2A7C-49BB-9916-BE2AAEE019A4][org_gcr_2017-07-16_mara_766EBC8F-2A7C-49BB-9916-BE2AAEE019A4]]
(use-package highlight-quoted
  :ensure t)
;; org_gcr_2017-07-16_mara_766EBC8F-2A7C-49BB-9916-BE2AAEE019A4 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-16_mara_A1EC88B1-71CF-458E-A626-D6A07108BA3F][org_gcr_2017-07-16_mara_A1EC88B1-71CF-458E-A626-D6A07108BA3F]]
(use-package highlight-stages
  :ensure t
  :config
  (diminish 'highlight-stages-mode))
;; org_gcr_2017-07-16_mara_A1EC88B1-71CF-458E-A626-D6A07108BA3F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D8F41BFE-D2F5-4B86-BFED-B3DE5EA2133C][org_gcr_2017-05-12_mara_D8F41BFE-D2F5-4B86-BFED-B3DE5EA2133C]]
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
  (local-set-key (kbd "s-0") #'pp-macroexpand-last-sexp)
  (local-set-key (kbd "s-8") #'lispy-multiline)
  (local-set-key (kbd "s-*") #'lispy-oneline)
  (local-set-key (kbd "s-9") #'macrostep-expand))

(defhydra help/hydra-elisp-mode (:color blue
                                        :hint nil)
  "
elisp-mode:
 _h_ eval-buffer
  _q_ quit
"
  ("h" eval-buffer)
  ("q" nil))
(key-chord-define emacs-lisp-mode-map "hh" #'help/hydra-elisp-mode/body)

(defun help/emacs-lisp-mode-hook-fn ()
  (interactive)
  (help/elisp-mode-local-bindings)
  (lexbind-mode)
  (eldoc-mode)
  (diminish 'eldoc-mode)
  (highlight-quoted-mode)
  (highlight-stages-mode))

(setq ielm-noisy nil)

(setq ielm-prompt "ⅇLISP⮞ ")

(setq ielm-dynamic-return nil)

(setq ielm-dynamic-multiline-inputs nil)

(defun help/ielm-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (help/ielm-auto-complete)
  (local-unset-key (kbd "C-j"))
  (local-set-key (kbd "<C-return>") #'ielm-send-input))

(add-hook 'ielm-mode-hook #'help/ielm-mode-hook-fn)

(defun help/general-lisp-prettify ()
  (mapc (lambda (pair) (push pair prettify-symbols-alist))
        '(("nil" . ?∅)
          ("*" . ?×)
          ("/" . ?÷)
          ("<=" . ?≤)
          (">=" . ?≥)
          ("lambda" . ?λ)
          ("not" . ?¬)
          ("and" . ?∧)
          ("or" . ?∨)
          ("sqrt" . ?√))))

(defun help/general-lisp-mode-hook-fn ()
  (highlight-quoted-mode)
  (highlight-stages-mode)
  (help/general-lisp-prettify)
  (local-set-key (kbd "#") #'endless/sharp))

(let ()
  (--each help/lisp-modes
    (add-hook it #'help/general-lisp-mode-hook-fn)))

(add-hook 'emacs-lisp-mode-hook #'help/emacs-lisp-mode-hook-fn)
;; org_gcr_2017-05-12_mara_D8F41BFE-D2F5-4B86-BFED-B3DE5EA2133C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7DB4D819-0D2D-482B-AA02-9CB14F6DA288][org_gcr_2017-05-12_mara_7DB4D819-0D2D-482B-AA02-9CB14F6DA288]]
(use-package elisp-refs
  :ensure t)
;; org_gcr_2017-05-12_mara_7DB4D819-0D2D-482B-AA02-9CB14F6DA288 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2B359320-563A-4E80-BB8E-04965E20EBEE][org_gcr_2017-05-12_mara_2B359320-563A-4E80-BB8E-04965E20EBEE]]
(use-package package-lint
  :ensure t)

(use-package flycheck-package
  :ensure t
  :after (package-lint))
;; org_gcr_2017-05-12_mara_2B359320-563A-4E80-BB8E-04965E20EBEE ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-27T21-28-18-05-00_mara_02B76E03-F34A-45A7-A7DC-30209F91095E][org_gcr_2018-03-27T21-28-18-05-00_mara_02B76E03-F34A-45A7-A7DC-30209F91095E]]
(use-package lispy
  :ensure t)
;; org_gcr_2018-03-27T21-28-18-05-00_mara_02B76E03-F34A-45A7-A7DC-30209F91095E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9D21E326-1742-4DD0-BDF9-624D21873F92][org_gcr_2017-05-12_mara_9D21E326-1742-4DD0-BDF9-624D21873F92]]
(setq org-babel-min-lines-for-block-output 0)
;; org_gcr_2017-05-12_mara_9D21E326-1742-4DD0-BDF9-624D21873F92 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9427EB38-B623-4B99-B562-C2FD737EB0D7][org_gcr_2017-05-12_mara_9427EB38-B623-4B99-B562-C2FD737EB0D7]]
(setq org-edit-src-auto-save-idle-delay 0)
(setq org-edit-src-turn-on-auto-save nil)
;; org_gcr_2017-05-12_mara_9427EB38-B623-4B99-B562-C2FD737EB0D7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_780AFFD3-B8F3-4D0F-A3C1-DB30C2182730][org_gcr_2017-05-12_mara_780AFFD3-B8F3-4D0F-A3C1-DB30C2182730]]
(defun help/org-babel-after-execute-hook ()
  "HELP settings for the `org-babel-after-execute-hook'.

This does not interfere with exports.

Attribution: URL `https://lists.gnu.org/archive/html/emacs-orgmode/2015-01/msg00534.html'"
  (interactive)
  (org-redisplay-inline-images))

(add-hook 'org-babel-after-execute-hook #'help/org-babel-after-execute-hook)
;; org_gcr_2017-05-12_mara_780AFFD3-B8F3-4D0F-A3C1-DB30C2182730 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F0536A1B-195D-4AB9-90B8-D73651740849][org_gcr_2017-05-12_mara_F0536A1B-195D-4AB9-90B8-D73651740849]]
(setq org-confirm-babel-evaluate nil)
;; org_gcr_2017-05-12_mara_F0536A1B-195D-4AB9-90B8-D73651740849 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B804AA93-9D3B-4DC8-BFA3-658DD1FB0601][org_gcr_2017-05-12_mara_B804AA93-9D3B-4DC8-BFA3-658DD1FB0601]]
(setq org-src-tab-acts-natively nil)
;; org_gcr_2017-05-12_mara_B804AA93-9D3B-4DC8-BFA3-658DD1FB0601 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9DE5CE12-157D-4516-9FB1-7DAFA02C571E][org_gcr_2017-05-12_mara_9DE5CE12-157D-4516-9FB1-7DAFA02C571E]]
(setq org-todo-keywords
      '((sequence
         "TODO(t!)"
         "GO(g@)"
         "WAIT(w@)"
         "BLOCKED(b@)"
         "REVIEW(r!)"
         "|"
         "DONE(d@)"
         "CANCELED(c@)"
         "DUPLICATE(p@)"
         )))
;; org_gcr_2017-05-12_mara_9DE5CE12-157D-4516-9FB1-7DAFA02C571E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B237C004-4827-4C39-A9B9-4D0FF9B01053][org_gcr_2017-05-12_mara_B237C004-4827-4C39-A9B9-4D0FF9B01053]]
(setq org-log-states-order-reversed nil)
;; org_gcr_2017-05-12_mara_B237C004-4827-4C39-A9B9-4D0FF9B01053 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_32AAD797-A7D7-416D-9CE2-425EB96781A7][org_gcr_2017-05-12_mara_32AAD797-A7D7-416D-9CE2-425EB96781A7]]
(setq org-log-into-drawer t)
;; org_gcr_2017-05-12_mara_32AAD797-A7D7-416D-9CE2-425EB96781A7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B6F42ECC-14C0-4C60-8E00-6BBF883B3043][org_gcr_2017-05-12_mara_B6F42ECC-14C0-4C60-8E00-6BBF883B3043]]
(setq org-archive-mark-done nil)
;; org_gcr_2017-05-12_mara_B6F42ECC-14C0-4C60-8E00-6BBF883B3043 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_DEE287C2-5B88-4015-9B4F-57DA0F922B0C][org_gcr_2017-05-12_mara_DEE287C2-5B88-4015-9B4F-57DA0F922B0C]]
(setq org-refile-targets '((nil . (:maxlevel . 10))))
(setq org-refile-use-outline-path t)
;; org_gcr_2017-05-12_mara_DEE287C2-5B88-4015-9B4F-57DA0F922B0C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7B11F38B-157A-400A-8F93-68E610D47128][org_gcr_2017-05-12_mara_7B11F38B-157A-400A-8F93-68E610D47128]]
(defun help/org-refile (arg)
  "Refile to /level/ in /file/ by using use /prefix args/: 2+/this/[none], 1+/this/1, 1/choose-file/2"
  (interactive "P")
  (cond
   ((not (null arg))
    (let ((val (car current-prefix-arg))
          (current-prefix-arg nil)
          (org-refile-use-outline-path 'file)
          (org-reverse-note-order nil))
      (cond ((= val 4)
             (call-interactively 'org-refile))
            ((= val 16)
             (let* ((fil (read-file-name "Enter destination file: "))
                    (xfil (expand-file-name fil))
                    (_ (when (not (file-exists-p xfil))
                         (with-temp-file xfil (insert))))
                    (org-refile-targets
                     `((,xfil :maxlevel . 10))))
               (progn (call-interactively 'org-refile)
                      (find-file xfil)))))))
   (t
    (call-interactively 'org-refile))))
;; org_gcr_2017-05-12_mara_7B11F38B-157A-400A-8F93-68E610D47128 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_29930A09-6462-4BE7-9AE2-18DC1858666C][org_gcr_2017-05-12_mara_29930A09-6462-4BE7-9AE2-18DC1858666C]]
(setq org-reverse-note-order t)
;; org_gcr_2017-05-12_mara_29930A09-6462-4BE7-9AE2-18DC1858666C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E0E01F45-C01E-4F6E-AE8D-1B0073ECB377][org_gcr_2017-05-12_mara_E0E01F45-C01E-4F6E-AE8D-1B0073ECB377]]
(setq org-outline-path-complete-in-steps nil)
;; org_gcr_2017-05-12_mara_E0E01F45-C01E-4F6E-AE8D-1B0073ECB377 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_07650079-9AE1-4291-97A3-BCFD0628C95D][org_gcr_2017-05-12_mara_07650079-9AE1-4291-97A3-BCFD0628C95D]]
(setq org-refile-allow-creating-parent-nodes nil)
;; org_gcr_2017-05-12_mara_07650079-9AE1-4291-97A3-BCFD0628C95D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7E513EE1-3EF9-415B-BB94-2135CBFB0E74][org_gcr_2017-05-12_mara_7E513EE1-3EF9-415B-BB94-2135CBFB0E74]]
(setq org-log-refile 'note)
;; org_gcr_2017-05-12_mara_7E513EE1-3EF9-415B-BB94-2135CBFB0E74 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1F938B98-B056-4381-833C-2C9B835B1C23][org_gcr_2017-05-12_mara_1F938B98-B056-4381-833C-2C9B835B1C23]]
(defun org-read-entry-property-name ()
  "Read a property name from the current entry."
  (let ((completion-ignore-case t)
        (default-prop (or (and (org-at-property-p)
                               (org-match-string-no-properties 2))
                          org-last-set-property)))
    (org-completing-read
     (format "Property [%s]: " (if default-prop default-prop ""))
     (org-entry-properties nil nil)
     nil nil nil nil default-prop)))

(defun my-org-region-to-property (&optional property)
  "Copies the region as value to an Org-mode property"
  (interactive)
  ;; if no region is defined, do nothing
  (if (use-region-p)
      ;; if a region string is found, ask for a property and set property to
      ;; the string in the region
      (let ((val (replace-regexp-in-string
                  "\\`[ \t\n]*" ""
                  (replace-regexp-in-string "[ \t\n]*\\'" ""
                                            (substring (buffer-string)
                                                       (- (region-beginning) 1)
                                                       (region-end))))
                 )
            ;; if none was stated by user, read property from user
            (prop (or property
                      (org-read-entry-property-name))))
        ;; set property
        (org-set-property prop val))))
;; org_gcr_2017-05-12_mara_1F938B98-B056-4381-833C-2C9B835B1C23 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8CE235AC-A7C4-48DF-8C97-46CC7F31CDF4][org_gcr_2017-05-12_mara_8CE235AC-A7C4-48DF-8C97-46CC7F31CDF4]]
(use-package org-table-sticky-header
  :ensure t
  :diminish org-table-sticky-header-mode
  :config
  (add-hook 'org-mode-hook #'org-table-sticky-header-mode))
;; org_gcr_2017-05-12_mara_8CE235AC-A7C4-48DF-8C97-46CC7F31CDF4 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-07_mara_D89CE4CB-12B1-47A6-9B0B-EA544343BA85][org_gcr_2018-03-07_mara_D89CE4CB-12B1-47A6-9B0B-EA544343BA85]]
(setq org-latex-compiler "xelatex")
(setq org-latex-pdf-process '("latexmk -xelatex -quiet -shell-escape -f %f"))
;; org_gcr_2018-03-07_mara_D89CE4CB-12B1-47A6-9B0B-EA544343BA85 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-07_mara_C60306B4-7FB0-45AB-B39F-2BF47FA39604][org_gcr_2018-03-07_mara_C60306B4-7FB0-45AB-B39F-2BF47FA39604]]
(setq org-latex-default-packages-alist
      (delq (rassoc '("hyperref" nil) org-latex-default-packages-alist)
            org-latex-default-packages-alist))
(defconst help/org-latex-packages-alist-pre-hyperref
  '(("letterpaper,margin=1.0in" "geometry")
    ("" "float")))
(defconst help/org-latex-packages-alist-post-hyperref
  '( ("section" "placeins")
     ("" "tikz")
     ("" "caption")
     ("" "latexsym")
     ("" "lettrine")
     ("" "grantcrettke")))
(setq org-latex-packages-alist
      (append help/org-latex-packages-alist-pre-hyperref
              '(("" "hyperref" nil))
              help/org-latex-packages-alist-post-hyperref))
;; org_gcr_2018-03-07_mara_C60306B4-7FB0-45AB-B39F-2BF47FA39604 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7EE5307A-ACC5-4FE9-A519-0F273B4589E9][org_gcr_2017-05-12_mara_7EE5307A-ACC5-4FE9-A519-0F273B4589E9]]
(defvar help/ltx-cls-opt "12pt")
;; org_gcr_2017-05-12_mara_7EE5307A-ACC5-4FE9-A519-0F273B4589E9 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_006EB5E3-5478-43C7-AEAC-34CCF49127AC][org_gcr_2017-05-12_mara_006EB5E3-5478-43C7-AEAC-34CCF49127AC]]
(eval-after-load "ox-latex"
  '(add-to-list 'org-latex-classes
                `("help-article"
                  ,(concat "\\documentclass["
                           help/ltx-cls-opt
                           "]{article}"))))

(setq org-latex-default-class "help-article")
;; org_gcr_2017-05-12_mara_006EB5E3-5478-43C7-AEAC-34CCF49127AC ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-07_mara_22B13787-67AA-4462-949B-3C1E6702EB7C][org_gcr_2018-03-07_mara_22B13787-67AA-4462-949B-3C1E6702EB7C]]
(setq org-latex-default-figure-position "H")
;; org_gcr_2018-03-07_mara_22B13787-67AA-4462-949B-3C1E6702EB7C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9A50B1B6-9446-4CE2-AC58-5ED8878E9041][org_gcr_2017-05-12_mara_9A50B1B6-9446-4CE2-AC58-5ED8878E9041]]
(setq org-startup-with-inline-images (display-graphic-p))
;; org_gcr_2017-05-12_mara_9A50B1B6-9446-4CE2-AC58-5ED8878E9041 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_34C0D995-C26A-4FAC-9281-8F1D1BBB16BD][org_gcr_2017-05-12_mara_34C0D995-C26A-4FAC-9281-8F1D1BBB16BD]]
(setq org-completion-use-ido t)
(setq org-completion-use-iswitchb nil)
;; org_gcr_2017-05-12_mara_34C0D995-C26A-4FAC-9281-8F1D1BBB16BD ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C5BBF231-E413-4A62-9367-A25932090329][org_gcr_2017-05-12_mara_C5BBF231-E413-4A62-9367-A25932090329]]
(setq org-use-speed-commands t)
;; org_gcr_2017-05-12_mara_C5BBF231-E413-4A62-9367-A25932090329 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D874DF5C-61BE-4EF9-97F7-5C77927F8656][org_gcr_2017-05-12_mara_D874DF5C-61BE-4EF9-97F7-5C77927F8656]]
(setq org-confirm-shell-link-function 'y-or-n-p)
;; org_gcr_2017-05-12_mara_D874DF5C-61BE-4EF9-97F7-5C77927F8656 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7715C738-ADCF-4DA7-BB26-DF37B5A55460][org_gcr_2017-05-12_mara_7715C738-ADCF-4DA7-BB26-DF37B5A55460]]
(setq org-confirm-elisp-link-function 'y-or-n-p)
;; org_gcr_2017-05-12_mara_7715C738-ADCF-4DA7-BB26-DF37B5A55460 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_40EE32EF-D461-4A4C-BDDA-5203A0EB5279][org_gcr_2017-05-12_mara_40EE32EF-D461-4A4C-BDDA-5203A0EB5279]]
(setq org-enforce-todo-dependencies t)
;; org_gcr_2017-05-12_mara_40EE32EF-D461-4A4C-BDDA-5203A0EB5279 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_065D8A70-E573-4204-B75B-B69F81926188][org_gcr_2017-05-12_mara_065D8A70-E573-4204-B75B-B69F81926188]]
(when (display-graphic-p)
  (use-package org-mouse))
;; org_gcr_2017-05-12_mara_065D8A70-E573-4204-B75B-B69F81926188 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_BD01DD8A-9BA2-4240-8B63-6479D1C868CC][org_gcr_2017-05-12_mara_BD01DD8A-9BA2-4240-8B63-6479D1C868CC]]
(setq org-ellipsis "…")
;; org_gcr_2017-05-12_mara_BD01DD8A-9BA2-4240-8B63-6479D1C868CC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D567F41E-C336-402E-A1A3-EB8D4F91CBDC][org_gcr_2017-05-12_mara_D567F41E-C336-402E-A1A3-EB8D4F91CBDC]]
(setq org-hide-leading-stars t)
;; org_gcr_2017-05-12_mara_D567F41E-C336-402E-A1A3-EB8D4F91CBDC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_95F90F5A-E6EB-43BE-9EF1-B3F0CCE4B331][org_gcr_2017-05-12_mara_95F90F5A-E6EB-43BE-9EF1-B3F0CCE4B331]]
(setq org-adapt-indentation nil)
;; org_gcr_2017-05-12_mara_95F90F5A-E6EB-43BE-9EF1-B3F0CCE4B331 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_563BB770-66CC-431C-98DE-BD3B5B5762AC][org_gcr_2017-05-12_mara_563BB770-66CC-431C-98DE-BD3B5B5762AC]]
(setq org-fontify-emphasized-text t)
;; org_gcr_2017-05-12_mara_563BB770-66CC-431C-98DE-BD3B5B5762AC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5A4B6DC2-4F16-4177-9C8E-0D0CFDE2B24C][org_gcr_2017-05-12_mara_5A4B6DC2-4F16-4177-9C8E-0D0CFDE2B24C]]
(setq org-pretty-entities t)
;; org_gcr_2017-05-12_mara_5A4B6DC2-4F16-4177-9C8E-0D0CFDE2B24C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_6488365E-DF20-4300-A979-BA8CE807BBE4][org_gcr_2017-05-12_mara_6488365E-DF20-4300-A979-BA8CE807BBE4]]
(setq org-use-sub-superscripts '{})
;; org_gcr_2017-05-12_mara_6488365E-DF20-4300-A979-BA8CE807BBE4 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8D163D72-07DD-42F2-93BA-9C70EC04D22F][org_gcr_2017-05-12_mara_8D163D72-07DD-42F2-93BA-9C70EC04D22F]]
(setq org-highlight-latex-and-related '(latex script entities))
;; org_gcr_2017-05-12_mara_8D163D72-07DD-42F2-93BA-9C70EC04D22F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7A828354-84C9-42DE-B123-E9936D2CC914][org_gcr_2017-05-12_mara_7A828354-84C9-42DE-B123-E9936D2CC914]]
(setq org-footnote-define-inline t)
(setq org-footnote-auto-label 'random)
(setq org-footnote-auto-adjust nil)
(setq org-footnote-section nil)
;; org_gcr_2017-05-12_mara_7A828354-84C9-42DE-B123-E9936D2CC914 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C7174763-7D1F-491E-9395-8C4100AEA78D][org_gcr_2017-05-12_mara_C7174763-7D1F-491E-9395-8C4100AEA78D]]
(setq org-catch-invisible-edits 'error)
;; org_gcr_2017-05-12_mara_C7174763-7D1F-491E-9395-8C4100AEA78D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E8933212-1893-466F-95D1-BE41ADD2DD68][org_gcr_2017-05-12_mara_E8933212-1893-466F-95D1-BE41ADD2DD68]]
(setq org-loop-over-headlines-in-active-region t)
;; org_gcr_2017-05-12_mara_E8933212-1893-466F-95D1-BE41ADD2DD68 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_018F43BF-99DA-4632-B5B0-A291CEBBA6B5][org_gcr_2017-05-12_mara_018F43BF-99DA-4632-B5B0-A291CEBBA6B5]]
(setq org-startup-folded "nofold")
;; org_gcr_2017-05-12_mara_018F43BF-99DA-4632-B5B0-A291CEBBA6B5 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_85DCD661-A0DA-4AC2-8EB2-5BD9A4C2D0CB][org_gcr_2017-05-12_mara_85DCD661-A0DA-4AC2-8EB2-5BD9A4C2D0CB]]
(setq org-image-actual-width t)
;; org_gcr_2017-05-12_mara_85DCD661-A0DA-4AC2-8EB2-5BD9A4C2D0CB ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2DD6E6FC-375C-4FA5-BFA4-C6C9B0EAB483][org_gcr_2017-05-12_mara_2DD6E6FC-375C-4FA5-BFA4-C6C9B0EAB483]]
(setq org-hide-emphasis-markers t)
;; org_gcr_2017-05-12_mara_2DD6E6FC-375C-4FA5-BFA4-C6C9B0EAB483 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B5F4B79C-70AD-46D1-AAAF-A4E31091F9B2][org_gcr_2017-05-12_mara_B5F4B79C-70AD-46D1-AAAF-A4E31091F9B2]]
(setq org-startup-align-all-tables t)
;; org_gcr_2017-05-12_mara_B5F4B79C-70AD-46D1-AAAF-A4E31091F9B2 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_75CA3C3E-CFA6-4FA5-98DA-7EC394781A17][org_gcr_2017-05-12_mara_75CA3C3E-CFA6-4FA5-98DA-7EC394781A17]]
(setq org-html-checkbox-type 'unicode)
;; org_gcr_2017-05-12_mara_75CA3C3E-CFA6-4FA5-98DA-7EC394781A17 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F04CC035-CFB3-47DB-B1A0-9E58ECE5B01D][org_gcr_2017-05-12_mara_F04CC035-CFB3-47DB-B1A0-9E58ECE5B01D]]
(setq org-src-fontify-natively nil)
;; org_gcr_2017-05-12_mara_F04CC035-CFB3-47DB-B1A0-9E58ECE5B01D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_829BF364-D929-4B12-BFB7-82C6F4105CDA][org_gcr_2017-05-12_mara_829BF364-D929-4B12-BFB7-82C6F4105CDA]]
(setq org-src-strip-leading-and-trailing-blank-lines t)
;; org_gcr_2017-05-12_mara_829BF364-D929-4B12-BFB7-82C6F4105CDA ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A4769342-BBC0-40C1-B144-BD24CE74523C][org_gcr_2017-05-12_mara_A4769342-BBC0-40C1-B144-BD24CE74523C]]
(setq org-src-window-setup 'current-window)
;; org_gcr_2017-05-12_mara_A4769342-BBC0-40C1-B144-BD24CE74523C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7120E516-C6D1-4FD5-A925-7F79B3FE9323][org_gcr_2017-05-12_mara_7120E516-C6D1-4FD5-A925-7F79B3FE9323]]
(setq org-babel-no-eval-on-ctrl-c-ctrl-c t)
;; org_gcr_2017-05-12_mara_7120E516-C6D1-4FD5-A925-7F79B3FE9323 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E4B28E49-C537-4BA9-B929-A638DBFEED94][org_gcr_2017-05-12_mara_E4B28E49-C537-4BA9-B929-A638DBFEED94]]
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
;; org_gcr_2017-05-12_mara_E4B28E49-C537-4BA9-B929-A638DBFEED94 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1AE94FA9-77C0-4A30-8A70-AFAFD4E4011F][org_gcr_2017-05-12_mara_1AE94FA9-77C0-4A30-8A70-AFAFD4E4011F]]
(setq org-edit-src-code nil)
;; org_gcr_2017-05-12_mara_1AE94FA9-77C0-4A30-8A70-AFAFD4E4011F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_CE6FE001-F609-4096-8807-9AB65010AD53][org_gcr_2017-05-12_mara_CE6FE001-F609-4096-8807-9AB65010AD53]]
(use-package wrap-region
  :ensure t
  :config
  :diminish wrap-region-mode
  :config
  (add-hook 'org-mode-hook 'wrap-region-mode))
;; org_gcr_2017-05-12_mara_CE6FE001-F609-4096-8807-9AB65010AD53 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_DE1AA644-BCAA-4F1E-AF59-157250A15171][org_gcr_2017-05-12_mara_DE1AA644-BCAA-4F1E-AF59-157250A15171]]
(wrap-region-add-wrapper "*" "*" nil 'org-mode)
;; org_gcr_2017-05-12_mara_DE1AA644-BCAA-4F1E-AF59-157250A15171 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_79D2E885-5A18-486B-BA80-C36C0B78972E][org_gcr_2017-05-12_mara_79D2E885-5A18-486B-BA80-C36C0B78972E]]
(wrap-region-add-wrapper "/" "/" nil 'org-mode)
;; org_gcr_2017-05-12_mara_79D2E885-5A18-486B-BA80-C36C0B78972E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_353BB5B3-A864-4AE4-AF08-590AFF0DE831][org_gcr_2017-05-12_mara_353BB5B3-A864-4AE4-AF08-590AFF0DE831]]
(wrap-region-add-wrapper "=" "=" nil 'org-mode)
;; org_gcr_2017-05-12_mara_353BB5B3-A864-4AE4-AF08-590AFF0DE831 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9D9579E5-4693-417C-BFDE-B9F532381C44][org_gcr_2017-05-12_mara_9D9579E5-4693-417C-BFDE-B9F532381C44]]
(wrap-region-add-wrapper "~" "~" nil 'org-mode)
;; org_gcr_2017-05-12_mara_9D9579E5-4693-417C-BFDE-B9F532381C44 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_3331BDE3-CFEA-460B-8E21-45ACF6BAC211][org_gcr_2017-05-12_mara_3331BDE3-CFEA-460B-8E21-45ACF6BAC211]]
(wrap-region-add-wrapper "+" "+" nil 'org-mode)
;; org_gcr_2017-05-12_mara_3331BDE3-CFEA-460B-8E21-45ACF6BAC211 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_258FD451-015B-4195-8349-8B4EFA61B581][org_gcr_2017-05-12_mara_258FD451-015B-4195-8349-8B4EFA61B581]]
(setq org-hide-macro-markers t)
;; org_gcr_2017-05-12_mara_258FD451-015B-4195-8349-8B4EFA61B581 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_7CFE23CC-8EBC-46F3-889F-BF36EC45D6CA][org_gcr_2017-05-12_mara_7CFE23CC-8EBC-46F3-889F-BF36EC45D6CA]]
(setq org-return-follows-link t)
;; org_gcr_2017-05-12_mara_7CFE23CC-8EBC-46F3-889F-BF36EC45D6CA ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_711B4205-DC28-4A35-B620-23AFD46E3973][org_gcr_2017-05-12_mara_711B4205-DC28-4A35-B620-23AFD46E3973]]
(help/on-gui
 (define-key org-mode-map (kbd "<return>") #'org-return-indent)
 (define-key org-mode-map (kbd "C-M-<return>") #'newline))
;; org_gcr_2017-05-12_mara_711B4205-DC28-4A35-B620-23AFD46E3973 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1A8FB05F-FF18-45DD-BFC4-89E76C366B9F][org_gcr_2017-05-12_mara_1A8FB05F-FF18-45DD-BFC4-89E76C366B9F]]
(define-key org-mode-map (kbd "s-6") #'org-babel-load-in-session)
(define-key org-mode-map (kbd "s-7") #'org-babel-switch-to-session)
(define-key org-mode-map (kbd "s-8") #'org-babel-switch-to-session-with-code)
(define-key org-mode-map (kbd "s-9") #'org-todo)
;; org_gcr_2017-05-12_mara_1A8FB05F-FF18-45DD-BFC4-89E76C366B9F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_6BA97DBC-AE5D-4C60-AD03-EF150686A03F][org_gcr_2017-05-12_mara_6BA97DBC-AE5D-4C60-AD03-EF150686A03F]]
(key-chord-define org-mode-map "U*" #'org-metaup)
(key-chord-define org-mode-map "I(" #'org-metadown)
(key-chord-define org-mode-map "u8" #'org-metaleft)
(key-chord-define org-mode-map "i9" #'org-metaright)
;; org_gcr_2017-05-12_mara_6BA97DBC-AE5D-4C60-AD03-EF150686A03F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-12-10_mara_A7406ADA-C903-4921-BD1A-2CEB8DF3DAEC][org_gcr_2017-12-10_mara_A7406ADA-C903-4921-BD1A-2CEB8DF3DAEC]]
(global-unset-key (kbd "C-M-t"))
;; org_gcr_2017-12-10_mara_A7406ADA-C903-4921-BD1A-2CEB8DF3DAEC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_49522E70-EE2D-4CF9-95D7-8E43524A469D][org_gcr_2017-05-12_mara_49522E70-EE2D-4CF9-95D7-8E43524A469D]]
(define-key org-mode-map (kbd "s-]") (lambda () (interactive)
                                       (message "Removing all source block resuls")
                                       (help/org-2every-src-block
                                        'org-babel-remove-result)
                                       (message "Done removing all source block resuls")))
(define-key org-mode-map (kbd "s-y") #'help/safb-org-babel-execute-buffer)
(define-key org-mode-map (kbd "s-u") #'help/safb-org-babel-execute-subtree)
(define-key org-mode-map (kbd "s-U") #'org-mark-ring-goto)
(define-key org-mode-map (kbd "s-i") #'org-babel-execute-src-block)
(define-key org-mode-map (kbd "s-o") #'org-babel-remove-result)
(define-key org-mode-map (kbd "s-p") #'org-babel-execute-maybe)
(define-key org-mode-map (kbd "s-[") #'org-babel-remove-inline-result)
(defun help/unset-C-M-t ()
  (interactive)
  (local-unset-key (kbd "C-M-t")))
(add-hook 'org-mode-hook #'help/unset-C-M-t)
;; org_gcr_2017-05-12_mara_49522E70-EE2D-4CF9-95D7-8E43524A469D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_EC7D6149-4451-443D-BFFF-1A40073D7D98][org_gcr_2017-05-12_mara_EC7D6149-4451-443D-BFFF-1A40073D7D98]]
(define-key org-mode-map (kbd "C-c C-k") nil)
(define-key org-mode-map (kbd "s-h") #'help/safb-org-babel-tangle)
(define-key org-mode-map (kbd "s-j") #'org-babel-next-src-block)
(define-key org-mode-map (kbd "s-k") #'org-babel-previous-src-block)
(define-key org-mode-map (kbd "s-l") #'help/safb-org-edit-src-code)
(define-key org-mode-map (kbd "s-;") #'help/safb-help/org-babel-demarcate-block)
(define-key org-mode-map (kbd "C->") #'(lambda () (interactive) (insert "\\rarr{}")))
(defun help/org-insert-subscript (arg)
  "Maybe insert a subscript with the postfix space."
  (interactive "MSubscript: ")
  (if (s-blank? arg)
      (message "Nothing to insert")
    (insert "_{" arg "} ")))
(define-key org-mode-map (kbd "s-s") #'help/org-insert-subscript)
(defun help/org-insert-superscript (arg)
  "Maybe insert a super with the postfix space."
  (interactive "MSuperscript: ")
  (if (s-blank? arg)
      (message "Nothing to insert")
    (insert "^{" arg "} ")))
(define-key org-mode-map (kbd "s-S") #'help/org-insert-superscript)
;; org_gcr_2017-05-12_mara_EC7D6149-4451-443D-BFFF-1A40073D7D98 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-12_mara_65D0CDCC-66C7-4C81-ABF3-D22AAF71868E][org_gcr_2017-07-12_mara_65D0CDCC-66C7-4C81-ABF3-D22AAF71868E]]
(define-key global-map (kbd "s-o") nil)
;; org_gcr_2017-07-12_mara_65D0CDCC-66C7-4C81-ABF3-D22AAF71868E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8C00E3FE-4AE1-49BA-97E7-FAB2784DD0A9][org_gcr_2017-05-12_mara_8C00E3FE-4AE1-49BA-97E7-FAB2784DD0A9]]
(define-key org-mode-map (kbd "s-n") #'org-babel-view-src-block-info)
(define-key org-mode-map (kbd "s-m") #'org-babel-expand-src-block)
(define-key org-mode-map (kbd "s-,") #'org-babel-open-src-block-result)
;; org_gcr_2017-05-12_mara_8C00E3FE-4AE1-49BA-97E7-FAB2784DD0A9 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-12_mara_97C70CDA-DFBF-4422-942A-00E732D3AB6A][org_gcr_2017-07-12_mara_97C70CDA-DFBF-4422-942A-00E732D3AB6A]]
(define-key global-map (kbd "s-m") nil)
;; org_gcr_2017-07-12_mara_97C70CDA-DFBF-4422-942A-00E732D3AB6A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_90AA8396-E8A0-439C-A1E4-373E90C4DC84][org_gcr_2017-05-12_mara_90AA8396-E8A0-439C-A1E4-373E90C4DC84]]
(defhydra help/hydra/right-side/org-mode (:color blue
                                                 :hint nil)
  "
_1_ SHA-1-hash _2_ +imgs _3_ -imgs _4_ id-create _5_ toggle-macro _9_ o2b/more _0_ o2b/LaTeX
_q_ ←/w-code _w_ tbletfld _r_ help/org-refile _R_ g2nms-b _t_ g2s-b/hd _T_ table export format _p_ copy/property [ listbox
_a_ archive-subtree _s_ sort _S_ lobigst _u_ goto _k_ ob-check-src-blk _l_ lint
_c_ org-fill-para _b_ swtch2sessn _n_ n2sbtre _m_ mark-subtree
_e_ ox-clip-formatted-copy "
  ;; Row 5
  ("1" org-babel-sha1-hash)
  ("2" org-display-inline-images)
  ("3" org-remove-inline-images)
  ("4" org-id-get-create)
  ("5" help/org-toggle-macro-markers)
  ("9" (lambda () (interactive) (insert "#+HTML: <!--more-->")))
  ("0" (lambda () (interactive) (insert "$\\LaTeX$")))  ;; Row 4
  ("q" org-babel-switch-to-session-with-code)
  ("w" org-table-edit-field)
  ("W" help/org-mark-subtree/kill-ring-save)
  ("e" ox-clip-formatted-copy)
  ("E" org-entities-help)
  ("r" help/org-refile)
  ("R" (lambda () (interactive) (insert "(refile)")))
  ("t" org-babel-goto-src-block-head)
  ("T" (lambda () (interactive) (insert "#+ATTR_HTML: :border 2 :rules all :frame border")))
  ("u" org-goto)
  ("p" my-org-region-to-property)
  ;; Row 4
  ("[" (lambda () (interactive) (insert "- [ ] ")))
  ;; Row 3
  ("a" org-archive-subtree-default)
  ("s" org-sort)
  ("S" org-babel-lob-ingest)
  ("g" org-goto)
  ("i" org-babel-do-key-sequence-in-edit-buffer)
  ("I" org-babel-insert-header-arg)
  ("k" org-babel-check-src-block)
  ("l" org-lint)
  ;; Row 2
  ("c" org-fill-paragraph)
  ("b" org-babel-switch-to-session)
  ("n" org-narrow-to-subtree)
  ("m" org-mark-subtree)
  ("M" org-mark-element))
(defun help/org-mark-subtree/kill-ring-save ()
  ""
  (interactive)
  (call-interactively 'org-mark-subtree)
  (call-interactively 'kill-ring-save))
(key-chord-define org-mode-map "hh" #'help/hydra/right-side/org-mode/body)
;; org_gcr_2017-05-12_mara_90AA8396-E8A0-439C-A1E4-373E90C4DC84 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B41A9D3F-254B-4E44-8585-380BF23D158D][org_gcr_2017-05-12_mara_B41A9D3F-254B-4E44-8585-380BF23D158D]]
(define-key org-mode-map (kbd "C-c C-e") #'help/safb-org-export-dispatch)
;; org_gcr_2017-05-12_mara_B41A9D3F-254B-4E44-8585-380BF23D158D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5DE43FD1-AEF3-40D0-8C67-1ACBB6EA8317][org_gcr_2017-05-12_mara_5DE43FD1-AEF3-40D0-8C67-1ACBB6EA8317]]
(define-key org-src-mode-map (kbd "s-l") #'org-edit-src-exit)
;; org_gcr_2017-05-12_mara_5DE43FD1-AEF3-40D0-8C67-1ACBB6EA8317 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_BF73D071-57B8-4DBA-93E9-5A1D532A6321][org_gcr_2017-05-12_mara_BF73D071-57B8-4DBA-93E9-5A1D532A6321]]
(key-chord-define org-mode-map "<<" (lambda () (interactive) (insert "\\laquo{}")))
(key-chord-define org-mode-map ">>" (lambda () (interactive) (insert "\\raquo{}")))
;; org_gcr_2017-05-12_mara_BF73D071-57B8-4DBA-93E9-5A1D532A6321 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-15_mara_05415B89-71CA-4176-80EF-FB36F2D97F20][org_gcr_2018-03-15_mara_05415B89-71CA-4176-80EF-FB36F2D97F20]]
(defun help/prettify-org-mode ()
  (interactive)
  (setq prettify-symbols-alist (help/alist-set "#+NAME\:" ?╭ prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+name\:" ?╭ prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+BEGIN_SRC" ?├ prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+begin_src" ?├ prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+END_SRC" ?╰ prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+end_src" ?╰
                                               prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+BEGIN_EXAMPLE" ?💡
                                               prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+begin_example" ?💡
                                               prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+END_EXAMPLE" ?💡
                                               prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+end_example" ?💡
                                               prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+BEGIN_QUOTE" ?🗣 prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+begin_quote" ?🗣 prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+end_QUOTE" ?🗣 prettify-symbols-alist))
  (setq prettify-symbols-alist (help/alist-set "#+end_quote" ?🗣 prettify-symbols-alist))
  (help/prettify-org-mode-names ?╮))
(add-hook 'org-mode-hook #'help/prettify-org-mode)

(defun help/prettify-org-mode-names (&optional replacement)
  (interactive)
  (or replacement (setq replacement ?·))
  (save-excursion
    (goto-char (point-min))
    (let ((case-fold-search t))
      (while (re-search-forward "#\\+name: " nil t)
        (copy-region-as-kill (point) (line-end-position))
        (let ((name (substring-no-properties(pop kill-ring))))
          (when (string-prefix-p "org_" name)
            (setq prettify-symbols-alist (help/alist-set name replacement prettify-symbols-alist))))))))
;; org_gcr_2018-03-15_mara_05415B89-71CA-4176-80EF-FB36F2D97F20 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-01-04_mara_42B53E96-5046-4A7B-8CC9-A7046CCD3BF1][org_gcr_2018-01-04_mara_42B53E96-5046-4A7B-8CC9-A7046CCD3BF1]]
(use-package edit-indirect
  :ensure t)
;; org_gcr_2018-01-04_mara_42B53E96-5046-4A7B-8CC9-A7046CCD3BF1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_37C3019C-7C06-4952-888C-AA4660B4310E][org_gcr_2017-05-12_mara_37C3019C-7C06-4952-888C-AA4660B4310E]]
(use-package blackboard-bold-mode
  :ensure t)
;; org_gcr_2017-05-12_mara_37C3019C-7C06-4952-888C-AA4660B4310E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_AF4667B6-7922-4BC4-840F-63F099E1BC63][org_gcr_2017-05-12_mara_AF4667B6-7922-4BC4-840F-63F099E1BC63]]
(use-package fraktur-mode
  :ensure t)
;; org_gcr_2017-05-12_mara_AF4667B6-7922-4BC4-840F-63F099E1BC63 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A27A9A2F-11B8-4B31-A68C-6A5E27BCCD8D][org_gcr_2017-05-12_mara_A27A9A2F-11B8-4B31-A68C-6A5E27BCCD8D]]
(defhydra help/hydra/transliterate (:color blue :hint nil)
  "
_b_ black-board-bold _f_ fraktur
"
  ("b" blackboard-bold-mode)
  ("f" fraktur-mode))
;; org_gcr_2017-05-12_mara_A27A9A2F-11B8-4B31-A68C-6A5E27BCCD8D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_96974788-400B-439B-9005-04569A326C29][org_gcr_2017-05-12_mara_96974788-400B-439B-9005-04569A326C29]]
(use-package unicode-troll-stopper
  :ensure t)
;; org_gcr_2017-05-12_mara_96974788-400B-439B-9005-04569A326C29 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B7889E2D-2E2E-402B-BFC6-F8EC056D1F6E][org_gcr_2017-05-12_mara_B7889E2D-2E2E-402B-BFC6-F8EC056D1F6E]]
(use-package unicode-escape
  :ensure t
  :config)
;; org_gcr_2017-05-12_mara_B7889E2D-2E2E-402B-BFC6-F8EC056D1F6E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_063B5AFB-C687-49D3-8FE2-3BE2BDCB8E84][org_gcr_2017-05-12_mara_063B5AFB-C687-49D3-8FE2-3BE2BDCB8E84]]
(defun warn-if-utf-8-bom ()
  "Warn if UTF-8 BOM bytes are present.

Attribution: URL `https://www.reddit.com/r/emacs/comments/4tw0iz/can_i_have_a_warning_if_i_open_a_file_with_utf8/d5kszsh'"
  (let ((name (symbol-name buffer-file-coding-system)))
    (when (string-match-p "utf-8-with-signature" name)
      (message "Call the BOM squad! This UTF-8 file has a BOM!"))))

(add-hook 'find-file-hook #'warn-if-utf-8-bom)
;; org_gcr_2017-05-12_mara_063B5AFB-C687-49D3-8FE2-3BE2BDCB8E84 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-08-04_mara_24E4983A-3842-4365-8C3A-8D2019AB223D][org_gcr_2017-08-04_mara_24E4983A-3842-4365-8C3A-8D2019AB223D]]
(use-package lorem-ipsum
  :ensure t
  :config
  (defun help/lorem-ipsum-insert-word ()
    (interactive)
    (let* ((paragraph
            (nth (random (length lorem-ipsum-text)) lorem-ipsum-text))
           (sentence
            (concat (nth (random (length paragraph)) paragraph)
                    lorem-ipsum-sentence-separator))
           (words (split-string sentence))
           (word (nth (random (length words)) words)))
      (insert word))))

(use-package academic-phrases
  :ensure t)

(defhydra help/hydra/words (:color blue :hint nil)
  "
Vocabulary: (_q_uit)
 Lorem Ipsum: _w_ord _s_entence _p_aragraphs _l_ist
  Academic Phrases: _a_ll or by se_c_tion
   _E_macs Name (insert _e_macs name)
    _F_lame (insert _f_lame)
     _H_oroscope (insert _h_oroscope)
      _K_ibologize (insert _k_ibologize)
       _S_hop _m_iddle name
        _Y_ouwill (insert _y_ouwill)"


  ("q" nil)

  ("w" help/lorem-ipsum-insert-word)
  ("s" lorem-ipsum-insert-sentences :exit nil)
  ("p" lorem-ipsum-insert-paragraphs :exit nil)
  ("l" lorem-ipsum-insert-lists :exit nil)

  ("a" academic-phrases)
  ("c" academic-phrases-by-section)

  ("E" emacs-name)
  ("e" (lambda () (interactive) (insert (emacs-name))))

  ("F" flame)
  ("f" insert-flame)

  ("H" horoscope)
  ("h" (lambda () (interactive) (horoscope t)))

  ("K" kibologize)
  ("k" help/kibologize-insert)

  ("S" shop)
  ("m" shop-middle-name)

  ("Y" youwill)
  ("y" help/youwill-insert))
;; org_gcr_2017-08-04_mara_24E4983A-3842-4365-8C3A-8D2019AB223D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_AAEBDA8A-3939-42B1-B7A2-230C43EEF1AB][org_gcr_2017-05-12_mara_AAEBDA8A-3939-42B1-B7A2-230C43EEF1AB]]
(use-package dash-at-point
  :ensure t)
;; org_gcr_2017-05-12_mara_AAEBDA8A-3939-42B1-B7A2-230C43EEF1AB ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C30EFFA1-FDBA-413F-AD23-29C0C2095231][org_gcr_2017-05-12_mara_C30EFFA1-FDBA-413F-AD23-29C0C2095231]]
(use-package gnu-apl-mode
  :ensure t
  :init
  (setq gnu-apl-show-keymap-on-startup nil)
  (setq gnu-apl-show-apl-welcome nil)
  (setq gnu-apl-show-tips-on-start nil)
  (setq gnu-apl-mode-map-prefix "C-s-")
  (setq gnu-apl-interactive-mode-map-prefix gnu-apl-mode-map-prefix)
  :config
  (defun em-gnu-apl-init ()
    (setq buffer-face-mode-face 'gnu-apl-default)
    (buffer-face-mode))
  (add-hook 'gnu-apl-interactive-mode-hook 'em-gnu-apl-init)
  (add-hook 'gnu-apl-mode-hook 'em-gnu-apl-init)
  (defun help/gnu-apl-runningp ()
    (interactive)
    (let ((session (gnu-apl--get-interactive-session-with-nocheck)))
      (if session 'ON 'OFF)))
  (defun help/start-gnu-apl ()
    (interactive)
    (if (equal (help/gnu-apl-runningp) 'ON) (message "GNU APL is already ON.")
      (call-interactively 'gnu-apl)))
  (defun help/stop-gnu-apl ()
    (interactive)
    (if (equal (help/gnu-apl-runningp) 'OFF) (message "GNU APL is already OFF.")
      (progn
        (gnu-apl-switch-to-interactive)
        (switch-to-buffer "*gnu-apl*")
        (insert ")off")
        (comint-send-input))))
  (defun help/gnu-apl-prefix-string ()
    (interactive)
    gnu-apl-mode-map-prefix)
  (defhydra help/hydra/gnu-apl (:color blue
                                       :hint nil)
    "
GNU APL is: %(help/gnu-apl-runningp)
 _y_ eval-buffer _u_ eval-region _i_ eval-line _o_ eval-function
  _f_ apropos-symbol _g_ help-symbol _h_ keyboard _j_ next _k_ previous
   _q_ quit _c_ start APL _v_ stop APL _b_ switch to APL _n_ switch back
    Prefix key is: %(help/gnu-apl-prefix-string)
"
    ("i" help/gnu-apl-eval-line)
    ("o" gnu-apl-interactive-send-current-function)
    ("j" (lambda () (interactive) (call-interactively 'next-logical-line)) :exit nil)
    ("k" (lambda () (interactive) (call-interactively 'previous-logical-line))
     :exit nil)
    ("b" gnu-apl-switch-to-interactive)
    ("u" gnu-apl-interactive-send-region)
    ("h" gnu-apl-show-keyboard)
    ("y" gnu-apl-interactive-send-buffer)
    ("t" gnu-apl-trace)
    ("f" gnu-apl-apropos-symbol)
    ("g" gnu-apl-show-help-for-symbol)
    ("c" help/start-gnu-apl)
    ("v" help/stop-gnu-apl)
    ("n" (lambda () (interactive) (other-window -1)))
    ("q" nil))
  (key-chord-define gnu-apl-mode-map "hh" #'help/hydra/gnu-apl/body)
  (key-chord-define gnu-apl-interactive-mode-map "hh" #'help/hydra/gnu-apl/body)
  (defun help/gnu-apl-eval-line ()
    "Evaluate this line and move to next."
    (interactive)
    (end-of-line)
    (set-mark (line-beginning-position))
    (call-interactively 'gnu-apl-interactive-send-region)
    (deactivate-mark)
    (call-interactively 'next-logical-line))
  (define-key gnu-apl-mode-map (kbd "C-<return>") #'help/gnu-apl-eval-line)
  (add-hook 'gnu-apl-interactive-mode-hook
            #'help/gnu-apl-interactive-mode-hook-fn)
  (add-to-list 'org-babel-load-languages '(gnu-apl . t)))
;; org_gcr_2017-05-12_mara_C30EFFA1-FDBA-413F-AD23-29C0C2095231 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_CC727094-99D3-4C48-BE27-C28FC738DF34][org_gcr_2017-05-12_mara_CC727094-99D3-4C48-BE27-C28FC738DF34]]
(add-to-list 'auto-mode-alist '("\\.scm\\'" . scheme-mode))
(add-to-list 'auto-mode-alist '("\\.ss\\'" . scheme-mode))
;; org_gcr_2017-05-12_mara_CC727094-99D3-4C48-BE27-C28FC738DF34 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_998AB8A6-A934-4E5A-B869-E1348D919529][org_gcr_2017-05-12_mara_998AB8A6-A934-4E5A-B869-E1348D919529]]
(add-to-list 'auto-mode-alist '("\\.sls\\'" . scheme-mode))
(add-to-list 'auto-mode-alist '("\\.sps\\'" . scheme-mode))
;; org_gcr_2017-05-12_mara_998AB8A6-A934-4E5A-B869-E1348D919529 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A80E9E8F-A5B7-4C48-A3E5-2C365178EFAF][org_gcr_2017-05-12_mara_A80E9E8F-A5B7-4C48-A3E5-2C365178EFAF]]
(add-to-list 'auto-mode-alist '("\\.rkt\\'" . scheme-mode))
;; org_gcr_2017-05-12_mara_A80E9E8F-A5B7-4C48-A3E5-2C365178EFAF ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-27_mara_EAEF335C-A35D-4746-AB2F-58BDDDFB6CC0][org_gcr_2017-07-27_mara_EAEF335C-A35D-4746-AB2F-58BDDDFB6CC0]]
(use-package scheme
  :config
  (setq scheme-program-name "chez")
  (defun help/scheme-mode-hook-fn ()
    "HELP Scheme Mode Hook Function")
  (add-hook 'scheme-mode-hook #'help/scheme-mode-hook-fn)
  (defun help/inferior-scheme-mode-hook-fn ()
    "HELP Inferior Scheme Mode Hook Function")
  (add-hook 'inferior-scheme-mode-hook #'help/inferior-scheme-mode-hook-fn))
;; org_gcr_2017-07-27_mara_EAEF335C-A35D-4746-AB2F-58BDDDFB6CC0 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5457F0EC-AAB3-4502-ACCD-7F9C1579293D][org_gcr_2017-05-12_mara_5457F0EC-AAB3-4502-ACCD-7F9C1579293D]]
(use-package geiser
  :ensure t
  :config
  (setq geiser-default-implementation 'chez)
  (setq geiser-active-implementations (list geiser-default-implementation))
  (setq geiser-repl-history-no-dups-p t)
  (defun help/geiser-exit-chez ()
    (interactive)
    (call-interactively 'geiser-mode-switch-to-repl)
    (insert "(exit)")
    (geiser-repl--maybe-send))
  (defun help/geiser-on-p ()
    (if (geiser-repl--live-p) 'ON
      'OFF))
  (defun help/geiser-eval-line ()
    "Evaluate this line and move to next."
    (interactive)
    (end-of-line)
    (set-mark (line-beginning-position))
    (call-interactively 'geiser-eval-region)
    (deactivate-mark)
    (call-interactively 'next-logical-line))
  (defhydra help/hydra-geiser-mode (:color blue
                                           :hint nil)
    "
Geiser REPL is: %(help/geiser-on-p)
 _y_ eval-buffer _u_ eval-region _U_ (and go)
  _z_ run (another) geiser _x_ stop latest chez _c_ exit geiser _b_ to latest geiser _n_ switch back
   _q_ quit
"
    ("y" geiser-eval-buffer)
    ("u" geiser-eval-region)
    ("U" geiser-eval-region-and-go)
    ("z" run-geiser)
    ("x" help/geiser-exit-chez)
    ("b" geiser-mode-switch-to-repl)
    ("c" geiser-repl-exit)
    ("n" (lambda () (interactive) (other-window -1)))
    ("q" nil))
  (defun help/geiser-mode-hook-fn ()
    (local-unset-key (kbd "C-."))
    (key-chord-define geiser-mode-map "hh" #'help/hydra-geiser-mode/body)
    (local-unset-key (kbd "C-j"))
    (local-set-key (kbd "<C-return>") #'help/geiser-eval-line))
  (add-hook 'geiser-mode-hook #'help/geiser-mode-hook-fn)
  (defun help/geiser-repl-mode-hook-fn ()
    (local-unset-key (kbd "C-."))
    (local-unset-key (kbd "C-j"))
    (local-set-key (kbd "<C-return>") #'geiser-repl--maybe-send)
    (key-chord-define-local "hh" #'help/hydra-geiser-mode/body))
  (add-hook 'geiser-repl-mode-hook #'help/geiser-repl-mode-hook-fn))
;; org_gcr_2017-05-12_mara_5457F0EC-AAB3-4502-ACCD-7F9C1579293D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_221DF59F-0817-4F0A-BDE7-01FD9D87BAF9][org_gcr_2017-05-12_mara_221DF59F-0817-4F0A-BDE7-01FD9D87BAF9]]
(use-package ac-geiser
  :ensure t
  :config
  (add-hook 'geiser-mode-hook 'ac-geiser-setup)
  (add-hook 'geiser-repl-mode-hook 'ac-geiser-setup)
  (eval-after-load "auto-complete"
    '(add-to-list 'ac-modes 'geiser-repl-mode)))
;; org_gcr_2017-05-12_mara_221DF59F-0817-4F0A-BDE7-01FD9D87BAF9 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_3C48D997-170E-40F4-9BB6-F6BAA9DE77F2][org_gcr_2017-05-12_mara_3C48D997-170E-40F4-9BB6-F6BAA9DE77F2]]
(defun help/c-mode-common-hook-fn ()
  "HELP c-mode-common customizations."
  (interactive))
(add-hook 'c-mode-common-hook #'help/c-mode-common-hook-fn)
;; org_gcr_2017-05-12_mara_3C48D997-170E-40F4-9BB6-F6BAA9DE77F2 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-30_mara_04B4D7BA-6213-4EC0-8631-461270FE1B71][org_gcr_2017-07-30_mara_04B4D7BA-6213-4EC0-8631-461270FE1B71]]
(use-package go-mode
  :ensure t
  :config
  (use-package go-eldoc
    :ensure t)
  (use-package go-autocomplete
    :ensure t
    :config
    (ac-config-default))
  (use-package golint
    :ensure t)
  (use-package go-errcheck
    :ensure t)
  (use-package ob-go
    :ensure t
    :config
    (add-to-list 'org-babel-load-languages '(go . t)))
  (use-package go-snippets
    :ensure t)
  (use-package flycheck-gometalinter
    :ensure t
    :config
    (add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup)
    (setq flycheck-gometalinter-concurrency 2)
    (setq flycheck-gometalinter-deadline "7s")
    (setq flycheck-gometalinter-disable-all nil)
    (setq flycheck-gometalinter-disable-linters nil)
    (setq flycheck-gometalinter-enable-linters nil)
    (setq flycheck-gometalinter-errors-only nil)
    (setq flycheck-gometalinter-fast nil)
    (setq flycheck-gometalinter-tests t)
    (setq flycheck-gometalinter-vendor t))
  (use-package go-guru
    :ensure t)
  (use-package go-hydra)
  (use-package gotest
    :ensure t)
  (use-package go-rename
    :ensure t)
  (use-package go-direx
    :ensure t)
  (add-to-list 'load-path "~/src/go-snippets")
  (require 'go-snippets)
  (defun help/go-mode/safb/go-run ()
    ""
    (interactive)
    (let* ((compile-command (file-name-nondirectory
                             (directory-file-name default-directory))))
      (help/safb/compile)))
  (defun help/go-mode/safb/go-rename ()
    ""
    (interactive)
    (help/save-all-file-buffers)
    (call-interactively 'go-rename))
  (add-to-list 'load-path "~/git/github/gorepl-mode")
  (require 'gorepl-mode)
  (defhydra help/hydra/right/go-mode (:color blue :hint nil)
    "
 Go: (_q_uit)              |^                   ^|^                ^|
-^------------------------^+^-------------------^+----------------^^+--------
 _e_: explorer             | _r_: run            | _t_: tools       | g_o_re
 _g_: guru                 | _j_: previous error | _k_: next error  |
 _c_: build                | _n_: rename         |                ^^|
 "
    ("e" go-direx-switch-to-buffer)
    ("r" help/go-mode/safb/go-run)
    ("t" go-hydra-go-mode/body)
    ("o" gorepl-hydra/body)
    ("g" go-hydra-guru-go-mode/body)
    ("k" godef-jump-other-window)
    ("l" pop-tag-mark)
    ("c" help/safb/compile)
    ("n" help/go-mode/safb/go-rename)
    ("j" previous-error :exit nil)
    ("k" next-error :exit nil)
    ("q" nil))
  (key-chord-define go-mode-map "hh" #'help/hydra/right/go-mode/body)
  (defun help/go-mode-hook-fn ()
    (go-eldoc-setup)
    (setq gofmt-command "goimports")
    (add-hook 'before-save-hook #'gofmt-before-save)
    (setq compilation-read-command nil)
    (setq compile-command "go install && go test -v && gometalinter ./...")
    (local-set-key (kbd "s-i") #'godoc-at-point)
    (local-set-key (kbd "s-I") #'godoc)
    (local-set-key (kbd "s-j") #'help/safb/compile)
    (local-set-key (kbd "s-k") #'help/go-mode/safb/go-run)
    (local-set-key (kbd "=") #'(lambda () (interactive) (insert " = ")))
    (local-set-key (kbd "s-=") #'(lambda () (interactive) (insert " := ")))
    (local-set-key (kbd "s-<") #'(lambda () (interactive) (insert " <- ")))
    (local-set-key (kbd "s-o") #'gorepl-hydra/body)
    (go-guru-hl-identifier-mode)
    (gorepl-mode))
  (add-hook 'go-mode-hook #'help/go-mode-hook-fn))
;; org_gcr_2017-07-30_mara_04B4D7BA-6213-4EC0-8631-461270FE1B71 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-06-28_mara_110DAD24-25A3-46B0-A0B1-FD26BFDB28C7][org_gcr_2017-06-28_mara_110DAD24-25A3-46B0-A0B1-FD26BFDB28C7]]
(defun help/python-mode-hook-fn ()
  "HELP python mode customizatin."
  (interactive)
  (indent-guide-mode))
(add-hook 'python-mode-hook #'help/python-mode-hook-fn)
;; org_gcr_2017-06-28_mara_110DAD24-25A3-46B0-A0B1-FD26BFDB28C7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B7B9F4BB-5899-4F2B-94B0-B38F098E9528][org_gcr_2017-05-12_mara_B7B9F4BB-5899-4F2B-94B0-B38F098E9528]]
(use-package yasnippet
  :ensure t
  :config
  (use-package yasnippet-snippets
    :ensure t)
  (yas-global-mode t)
  (help/on-gui (define-key yas-minor-mode-map (kbd "<tab>") nil))
  (define-key yas-minor-mode-map (kbd "C-'") #'yas-expand)
  (help/not-on-gui (define-key yas-keymap (kbd "TAB") #'yas-next-field))
  (help/on-gui (define-key yas-keymap (kbd "<tab>") #'yas-next-field))
  (add-to-list #'yas-snippet-dirs "~/src/help/yasnippet")
  (yas-reload-all)
  (setq yas-prompt-functions '(yas-ido-prompt))
  :diminish yas-minor-mode)
;; org_gcr_2017-05-12_mara_B7B9F4BB-5899-4F2B-94B0-B38F098E9528 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E4D8989C-E363-4E6B-A308-B0E667FBCE7C][org_gcr_2017-05-12_mara_E4D8989C-E363-4E6B-A308-B0E667FBCE7C]]
(eval-after-load "abbrev"
  '(diminish 'abbrev-mode))
;; org_gcr_2017-05-12_mara_E4D8989C-E363-4E6B-A308-B0E667FBCE7C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_6219D858-98BB-48CF-96F0-ABEB6756A658][org_gcr_2017-05-12_mara_6219D858-98BB-48CF-96F0-ABEB6756A658]]
(use-package web-mode
  :ensure t
  :init
  (setq web-mode-enable-current-element-highlight t)
  :config
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
  (add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
  (setq web-mode-enable-engine-detection t)
  (define-key web-mode-map (kbd "s-n") 'web-mode-tag-match))

(defun help/web-mode-hook-fn ()
  "HELP web-mode customizations."
  (interactive)
  (setq web-mode-enable-auto-indentation nil)
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
  (setq web-mode-enable-heredoc-fontification t)
  (setq ispell-skip-html t))

(add-hook 'web-mode-hook #'help/web-mode-hook-fn)
;; org_gcr_2017-05-12_mara_6219D858-98BB-48CF-96F0-ABEB6756A658 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_56F80A50-4914-4F8F-8771-5800A54F8300][org_gcr_2017-05-12_mara_56F80A50-4914-4F8F-8771-5800A54F8300]]
(use-package js2-mode
  :ensure t
  :mode (("\\.js$" . js2-mode)
         ("\\.jsx$" . js2-mode))
  :interpreter ("node" . js2-mode)
  :config
  (add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
  (add-to-list 'org-src-lang-modes '("javascript" . js2)))

(use-package js2-refactor
  :after (js2-mode)
  :ensure t
  :diminish js2-refactor-mode
  :config
  (add-hook 'js2-mode-hook #'js2-refactor-mode)
  (js2r-add-keybindings-with-prefix "C-c C-m"))
;; org_gcr_2017-05-12_mara_56F80A50-4914-4F8F-8771-5800A54F8300 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-04-20T15-46-50-05-00_mara_E248AEB6-4E35-40F3-A23A-E5D7BED863C4][org_gcr_2018-04-20T15-46-50-05-00_mara_E248AEB6-4E35-40F3-A23A-E5D7BED863C4]]
(use-package apples-mode
  :ensure t
  :config
  (setq apples-compile-create-file-flag t)
  (setq apples-continuation-offset 2)
  (setq apples-decompile-query ?o)
  (setq apples-follow-error-position t)
  (setq apples-indent-offset 2)
  (setq apples-prefer-coding-system coding-category-utf-8)
  (setq apples-tmp-dir "~/tmp")
  (defhydra help/hydra/right/apples-mode (:color blue :hint nil)
    "
 AppleScript: (_q_uit)     |^                       ^|^                     ^|
-^------------------------^+^-----------------------^+---------------------^^+
 _j_: eval region          | _o_: continuation       | _i_: show last result
 _J_: eval buffer          | _O_: continue+newline   | _9_: open dict
 _i_: compile              | _u_: close block        | _0_: send-to-editor
 _I_: decompile            | _U_: toggle-indentation |
 "
    ("j" apples-run-region)
    ("J" apples-run-buffer)
    ("i" apples-compile)
    ("I" apples-decompile)
    ("o" apples-insert-continuation-char)
    ("O" apples-insert-continuation-char-and-newline)
    ("u" apples-end-completion)
    ("U" apples-toggle-indent)
    ("i" apples-show-last-result)
    ("9" apples-open-dict-index)
    ("0" apples-send-to-applescript-editor)
    ("q" nil))
  (key-chord-define apples-mode-map "hh" #'help/hydra/right/apples-mode/body)
  (use-package ob-applescript
    :ensure t
    :config
    (add-to-list 'org-babel-load-languages '(apples . t)))
  (defun help/apples-mode-hook-fun ())
  (add-hook 'apples-mode-hook #'help/apples-mode-hook-fun))
;; org_gcr_2018-04-20T15-46-50-05-00_mara_E248AEB6-4E35-40F3-A23A-E5D7BED863C4 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_498DAC46-DA9D-4AAA-82BF-46D712E4DBA5][org_gcr_2017-05-12_mara_498DAC46-DA9D-4AAA-82BF-46D712E4DBA5]]
(use-package json-mode
  :ensure t
  :diminish json-mode
  :mode (("\\.jshintrc$" . json-mode))
  :config
  (defhydra help/hydra/json (:color blue
                                    :hint nil)
    "
JSON: (q to quit)
_b_eautify
 _s_how-path _k_ill-path
  _t_oggle boolean _n_ullify sexp
   _i_ncrement number _d_ecrement number
"
    ("b" json-mode-beautify)
    ("s" json-mode-show-path)
    ("k" json-mode-kill-path)
    ("t" json-toggle-boolean)
    ("n" json-nullify-sexp)
    ("i" json-increment-number-at-point :exit nil)
    ("d" json-decrement-number-at-point :exit nil)
    ("q" nil))
  (define-key json-mode-map (kbd "RET") #'newline)
  (defun help/json-mode-hook-fn ()
    (indent-guide-mode)
    (turn-off-auto-capitalize-mode)
    (turn-off-auto-fill)
    (key-chord-define-local "hh" #'help/hydra/json/body))
  (add-hook 'json-mode-hook #'help/json-mode-hook-fn))
;; org_gcr_2017-05-12_mara_498DAC46-DA9D-4AAA-82BF-46D712E4DBA5 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-01-16_mara_B1860F4D-930E-4DDE-8392-BDC52107B11F][org_gcr_2018-01-16_mara_B1860F4D-930E-4DDE-8392-BDC52107B11F]]
(use-package yaml-mode
  :ensure t
  :config
  (defun yaml-next-field ()
    "Jump to next yaml field.

URL: `https://stackoverflow.com/questions/12648388/emacs-yaml-editing'"
    (interactive)
    (search-forward-regexp ": *"))
  (defun yaml-prev-field ()
    "Jump to next yaml field.

URL: `https://stackoverflow.com/questions/12648388/emacs-yaml-editing'"
    (interactive)
    (search-backward-regexp ": *"))
  (defhydra help/hydra/yaml (:color blue
                                    :hint nil)
    "
YAML: (q to quit)
 _i_ indent line
  _n_ narrow to block literal
   _c_ fill paragraph
"
    ("i" yaml-indent-line)
    ("n" yaml-narrow-to-block-literal)
    ("c" yaml-fill-paragraph)
    ("q" nil))
  (defun help/yaml-mode-hook-fn ()
    (indent-guide-mode)
    (turn-off-auto-capitalize-mode)
    (turn-off-auto-fill)
    (setq flycheck-checker 'yaml-yamllint))
  (add-hook 'yaml-mode-hook #'help/yaml-mode-hook-fn)
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (define-key yaml-mode-map (kbd "<backspace>") nil)
  (define-key yaml-mode-map (kbd "<backspace>") #'sp-backward-delete-char)
  (define-key yaml-mode-map (kbd "s-j") #'yaml-next-field)
  (define-key yaml-mode-map (kbd "s-k") #'yaml-prev-field)
  (key-chord-define yaml-mode-map "hh" #'help/hydra/yaml/body)
  (use-package flycheck-yamllint
    :ensure t
    :config
    (with-eval-after-load "flycheck"
      (add-hook 'flycheck-mode-hook 'flycheck-yamllint-setup))
    (setq flycheck-yaml-yamllint-executable "/Users/gcr/yamllint/env/bin/yamllint")))
;; org_gcr_2018-01-16_mara_B1860F4D-930E-4DDE-8392-BDC52107B11F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D035C4E4-B983-4D74-9E3C-764EF00B3795][org_gcr_2017-05-12_mara_D035C4E4-B983-4D74-9E3C-764EF00B3795]]
(use-package tex
  :ensure auctex)
;; org_gcr_2017-05-12_mara_D035C4E4-B983-4D74-9E3C-764EF00B3795 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-07_mara_F85003E7-83AD-4E9E-B333-E0FBD79872F5][org_gcr_2018-03-07_mara_F85003E7-83AD-4E9E-B333-E0FBD79872F5]]
(use-package auctex-latexmk
  :ensure t
  :config
  (setq auctex-latexmk-inherit-TeX-PDF-mode t)
  (auctex-latexmk-setup))
;; org_gcr_2018-03-07_mara_F85003E7-83AD-4E9E-B333-E0FBD79872F5 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_4C2DF1A6-C32B-49F5-A88B-1268AFBD94C0][org_gcr_2018-03-06_mara_4C2DF1A6-C32B-49F5-A88B-1268AFBD94C0]]
(setq TeX-electric-math t)
;; org_gcr_2018-03-06_mara_4C2DF1A6-C32B-49F5-A88B-1268AFBD94C0 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_88B1D568-BECF-464A-A4D0-A5AE34835C7D][org_gcr_2018-03-06_mara_88B1D568-BECF-464A-A4D0-A5AE34835C7D]]
(setq LaTeX-electric-left-right-brace t)
;; org_gcr_2018-03-06_mara_88B1D568-BECF-464A-A4D0-A5AE34835C7D ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_284DFD79-73E7-41FF-990D-7CD066DB225E][org_gcr_2018-03-06_mara_284DFD79-73E7-41FF-990D-7CD066DB225E]]
(setq LaTeX-section-hook
      '(LaTeX-section-heading
        LaTeX-section-title
        LaTeX-section-toc
        LaTeX-section-section
        LaTeX-section-label))
;; org_gcr_2018-03-06_mara_284DFD79-73E7-41FF-990D-7CD066DB225E ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_43E5AAFE-542B-4ED2-9E1A-6F744E6EF1CA][org_gcr_2018-03-06_mara_43E5AAFE-542B-4ED2-9E1A-6F744E6EF1CA]]
(setq TeX-arg-item-label-p t)
;; org_gcr_2018-03-06_mara_43E5AAFE-542B-4ED2-9E1A-6F744E6EF1CA ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_0C89F53D-FA9C-4A41-889F-24F4E708AE03][org_gcr_2018-03-06_mara_0C89F53D-FA9C-4A41-889F-24F4E708AE03]]
(setq LaTeX-math-menu-unicode t)
;; org_gcr_2018-03-06_mara_0C89F53D-FA9C-4A41-889F-24F4E708AE03 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_A73A7792-02FB-400F-8805-B9C89E9F8ADA][org_gcr_2018-03-06_mara_A73A7792-02FB-400F-8805-B9C89E9F8ADA]]
(setq TeX-electric-sub-and-superscript t)
;; org_gcr_2018-03-06_mara_A73A7792-02FB-400F-8805-B9C89E9F8ADA ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_9FBCFE6F-DFBF-4921-A6E6-DA7B98748A3A][org_gcr_2018-03-06_mara_9FBCFE6F-DFBF-4921-A6E6-DA7B98748A3A]]
(setq TeX-insert-macro-default-style 'show-all-optional-args)
;; org_gcr_2018-03-06_mara_9FBCFE6F-DFBF-4921-A6E6-DA7B98748A3A ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_42A55264-E5F9-4FBE-A0A1-3C53CAB34932][org_gcr_2018-03-06_mara_42A55264-E5F9-4FBE-A0A1-3C53CAB34932]]
(setq TeX-electric-escape t)
;; org_gcr_2018-03-06_mara_42A55264-E5F9-4FBE-A0A1-3C53CAB34932 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_DBAA8162-1455-436D-AD2C-37EFC820ACC4][org_gcr_2018-03-06_mara_DBAA8162-1455-436D-AD2C-37EFC820ACC4]]
(setq TeX-insert-braces t)
;; org_gcr_2018-03-06_mara_DBAA8162-1455-436D-AD2C-37EFC820ACC4 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_6C656B2D-B4AB-4800-AE8D-C9D38F593430][org_gcr_2018-03-06_mara_6C656B2D-B4AB-4800-AE8D-C9D38F593430]]
(setq TeX-complete-expert-commands t)
;; org_gcr_2018-03-06_mara_6C656B2D-B4AB-4800-AE8D-C9D38F593430 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_D50FCEC2-0D5A-49C6-B599-E649F315375D][org_gcr_2018-03-06_mara_D50FCEC2-0D5A-49C6-B599-E649F315375D]]
(setq LaTeX-indent-environment-check t)
;; org_gcr_2018-03-06_mara_D50FCEC2-0D5A-49C6-B599-E649F315375D ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_24B30BAF-6284-48FA-BBAC-172979A25B71][org_gcr_2018-03-06_mara_24B30BAF-6284-48FA-BBAC-172979A25B71]]
(setq LaTeX-syntactic-comments t)
;; org_gcr_2018-03-06_mara_24B30BAF-6284-48FA-BBAC-172979A25B71 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_851CFD0C-D616-47D1-A0E0-044053B89B03][org_gcr_2017-05-12_mara_851CFD0C-D616-47D1-A0E0-044053B89B03]]
(setq TeX-save-query nil)
;; org_gcr_2017-05-12_mara_851CFD0C-D616-47D1-A0E0-044053B89B03 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5B99942E-0535-40CC-9C61-F895DAF8C545][org_gcr_2017-05-12_mara_5B99942E-0535-40CC-9C61-F895DAF8C545]]
(add-to-list 'auto-mode-alist '("\\.lco?\\'" . TeX-latex-mode))
;; org_gcr_2017-05-12_mara_5B99942E-0535-40CC-9C61-F895DAF8C545 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_58F2B467-037A-4DE8-B780-886A7A0BEC09][org_gcr_2018-03-06_mara_58F2B467-037A-4DE8-B780-886A7A0BEC09]]
(setq font-latex-fontify-script t)
;; org_gcr_2018-03-06_mara_58F2B467-037A-4DE8-B780-886A7A0BEC09 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_6C92D757-E7A6-4635-B1F5-762DAC8C8503][org_gcr_2018-03-06_mara_6C92D757-E7A6-4635-B1F5-762DAC8C8503]]
(setq font-latex-fontify-script-max-level 3)
;; org_gcr_2018-03-06_mara_6C92D757-E7A6-4635-B1F5-762DAC8C8503 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_10961961-251E-46A1-B155-FD424A99B2FF][org_gcr_2018-03-06_mara_10961961-251E-46A1-B155-FD424A99B2FF]]
(setq TeX-ispell-extend-skip-list t)
;; org_gcr_2018-03-06_mara_10961961-251E-46A1-B155-FD424A99B2FF ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-07_mara_4533FF11-F0B1-48B8-A780-D737AC29F7D6][org_gcr_2018-03-07_mara_4533FF11-F0B1-48B8-A780-D737AC29F7D6]]
(setq TeX-PDF-mode t)
;; org_gcr_2018-03-07_mara_4533FF11-F0B1-48B8-A780-D737AC29F7D6 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_C3C1359C-0A11-47C1-AEFD-4C657DF7787A][org_gcr_2018-03-06_mara_C3C1359C-0A11-47C1-AEFD-4C657DF7787A]]
(setq-default TeX-engine 'xetex)
(setq-default TeX-PDF-mode t)
;; org_gcr_2018-03-06_mara_C3C1359C-0A11-47C1-AEFD-4C657DF7787A ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_4826C62E-511D-453D-8FF2-3A916A9D3B65][org_gcr_2018-03-06_mara_4826C62E-511D-453D-8FF2-3A916A9D3B65]]
(setq TeX-show-compilation t)
;; org_gcr_2018-03-06_mara_4826C62E-511D-453D-8FF2-3A916A9D3B65 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_88CDF424-3E45-4D0E-838F-B9387054B7DB][org_gcr_2018-03-06_mara_88CDF424-3E45-4D0E-838F-B9387054B7DB]]
(setq TeX-file-line-error t)
;; org_gcr_2018-03-06_mara_88CDF424-3E45-4D0E-838F-B9387054B7DB ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-06_mara_214A76EF-F021-4FE3-95B7-AFE7453EDB21][org_gcr_2018-03-06_mara_214A76EF-F021-4FE3-95B7-AFE7453EDB21]]
(setq TeX-clean-confirm t)
;; org_gcr_2018-03-06_mara_214A76EF-F021-4FE3-95B7-AFE7453EDB21 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-05_mara_5F1D507C-7E7F-40C0-9547-A2864763FFEC][org_gcr_2018-03-05_mara_5F1D507C-7E7F-40C0-9547-A2864763FFEC]]
(setq-default TeX-master t)
;; org_gcr_2018-03-05_mara_5F1D507C-7E7F-40C0-9547-A2864763FFEC ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-07_mara_8C054399-B5D2-4951-BB01-9D97FD1EBD4F][org_gcr_2018-03-07_mara_8C054399-B5D2-4951-BB01-9D97FD1EBD4F]]
(setq TeX-parse-self t)
(setq TeX-auto-save t)
;; org_gcr_2018-03-07_mara_8C054399-B5D2-4951-BB01-9D97FD1EBD4F ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-07_mara_DB006B6E-953F-48B8-ABE2-1CC763558DA5][org_gcr_2018-03-07_mara_DB006B6E-953F-48B8-ABE2-1CC763558DA5]]
(setq TeX-file-recurse t)
;; org_gcr_2018-03-07_mara_DB006B6E-953F-48B8-ABE2-1CC763558DA5 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-05_mara_0A5B88B3-C1DE-4C06-B44C-98E5468CDCC2][org_gcr_2018-03-05_mara_0A5B88B3-C1DE-4C06-B44C-98E5468CDCC2]]
(define-key TeX-mode-map (kbd "C-c C-c") #'help/safb-TeX-command-master)
(define-key TeX-mode-map (kbd "C-j") nil)
(define-key TeX-mode-map (kbd "C-M-f") nil)
(define-key TeX-mode-map (kbd "C-M-f") #'LaTeX-find-matching-end)
(define-key TeX-mode-map (kbd "C-M-b") nil)
(define-key TeX-mode-map (kbd "C-M-b") #'LaTeX-find-matching-begin)
(define-key TeX-mode-map (kbd "s-l") nil)
(define-key TeX-mode-map (kbd "s-l") #'TeX-complete-symbol)
;; org_gcr_2018-03-05_mara_0A5B88B3-C1DE-4C06-B44C-98E5468CDCC2 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-05_mara_033D8FD5-B014-40CC-9EBD-095FF51EBD6A][org_gcr_2018-03-05_mara_033D8FD5-B014-40CC-9EBD-095FF51EBD6A]]
(defhydra help/hydra/auctex (:color blue
                                    :hint nil)
  "
AUCTeX: _H_elp _q_uit
Do: Run_a_ll →R_e_gion →B_u_ffer →Section(_1_) _K_ill-Job
    Center-Buffer(_2_) Go-Home(_3_) Clean(_4_) Save-Belonging(_6_
Insert: _S_ection _E_nvironment _M_acro _F_ont(¿) _C_lose-Env _I_tem
Mark: E_n_vironment (_j_ust one) Se_c_tion (jus_t_ one)
Fold: Fol_d_* Bu_f_fe_r_ Re_g_i_o_n _P_aragraph Macr_o_ En_v_ Mat_h_ Co_m_ment
Narrow: _G_roup Env_i_ronment
Errors: _R_eport ⏼_B_oxes ⏼_W_arnings
"
  ;; Do
  ("a" TeX-command-run-all)
  ("e" TeX-command-region)
  ("u" TeX-command-buffer)
  ("1" LaTeX-command-section)
  ("K" TeX-kill-job)
  ("2" TeX-recenter-output-buffer)
  ("3" TeX-home-buffer)
  ("4" TeX-clean)
  ("H" TeX-documentation-texdoc)
  ("6" TeX-save-document)
  ;; Insert
  ("S" LaTeX-section)
  ("E" LaTeX-environment)
  ("M" TeX-insert-macro)
  ("F" TeX-font)
  ("C" LaTeX-close-environment)
  ("I" LaTeX-insert-item)
  ;; Mark
  ("n" LaTeX-mark-environment)
  ("j" (lambda (interactive)
         (let ((current-prefix-arg '(4))) (call-interactively 'LaTeX-mark-environment)) ))
  ("c" LaTeX-mark-section)
  ("t" (lambda (interactive)
         (let ((current-prefix-arg '(4))) (call-interactively
                                           'LaTeX-mark-section)) ))
  ;; Folding
  ("d" TeX-fold-dwim)
  ("f" TeX-fold-buffer)
  ("r" TeX-fold-clearout-buffer)
  ("g" TeX-fold-region)
  ("i" TeX-fold-clearout-region)
  ("P" TeX-fold-paragraph)
  ("o" TeX-fold-macro)
  ("v" TeX-fold-env)
  ("h" TeX-fold-math)
  ("m" TeX-fold-comment)
  ;; Narrow:
  ("G" TeX-narrow-to-group)
  ("i" LaTeX-narrow-to-environment)
  ;; Errors
  ("R" TeX-error-overview)
  ("B" TeX-toggle-debug-bad-boxes)
  ("W" TeX-toggle-debug-warnings)
  ("q" nil))
;; org_gcr_2018-03-05_mara_033D8FD5-B014-40CC-9EBD-095FF51EBD6A ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-05_mara_8E7A881B-6807-4FA9-A37B-F5E5B1292181][org_gcr_2018-03-05_mara_8E7A881B-6807-4FA9-A37B-F5E5B1292181]]
(defun help/TeX-mode-hook ()
  (key-chord-define-local "hh" #'help/hydra/auctex/body)
  (LaTeX-math-mode)
  (TeX-fold-mode 1)
  (prettify-symbols-mode)
  (TeX-install-toolbar)
  (setq LaTeX-enable-toolbar t)
  (TeX-interactive-mode)
  (local-unset-key (kbd "C-j")))
(add-hook 'TeX-mode-hook 'help/TeX-mode-hook)
;; org_gcr_2018-03-05_mara_8E7A881B-6807-4FA9-A37B-F5E5B1292181 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C74104AA-A25C-4BE8-A7DD-99DEA240FF73][org_gcr_2017-05-12_mara_C74104AA-A25C-4BE8-A7DD-99DEA240FF73]]
(eval-after-load "ox" '(require 'ox-koma-letter))
;; org_gcr_2017-05-12_mara_C74104AA-A25C-4BE8-A7DD-99DEA240FF73 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8A241D12-24B3-4C4C-AC99-B55954611025][org_gcr_2017-05-12_mara_8A241D12-24B3-4C4C-AC99-B55954611025]]
(eval-after-load "ox-koma-letter"
  '(progn
     (add-to-list 'org-latex-classes
                  `("help-letter"
                    ,(concat "\\documentclass["
                             help/ltx-cls-opt
                             ", pagesize, UScommercial9]{scrlttr2}")))

     (setq org-koma-letter-default-class "help-letter")))
;; org_gcr_2017-05-12_mara_8A241D12-24B3-4C4C-AC99-B55954611025 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_33A83D5A-E541-474C-AA0D-2E039EC74CDD][org_gcr_2017-05-12_mara_33A83D5A-E541-474C-AA0D-2E039EC74CDD]]
(setq org-koma-letter-class-option-file "KomaDefault")
;; org_gcr_2017-05-12_mara_33A83D5A-E541-474C-AA0D-2E039EC74CDD ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_42D37E52-A420-4196-8B2C-6755441A5FC3][org_gcr_2017-05-12_mara_42D37E52-A420-4196-8B2C-6755441A5FC3]]
(use-package markdown-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
  (use-package ox-gfm
    :ensure t
    :config
    (add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode)))
  (help/on-osx
   (setq markdown-open-command "/Users/gcr/util/mark")))
;; org_gcr_2017-05-12_mara_42D37E52-A420-4196-8B2C-6755441A5FC3 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-11-19_mara_60445A8D-329F-4816-BFA5-1283AC570D30][org_gcr_2017-11-19_mara_60445A8D-329F-4816-BFA5-1283AC570D30]]
(use-package el2markdown
  :ensure t
  :config
  (defun help/el2markdown-post-convert-hook-fn (buf)
    (interactive)
    (message (format "el2markdowned: %s" buf)))
  (add-hook 'el2markdown-post-convert-hook #'help/el2markdown-post-convert-hook-fn))
;; org_gcr_2017-11-19_mara_60445A8D-329F-4816-BFA5-1283AC570D30 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_62E6542A-B340-470A-B7E0-2F4438EBBAE9][org_gcr_2017-05-12_mara_62E6542A-B340-470A-B7E0-2F4438EBBAE9]]
(use-package htmlize
  :config
  (setq org-html-htmlize-output-type htmlize-output-type)
  (setq htmlize-output-type 'inline-css))
;; org_gcr_2017-05-12_mara_62E6542A-B340-470A-B7E0-2F4438EBBAE9 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_03AEAE7A-99ED-42BE-BE6E-0485884B55BB][org_gcr_2017-05-12_mara_03AEAE7A-99ED-42BE-BE6E-0485884B55BB]]
(setq org-html-doctype "html5")
;; org_gcr_2017-05-12_mara_03AEAE7A-99ED-42BE-BE6E-0485884B55BB ends here

;; [[file:~/src/help/help.org::org_gcr_2017-12-03_mara_70A08E80-7CD1-4D4F-9584-34F6FBD7A32E][org_gcr_2017-12-03_mara_70A08E80-7CD1-4D4F-9584-34F6FBD7A32E]]
(use-package ox-clip
  :ensure t)
;; org_gcr_2017-12-03_mara_70A08E80-7CD1-4D4F-9584-34F6FBD7A32E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_41F8B285-650A-4394-8ECD-85C81181DF14][org_gcr_2017-05-12_mara_41F8B285-650A-4394-8ECD-85C81181DF14]]
(setq org-ascii-text-width 80)
(setq org-ascii-global-margin 0)
;; org_gcr_2017-05-12_mara_41F8B285-650A-4394-8ECD-85C81181DF14 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_96A9D762-036A-49C0-9E1B-5ACD3F5AE58E][org_gcr_2017-05-12_mara_96A9D762-036A-49C0-9E1B-5ACD3F5AE58E]]
(defun help/occur-non-ascii ()
  "Find any non-ascii characters in the current buffer.
Attribution: URL `https://www.emacswiki.org/emacs/FindingNonAsciiCharacters'"
  (interactive)
  (occur "[^[:ascii:]]"))
;; org_gcr_2017-05-12_mara_96A9D762-036A-49C0-9E1B-5ACD3F5AE58E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8D4105B8-5215-4835-91BF-B0D03ACC3A78][org_gcr_2017-05-12_mara_8D4105B8-5215-4835-91BF-B0D03ACC3A78]]
(use-package ox-beamer)
;; org_gcr_2017-05-12_mara_8D4105B8-5215-4835-91BF-B0D03ACC3A78 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B19CF074-8B77-4843-912C-F68B6FB0FE2F][org_gcr_2017-05-12_mara_B19CF074-8B77-4843-912C-F68B6FB0FE2F]]
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
;; org_gcr_2017-05-12_mara_B19CF074-8B77-4843-912C-F68B6FB0FE2F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-19_mara_3FB67413-237F-425D-97D2-B2E164AE5F8F][org_gcr_2017-05-19_mara_3FB67413-237F-425D-97D2-B2E164AE5F8F]]
(use-package ox-reveal
  :ensure t
  :config
  (setq org-reveal-root (expand-file-name "~/src/reveal.js")))
;; org_gcr_2017-05-19_mara_3FB67413-237F-425D-97D2-B2E164AE5F8F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-16_mara_FB8AD647-F0FA-4004-B930-A9CD97E97900][org_gcr_2017-07-16_mara_FB8AD647-F0FA-4004-B930-A9CD97E97900]]
(use-package sh-script
  :config
  (defun help/sh-mode-hook-fn ()
    (interactive)
    (setq sh-shell "bash")
    (setq sh-basic-offset 2))
  (add-hook 'sh-mode-hook #'help/sh-mode-hook-fn))
;; org_gcr_2017-07-16_mara_FB8AD647-F0FA-4004-B930-A9CD97E97900 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-16_mara_05CFE4C1-3363-42A3-A517-9A961282BB19][org_gcr_2017-07-16_mara_05CFE4C1-3363-42A3-A517-9A961282BB19]]
(use-package toggle-quotes
  :ensure t)
;; org_gcr_2017-07-16_mara_05CFE4C1-3363-42A3-A517-9A961282BB19 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-16_mara_B4B1E9B3-3146-46AA-80C8-20B28C352E55][org_gcr_2017-07-16_mara_B4B1E9B3-3146-46AA-80C8-20B28C352E55]]
(defhydra help/hydra-sh-mode (:color blue
                                     :hint nil)
  "
sh-mode:
 _i_ insert #!-line
  _q_ quit
"
  ("i" sh-set-shell)
  ("q" nil))
(key-chord-define sh-mode-map "hh" #'help/hydra-sh-mode/body)
;; org_gcr_2017-07-16_mara_B4B1E9B3-3146-46AA-80C8-20B28C352E55 ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-17T20-26-45-05-00_mara_AF83DB64-A5AD-4853-BE74-6DA4E4A4E2C6][org_gcr_2018-03-17T20-26-45-05-00_mara_AF83DB64-A5AD-4853-BE74-6DA4E4A4E2C6]]
(use-package make-mode
  :config
  (defun help/make-mode-hook ()
    (set (make-local-variable 'tab-width) 4)))
(add-hook 'makefile-mode-hook #'help/make-mode-hook)
(add-to-list 'auto-mode-alist '("Makefile" . makefile-mode))
;; org_gcr_2018-03-17T20-26-45-05-00_mara_AF83DB64-A5AD-4853-BE74-6DA4E4A4E2C6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_96443D6C-1E5B-48C5-9853-544D0EE79B1E][org_gcr_2017-05-12_mara_96443D6C-1E5B-48C5-9853-544D0EE79B1E]]
(use-package apache-mode
  :ensure t)
;; org_gcr_2017-05-12_mara_96443D6C-1E5B-48C5-9853-544D0EE79B1E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D12C607E-C07C-41F8-A0B0-02A228C7AED7][org_gcr_2017-05-12_mara_D12C607E-C07C-41F8-A0B0-02A228C7AED7]]
(use-package ssh-config-mode
  :ensure t
  :mode (("/\\.ssh/config\\'"     . ssh-config-mode)
         ("/sshd?_config\\'"      . ssh-config-mode)
         ("/known_hosts\\'"       . ssh-known-hosts-mode)
         ("/authorized_keys2?\\'" . ssh-authorized-keys-mode))
  :config
  (add-hook 'ssh-config-mode-hook #'turn-on-font-lock)
  (add-hook 'ssh-config-mode-hook #'help/text-mode-fn))
;; org_gcr_2017-05-12_mara_D12C607E-C07C-41F8-A0B0-02A228C7AED7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-06-13_mara_350A94E2-4280-4D5E-BB58-24887D9A57CD][org_gcr_2017-06-13_mara_350A94E2-4280-4D5E-BB58-24887D9A57CD]]
(use-package crontab-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.cron\\(tab\\)?\\'" . crontab-mode))
  (add-hook 'crontab-mode-hook #'turn-on-stripe-buffer-mode))
;; org_gcr_2017-06-13_mara_350A94E2-4280-4D5E-BB58-24887D9A57CD ends here

;; [[file:~/src/help/help.org::org_gcr_2018-01-03_mara_CD4698C2-3650-45E4-94F8-F8B3EB66DA57][org_gcr_2018-01-03_mara_CD4698C2-3650-45E4-94F8-F8B3EB66DA57]]
(use-package ansible
  :ensure t
  :config
  (defhydra help/hydra/ansible (:color blue
                                       :hint nil)
    "
Ansible: (q to quit)
 _D_ecrypt buffer _E_ncrypt buffer
"
    ("D" #'ansible::decrypt-buffer)
    ("E" #'ansible::encrypt-buffer)
    ("q" nil))
  (key-chord-define ansible::key-map "hh" #'help/hydra/ansible/body))
;; org_gcr_2018-01-03_mara_CD4698C2-3650-45E4-94F8-F8B3EB66DA57 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_AF516C01-3152-4194-954B-91A44A429972][org_gcr_2017-05-12_mara_AF516C01-3152-4194-954B-91A44A429972]]
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.art" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
;; org_gcr_2017-05-12_mara_AF516C01-3152-4194-954B-91A44A429972 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9D0BBF2C-BB7C-4B72-BA10-0B497FE8CAA1][org_gcr_2017-05-12_mara_9D0BBF2C-BB7C-4B72-BA10-0B497FE8CAA1]]
(defconst help/ditaa-jar (getenv "DITAA"))
(setq org-ditaa-jar-path help/ditaa-jar)
;; org_gcr_2017-05-12_mara_9D0BBF2C-BB7C-4B72-BA10-0B497FE8CAA1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_362D21E8-3D98-4905-8942-A146C4A555D1][org_gcr_2017-05-12_mara_362D21E8-3D98-4905-8942-A146C4A555D1]]
(use-package graphviz-dot-mode
  :ensure t
  :config
  (setf (cdr (assoc "dot" org-src-lang-modes)) 'graphviz-dot))
;; org_gcr_2017-05-12_mara_362D21E8-3D98-4905-8942-A146C4A555D1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_91D0CFDF-6FC2-4F4A-9CFC-825CED0061B6][org_gcr_2017-05-12_mara_91D0CFDF-6FC2-4F4A-9CFC-825CED0061B6]]
(use-package plantuml-mode
  :ensure t
  :init
  (defconst help/plantuml-jar (getenv "PLANTUML"))
  (setq plantuml-jar-path help/plantuml-jar)
  :config
  (eval-after-load "ob-plantuml"
    (setq org-plantuml-jar-path help/plantuml-jar)))
;; org_gcr_2017-05-12_mara_91D0CFDF-6FC2-4F4A-9CFC-825CED0061B6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-06-25_mara_B33E6DF0-8A18-4DBA-A39D-B16649F6E793][org_gcr_2017-06-25_mara_B33E6DF0-8A18-4DBA-A39D-B16649F6E793]]
(use-package xpm
  :ensure t)
;; org_gcr_2017-06-25_mara_B33E6DF0-8A18-4DBA-A39D-B16649F6E793 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B1FCEF49-334F-4F64-B96F-A888ABE84BB0][org_gcr_2017-05-12_mara_B1FCEF49-334F-4F64-B96F-A888ABE84BB0]]
(setq inhibit-eol-conversion t)
;; org_gcr_2017-05-12_mara_B1FCEF49-334F-4F64-B96F-A888ABE84BB0 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5D771C42-CAAF-439D-BEC1-5A6559D168D2][org_gcr_2017-05-12_mara_5D771C42-CAAF-439D-BEC1-5A6559D168D2]]
(use-package uniquify)
(setq uniquify-buffer-name-style 'forward)
;; org_gcr_2017-05-12_mara_5D771C42-CAAF-439D-BEC1-5A6559D168D2 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C5DA95E6-0F38-450E-96C8-6CED005DE0D1][org_gcr_2017-05-12_mara_C5DA95E6-0F38-450E-96C8-6CED005DE0D1]]
(setq ring-bell-function 'ignore)
(setq visible-bell t)
;; org_gcr_2017-05-12_mara_C5DA95E6-0F38-450E-96C8-6CED005DE0D1 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F6E5E796-E1A4-4599-B6D1-F0729C1619A0][org_gcr_2017-05-12_mara_F6E5E796-E1A4-4599-B6D1-F0729C1619A0]]
(setq blink-matching-paren nil)
(show-paren-mode)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
;; org_gcr_2017-05-12_mara_F6E5E796-E1A4-4599-B6D1-F0729C1619A0 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_DD79CB65-2F96-40DD-8BD8-BECDCE8CD399][org_gcr_2017-05-12_mara_DD79CB65-2F96-40DD-8BD8-BECDCE8CD399]]
(blink-cursor-mode 0)
(help/on-gui
 (setq-default cursor-type 'box)
 (setq x-stretch-cursor 1))
;; org_gcr_2017-05-12_mara_DD79CB65-2F96-40DD-8BD8-BECDCE8CD399 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_0BCAB755-9914-473F-9543-37130529809F][org_gcr_2017-05-12_mara_0BCAB755-9914-473F-9543-37130529809F]]
(prefer-coding-system 'utf-8)
(help/on-gui
 (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
 (help/on-windows
  (set-clipboard-coding-system 'utf-16le-dos)))
;; org_gcr_2017-05-12_mara_0BCAB755-9914-473F-9543-37130529809F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C53AF7AE-494C-4916-83C8-F175554B1CAE][org_gcr_2017-05-12_mara_C53AF7AE-494C-4916-83C8-F175554B1CAE]]
(global-hl-line-mode t)
;; org_gcr_2017-05-12_mara_C53AF7AE-494C-4916-83C8-F175554B1CAE ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8B8F5CDF-A2FF-49C3-8DB1-3551942F7573][org_gcr_2017-05-12_mara_8B8F5CDF-A2FF-49C3-8DB1-3551942F7573]]
(setq default-input-method 'TeX)
;; org_gcr_2017-05-12_mara_8B8F5CDF-A2FF-49C3-8DB1-3551942F7573 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_DD49BAEE-1C39-40E1-93B5-9CBDCD5E284A][org_gcr_2017-05-12_mara_DD49BAEE-1C39-40E1-93B5-9CBDCD5E284A]]
(setq mouse-drag-copy-region t)
;; org_gcr_2017-05-12_mara_DD49BAEE-1C39-40E1-93B5-9CBDCD5E284A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_828D7008-4B78-44AE-B5B7-15B60B03B3A6][org_gcr_2017-05-12_mara_828D7008-4B78-44AE-B5B7-15B60B03B3A6]]
(use-package multiple-cursors
  :ensure t
  :config
  (setq mc/always-run-for-all t))
;; org_gcr_2017-05-12_mara_828D7008-4B78-44AE-B5B7-15B60B03B3A6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_AA76B6F1-AC3F-42D8-B321-2BD1B05DDE2C][org_gcr_2017-05-12_mara_AA76B6F1-AC3F-42D8-B321-2BD1B05DDE2C]]
(defun help/recenter-line-near-top-fn ()
  "Move current line near top"
  (interactive)
  (let ((recenter-positions '(5)))
    (recenter-top-bottom)))
;; org_gcr_2017-05-12_mara_AA76B6F1-AC3F-42D8-B321-2BD1B05DDE2C ends here

;; [[file:~/src/help/help.org::org_gcr_2018-03-14_mara_385BE196-A42C-4086-9BA4-948DB62C2E26][org_gcr_2018-03-14_mara_385BE196-A42C-4086-9BA4-948DB62C2E26]]
(global-prettify-symbols-mode)
(setq prettify-symbols-unprettify-at-point 'right-edge)
;; org_gcr_2018-03-14_mara_385BE196-A42C-4086-9BA4-948DB62C2E26 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1AD36955-5FAC-4794-A9B0-A8DC6639A04C][org_gcr_2017-05-12_mara_1AD36955-5FAC-4794-A9B0-A8DC6639A04C]]
(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-distinct-fringe-background t)
  (setq solarized-use-variable-pitch nil)
  (setq solarized-use-less-bold t)
  (setq solarized-use-more-italic nil)
  (setq solarized-emphasize-indicators nil)
  (setq solarized-scale-org-headlines t)
  (load-theme 'solarized-dark t)
  (eval-after-load "smart-mode-line"
    '(sml/setup)))
;; org_gcr_2017-05-12_mara_1AD36955-5FAC-4794-A9B0-A8DC6639A04C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_96BD218B-65E7-4ACA-98CE-108C3BFC29A3][org_gcr_2017-05-12_mara_96BD218B-65E7-4ACA-98CE-108C3BFC29A3]]
(setq comint-scroll-to-bottom-on-input 'this)
(setq comint-scroll-to-bottom-on-output 'others)
(setq comint-move-point-for-output 'others)
(setq comint-show-maximum-output t)
(setq comint-scroll-show-maximum-output t)
(setq comint-move-point-for-output t)
;; org_gcr_2017-05-12_mara_96BD218B-65E7-4ACA-98CE-108C3BFC29A3 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_F4517BF4-A876-4E3B-B636-9A60BED7174F][org_gcr_2017-05-12_mara_F4517BF4-A876-4E3B-B636-9A60BED7174F]]
(setq comint-prompt-read-only nil)
;; org_gcr_2017-05-12_mara_F4517BF4-A876-4E3B-B636-9A60BED7174F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_6B639D09-DA18-40C5-ABA0-8647820507E6][org_gcr_2017-05-12_mara_6B639D09-DA18-40C5-ABA0-8647820507E6]]
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
;; org_gcr_2017-05-12_mara_6B639D09-DA18-40C5-ABA0-8647820507E6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-13_mara_A81CE2F3-CD06-40C9-AD1A-8AB74AB88016][org_gcr_2017-07-13_mara_A81CE2F3-CD06-40C9-AD1A-8AB74AB88016]]
(setq frame-title-format '("" "%b - PIE Interactive Editor "))
;; org_gcr_2017-07-13_mara_A81CE2F3-CD06-40C9-AD1A-8AB74AB88016 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-11_mara_27556B29-B77D-445F-8A54-00BDB89B452A][org_gcr_2017-07-11_mara_27556B29-B77D-445F-8A54-00BDB89B452A]]
(add-to-list 'image-load-path "~/src/help/xpm")
(add-to-list 'image-load-path "~/src/help/tiff")
;; org_gcr_2017-07-11_mara_27556B29-B77D-445F-8A54-00BDB89B452A ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_03B4E8E1-083B-4F5D-A4A0-BAE8A0553FAF][org_gcr_2017-05-12_mara_03B4E8E1-083B-4F5D-A4A0-BAE8A0553FAF]]
(menu-bar-mode nil)
;; org_gcr_2017-05-12_mara_03B4E8E1-083B-4F5D-A4A0-BAE8A0553FAF ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D462D343-9EA8-4BCF-BD08-8FDD4F3E11E9][org_gcr_2017-05-12_mara_D462D343-9EA8-4BCF-BD08-8FDD4F3E11E9]]
(tool-bar-mode 1)
;; org_gcr_2017-05-12_mara_D462D343-9EA8-4BCF-BD08-8FDD4F3E11E9 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-13_mara_A03A79D4-52D0-40CC-8149-5E200FAF82FD][org_gcr_2017-07-13_mara_A03A79D4-52D0-40CC-8149-5E200FAF82FD]]
(setq tool-bar-style 'both)
;; org_gcr_2017-07-13_mara_A03A79D4-52D0-40CC-8149-5E200FAF82FD ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-11_mara_F035C9D9-EAE9-48CF-BE67-5BFF1F0A23FD][org_gcr_2017-07-11_mara_F035C9D9-EAE9-48CF-BE67-5BFF1F0A23FD]]
(tool-bar-add-item
 "list-alt"
 'ibuffer
 'Buffers
 :help "List buffers")
;; org_gcr_2017-07-11_mara_F035C9D9-EAE9-48CF-BE67-5BFF1F0A23FD ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-11_mara_9D659239-693A-430C-A4CE-6003BD650A60][org_gcr_2017-07-11_mara_9D659239-693A-430C-A4CE-6003BD650A60]]
(tool-bar-add-item
 "exchange"
 'help/safb-switch-to-previous-buffer
 'Swap
 :help "Swap buffers")
;; org_gcr_2017-07-11_mara_9D659239-693A-430C-A4CE-6003BD650A60 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-23_mara_949332F2-28B2-4BC3-B1E7-C7A24DF56269][org_gcr_2017-07-23_mara_949332F2-28B2-4BC3-B1E7-C7A24DF56269]]
(help/on-osx
 (tool-bar-add-item
  "apple"
  'do-nothing
  'Powered-by-macOS
  :help "Powered by macOS"
  :enable nil))
(help/on-gnu/linux
 (tool-bar-add-item
  "linux"
  'do-nothing
  'Powered-by-GNU-Linux
  :help "Powered by GNU/Linux"
  :enable nil))
(help/on-windows
 (tool-bar-add-item
  "windows"
  'do-nothing
  'Powered-by-Microsoft-Windows
  :help "Powered by Microsoft Windows"
  :enable nil))
;; org_gcr_2017-07-23_mara_949332F2-28B2-4BC3-B1E7-C7A24DF56269 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D967070F-06B7-4433-94A8-36E360600C9E][org_gcr_2017-05-12_mara_D967070F-06B7-4433-94A8-36E360600C9E]]
(scroll-bar-mode nil)
(help/on-gnu/linux
 (horizontal-scroll-bar-mode nil))
;; org_gcr_2017-05-12_mara_D967070F-06B7-4433-94A8-36E360600C9E ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_DD263B9E-EFF2-49BF-B367-4F4505F8E618][org_gcr_2017-05-12_mara_DD263B9E-EFF2-49BF-B367-4F4505F8E618]]
(setq make-pointer-invisible t)
;; org_gcr_2017-05-12_mara_DD263B9E-EFF2-49BF-B367-4F4505F8E618 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2E9A617A-5D88-4E71-88EB-595AA1F16EC2][org_gcr_2017-05-12_mara_2E9A617A-5D88-4E71-88EB-595AA1F16EC2]]
(setq ediff-split-window-function 'split-window-horizontally)
;; org_gcr_2017-05-12_mara_2E9A617A-5D88-4E71-88EB-595AA1F16EC2 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8E367FFF-FCF3-4AC8-9542-A20CE62081C4][org_gcr_2017-05-12_mara_8E367FFF-FCF3-4AC8-9542-A20CE62081C4]]
(winner-mode t)
;; org_gcr_2017-05-12_mara_8E367FFF-FCF3-4AC8-9542-A20CE62081C4 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_94DA6C06-BCBB-4231-B0C7-EFD4B1310530][org_gcr_2017-05-12_mara_94DA6C06-BCBB-4231-B0C7-EFD4B1310530]]
(defun help/1-window ()
  "Work with this buffer in 1 window."
  (interactive)
  (delete-other-windows))

(defun help/2-window ()
  "Work with this buffer in 2 windows."
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (balance-windows))

(defun help/3-window ()
  "Work with this buffer in 3 windows."
  (interactive)
  (delete-other-windows)
  (split-window-below)
  (split-window-below)
  (balance-windows))

(defun help/4-window ()
  "Work with this buffer in 4 windows."
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (split-window-below)
  (call-interactively #'other-window)
  (call-interactively #'other-window)
  (split-window-below)
  (call-interactively #'other-window)
  (call-interactively #'other-window)
  (balance-windows))
;; org_gcr_2017-05-12_mara_94DA6C06-BCBB-4231-B0C7-EFD4B1310530 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_B5190A4E-4174-471F-9C82-C454D269B867][org_gcr_2017-05-12_mara_B5190A4E-4174-471F-9C82-C454D269B867]]
(setq help-window-select t)
;; org_gcr_2017-05-12_mara_B5190A4E-4174-471F-9C82-C454D269B867 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A165E3DB-37E7-49A7-84E4-1CB0D2A137C6][org_gcr_2017-05-12_mara_A165E3DB-37E7-49A7-84E4-1CB0D2A137C6]]
(use-package ace-window
  :ensure t
  :config
  (setq aw-keys '(?j ?k ?l ?i ?o ?p))
  (setq aw-scope 'frame)
  (setq aw-background nil))
;; org_gcr_2017-05-12_mara_A165E3DB-37E7-49A7-84E4-1CB0D2A137C6 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-06-20_mara_6C4B1CDD-CF71-4A5F-B900-6D3CC06D4028][org_gcr_2017-06-20_mara_6C4B1CDD-CF71-4A5F-B900-6D3CC06D4028]]
(use-package buffer-move
  :ensure t
  :config
  (define-key org-mode-map (kbd "<C-S-up>") nil)
  (global-set-key (kbd "<C-S-up>") #'buf-move-up)
  (define-key org-mode-map (kbd "<C-S-down>") nil)
  (global-set-key (kbd "<C-S-down>") #'buf-move-down)
  (define-key org-mode-map (kbd "<C-S-left>") nil)
  (global-set-key (kbd "<C-S-left>") #'buf-move-left)
  (define-key org-mode-map (kbd "<C-S-right>") nil)
  (global-set-key (kbd "<C-S-right>") #'buf-move-right))
;; org_gcr_2017-06-20_mara_6C4B1CDD-CF71-4A5F-B900-6D3CC06D4028 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-12-27_mara_AA4152A3-5D5C-4D41-AF55-4828F8BDEF7D][org_gcr_2017-12-27_mara_AA4152A3-5D5C-4D41-AF55-4828F8BDEF7D]]
(use-package resize-window
  :ensure t
  :config
  (key-chord-define-global "ww" #'resize-window))
;; org_gcr_2017-12-27_mara_AA4152A3-5D5C-4D41-AF55-4828F8BDEF7D ends here

;; [[file:~/src/help/help.org::org_gcr_2018-01-08_mara_82A71AA0-C415-49B1-8554-334215625E4F][org_gcr_2018-01-08_mara_82A71AA0-C415-49B1-8554-334215625E4F]]
(global-set-key [(shift f6)] #'kmacro-name-last-macro)
(global-set-key [(f6)] #'insert-kbd-macro)
(global-set-key [(f5)] #'elmacro-show-last-macro)
;; org_gcr_2018-01-08_mara_82A71AA0-C415-49B1-8554-334215625E4F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_8125C96A-8971-45FC-A8D2-30FDC438B71C][org_gcr_2017-05-12_mara_8125C96A-8971-45FC-A8D2-30FDC438B71C]]
(global-set-key (kbd "C-4") #'hs-toggle-hiding)
(global-set-key (kbd "C-3") #'help/my-toggle-hideshow-all)
(global-set-key (kbd "C-5") #'ido-kill-buffer)
(global-set-key (kbd "C-M-=") #'edit-indirect-region)

;; Leave C-8, C-9, and C-0 free for the OS

(defun help/insert-em-dash ()
  "Inserts an EM-DASH (not a HYPEN, not an N-DASH)"
  (interactive)
  (insert "—"))
(defun help/insert-en-dash ()
  "Inserts an EN-DASH (not a HYPEN, not an EM-DASH)"
  (interactive)
  (insert "–"))
(global-set-key (kbd "C--") #'help/insert-em-dash)
(global-set-key (kbd "M--") #'help/insert-en-dash)

(global-set-key (kbd "s-1") #'mc/edit-lines)
(global-set-key (kbd "s-2") #'mc/mark-all-like-this)
(global-set-key (kbd "s-3") #'mc/mark-previous-like-this)
(global-set-key (kbd "s-4") #'mc/mark-next-like-this)
(global-set-key (kbd "s-$") #'mc-hide-unmatched-lines-mode)
(global-set-key (kbd "s-5") #'mc/skip-to-previous-like-this)
(global-set-key (kbd "s-6") #'mc/skip-to-next-like-this)
(global-set-key (kbd "s--") #'decrement-integer-at-point)
(global-set-key (kbd "s-+") #'increment-integer-at-point)
;; org_gcr_2017-05-12_mara_8125C96A-8971-45FC-A8D2-30FDC438B71C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-06-13_mara_2DFDC64B-DBF2-473E-979F-D7D8D0DD2206][org_gcr_2017-06-13_mara_2DFDC64B-DBF2-473E-979F-D7D8D0DD2206]]
(defhydra help/hydra-checking (:color blue
                                      :hint nil)
  "
Flycheck On? %(bound-and-true-p flycheck-mode)
 WriteGood On? %(bound-and-true-p writegood-mode)
  _j_ checker/toggle _k_ checker/run _l_ checker/list
   _u_ writegood/toggle _i_ grade-level _o_ reading-ease
    _q_ quit
"
  ("j" flycheck-mode :exit nil)
  ("k" flycheck-buffer :exit nil)
  ("l" help/safb-flycheck-list-errors)
  ("u" writegood-mode)
  ("i" writegood-grade-level :exit nil)
  ("o" writegood-reading-ease :exit nil)
  ("q" nil))
(global-set-key (kbd "C-M-9") #'help/hydra-checking/body)
;; org_gcr_2017-06-13_mara_2DFDC64B-DBF2-473E-979F-D7D8D0DD2206 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-12-10_mara_A7406ADA-C903-4921-BD1A-2CEB8DF3DAEC][org_gcr_2017-12-10_mara_A7406ADA-C903-4921-BD1A-2CEB8DF3DAEC]]
(defhydra help/hydra/timestamp (:color blue :hint nil)
  "
Timestamps: (_q_uit)
  Date: _I_SO, _U_S, US With _Y_ear, US In _W_ords
   Date/Time: _N_o Colons or _w_ith
    Org-Mode: _R_ight Now or _c_hoose
"
  ("q" nil)

  ("I" help/insert-datestamp)
  ("U" help/insert-datestamp-us)
  ("Y" help/insert-datestamp-us-full-year)
  ("W" help/insert-datestamp-us-words)

  ("N" help/insert-timestamp-no-colons)
  ("w" help/insert-timestamp)

  ("R" help/org-time-stamp-with-seconds-now)
  ("c" org-time-stamp))
(global-set-key (kbd "C-t") #'help/hydra/timestamp/body)
;; org_gcr_2017-12-10_mara_A7406ADA-C903-4921-BD1A-2CEB8DF3DAEC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_1251CF6D-E4D3-45D9-A3DB-FF68D814E389][org_gcr_2017-05-12_mara_1251CF6D-E4D3-45D9-A3DB-FF68D814E389]]
(global-set-key (kbd "C-M-<tab>") #'help/untabify-buffer-or-region-if-not-indent-tabs-mode)
(global-set-key (kbd "C-M-1") #'help/1-window)
(global-set-key (kbd "C-M-2") #'help/2-window)
(global-set-key (kbd "C-M-3") #'help/3-window)
(global-set-key (kbd "C-M-4") #'help/4-window)
(global-set-key (kbd "C-M-\\") #'help/indent-region-or-buffer)
(defun help/copy-entire-buffer ()
  (interactive)
  (save-excursion
    (call-interactively 'mark-whole-buffer)
    (call-interactively 'kill-ring-save)
    (message "Buffer contents copied")))
(global-set-key (kbd "s-w") #'help/copy-entire-buffer)
(global-set-key (kbd "s-q") #'kill-buffer)
(global-set-key (kbd "M-r") #'ert)
(global-set-key (kbd "C-M-y") #'insert-char)
(global-set-key (kbd "C-M-o") #'help/occur-dwim)
(global-set-key (kbd "M-i") nil)
(global-set-key (kbd "M-i") #'help/hydra/left/describe/body)
(defhydra help/hydra/left/describe (:color blue
                                           :hint nil)
  "
Describe Something: (q to quit)
_a_ all help for everything screen
_b_ bindings
_B_ personal bindings
_c_ char
_C_ coding system
_f_ function
_F_ flycheck checker
_i_ input method
_k_ key briefly
_K_ key
_l_ language environment
_L_ mode lineage
_m_ major mode
_M_ minor mode
_n_ current coding system briefly
_N_ current coding system full
_o_ lighter indicator
_O_ lighter symbol
_p_ package
_P_ text properties
_s_ symbol
_t_ theme
_v_ variable
_w_ where is something defined
"
  ("b" describe-bindings)
  ("B" describe-personal-keybindings)
  ("C" describe-categories)
  ("c" describe-char)
  ("C" describe-coding-system)
  ("f" describe-function)
  ("F" flycheck-describe-checker)
  ("i" describe-input-method)
  ("K" describe-key)
  ("k" describe-key-briefly)
  ("l" describe-language-environment)
  ("L" help/parent-mode-display)
  ("M" describe-minor-mode)
  ("m" describe-mode)
  ("N" describe-current-coding-system)
  ("n" describe-current-coding-system-briefly)
  ("o" describe-minor-mode-from-indicator)
  ("O" describe-minor-mode-from-symbol)
  ("p" describe-package)
  ("P" describe-text-properties)
  ("q" nil)
  ("a" help)
  ("s" describe-symbol)
  ("t" describe-theme)
  ("v" describe-variable)
  ("w" where-is))
;; org_gcr_2017-05-12_mara_1251CF6D-E4D3-45D9-A3DB-FF68D814E389 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-06-13_mara_8E6A3551-A1CE-4879-AC6F-EF74EA1D8A7D][org_gcr_2017-06-13_mara_8E6A3551-A1CE-4879-AC6F-EF74EA1D8A7D]]
(global-set-key (kbd "C-d") #'delete-forward-char)
(global-set-key [(control shift ?d)] #'backward-delete-char)
(global-set-key (kbd "C-M-k") #'my-eval-expression)
(global-set-key (kbd "C-c C-k") #'help/delete-this-buffer-and-file)
(global-set-key (kbd "C-M-'") #'toggle-quotes)
;; org_gcr_2017-06-13_mara_8E6A3551-A1CE-4879-AC6F-EF74EA1D8A7D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E8ABDA7D-AC92-4C24-8287-1505E2377B2C][org_gcr_2017-05-12_mara_E8ABDA7D-AC92-4C24-8287-1505E2377B2C]]
(global-set-key (kbd "C-h") nil)
(global-set-key (kbd "C-h") #'ace-window)
;; org_gcr_2017-05-12_mara_E8ABDA7D-AC92-4C24-8287-1505E2377B2C ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_A26325F2-9D6C-49EE-8CBE-DC552C6F315F][org_gcr_2017-05-12_mara_A26325F2-9D6C-49EE-8CBE-DC552C6F315F]]
(global-set-key (kbd "s-h") nil)
;; org_gcr_2017-05-12_mara_A26325F2-9D6C-49EE-8CBE-DC552C6F315F ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_20330335-75E6-4AB4-A661-D291315FAFD7][org_gcr_2017-05-12_mara_20330335-75E6-4AB4-A661-D291315FAFD7]]
(global-set-key (kbd "C-M-j") #'help/safb-switch-to-previous-buffer)
(global-set-key (kbd "s-d") #'er/expand-region)
;; org_gcr_2017-05-12_mara_20330335-75E6-4AB4-A661-D291315FAFD7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_095E1EC7-12A2-43BB-8ED5-CF2BC6E7D158][org_gcr_2017-05-12_mara_095E1EC7-12A2-43BB-8ED5-CF2BC6E7D158]]
(defhydra help/hydra/left-side/global (:color blue
                                              :hint nil)
  "
_1_ reset-font _2_ -font _3_ +font _4_ ellipsis _5_ UUID _6_ bfr-cdng-systm _8_ selectric _-_ split-window-vertically _=_ reposition-window

_q_uit _Q_ exit-Emacs
_w_ widen _W_ords
_e_ FontAwesome _E_ prettify-symbols-mode
_t_ rectangle-mark _T_ trademarks
_y_ yas tables _Y_ transparency
_u_ universal-emotions-emoticons
_i_ scrollUp _I_ prevLogLine
_o_ dbgOnErr _O_ base64-encode-region
_p_ query-replace _P_ base64-decode-region
_}_ transliterate
_|_ split-window-horizontally

_A_ apropo'ish
_s_ help/toggle-mac-right-option-modifier _S_ help/toggle-mac-function-modifier
_d_ detangle
_f_ ag _F_ ag*
_g_ grep
_h_ hidden-mode-line
_H_ hack-local-variables (see also normal-mode)
_J_ obtj2o
_k_ scrollDown
_l_ visual-line-mode _L_ aggressive-indent-mode
_K_ nextLogLine
_;_ toggle-lax-whitespace

_x_ delete-indentation _X_pm grok
_c_ fill-paragraph
_V_ view-only mode
_b_ erase-buffer _B_ibtex
_N_ normal-mode (see also hack-local-variables)
_m_ checkmarks _M_ Marked 2
_<_ cmtIn
_>_ cmtOut
_?_ snp
"
  ("Q" help/safb-save-buffers-kill-terminal)
  ("q" nil)
  ("e" (lambda () (interactive) (insert (call-interactively 'fontawesome))))
  ("E" prettify-symbols-mode)
  ("|" split-window-horizontally)
  ("-" split-window-vertically)
  ("1" help/font-size-reset :exit nil)
  ("2" help/text-scale-decrease :exit nil)
  ("3" help/text-scale-increase :exit nil)
  ("4" help/insert-ellipsis)
  ("8" selectric-mode)
  ("r" count-words)
  ("R" help/rename-current-buffer-file)
  ("T" help/trademark/body)
  ("=" reposition-window)
  ("5" help/uuid)
  ("6" set-buffer-file-coding-system)
  ("A" hydra-apropos-ish/body)
  ("s" help/toggle-mac-right-option-modifier)
  ("g" grep)
  ("h" hidden-mode-line-mode)
  ("H" (lambda () (interactive) (hack-local-variables) (message "Local variables hacked")))
  ("l" visual-line-mode)
  ("L" aggressive-indent-mode)
  ("S" help/toggle-mac-function-modifier)
  ("x" delete-indentation)
  ("X" xpm-grok)
  ("f" ag)
  ("F" help/hydra/ag/body)
  ("v" help/hydra/vocabulary/body)
  ("V" view-mode)
  ("w" widen)
  ("W" help/hydra/words/body)
  ("t" rectangle-mark-mode)
  ("y" yas-describe-tables)
  ("Y" hydra-transparency/body)
  ("J" org-babel-tangle-jump-to-org)
  ("u" universal-emotions-emoticons)
  ("i" scroll-down-command :exit nil)
  ("d" help/safb-org-babel-detangle)
  ("k" scroll-up-command :exit nil)
  ("I" previous-logical-line :exit nil)
  ("K" next-logical-line :exit nil)
  ("N" (lambda () (interactive) (help/safb-normal-mode) (message "Entering normal-mode")))
  ("m" help/checks/body)
  ("M" help/preview-buffer-file-in-marked-2)
  ("<" help/chs)
  (">" help/che)
  ("." help/parent-mode-display)
  ("?" help/insert-noticeable-snip-comment-line)
  (";" isearch-toggle-lax-whitespace)
  ("o" toggle-debug-on-error)
  ("p" anzu-query-replace)
  ("O" base64-encode-region)
  ("P" base64-decode-region)
  ("}" help/hydra/transliterate/body)
  ("c" fill-paragraph)
  ("b" erase-buffer)
  ("B" help/bibtex/body)
  ("'" help/move-file)
  ("\"" imenu-list-minor-mode))
;; org_gcr_2017-05-12_mara_095E1EC7-12A2-43BB-8ED5-CF2BC6E7D158 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_28B4A661-E888-4EFA-ADE3-4B1C05F6E92B][org_gcr_2017-05-12_mara_28B4A661-E888-4EFA-ADE3-4B1C05F6E92B]]
(key-chord-define-global "vv" #'help/hydra/left-side/global/body)
;; org_gcr_2017-05-12_mara_28B4A661-E888-4EFA-ADE3-4B1C05F6E92B ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_C93A4DB7-1441-4DBA-B586-76266C5C30DF][org_gcr_2017-05-12_mara_C93A4DB7-1441-4DBA-B586-76266C5C30DF]]
(defhydra hydra-apropos-ish (:color blue
                                    :hint nil)
  "
_a_propos        _c_ommand
_d_ocumentation  _l_ibrary
_v_ariable       _u_ser-option
valu_e_          _i_nfo
e_m_acs          elis_p_
"
  ("a" apropos)
  ("d" apropos-documentation)
  ("v" apropos-variable)
  ("c" apropos-command)
  ("l" apropos-library)
  ("u" apropos-user-option)
  ("i" info-apropos)
  ("e" apropos-value)
  ("m" emacs-index-search)
  ("p" elisp-index-search))
;; org_gcr_2017-05-12_mara_C93A4DB7-1441-4DBA-B586-76266C5C30DF ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_EE5F8793-8604-4041-8D91-DBC419809947][org_gcr_2017-05-12_mara_EE5F8793-8604-4041-8D91-DBC419809947]]
(defhydra help/trademark (:color blue :hint nil)
  "
American _R_egistered Trademark
American _U_nregistered Trademark
American _S_ervice Mark
_J_apanese Industrial Standard
_K_orean Standard
"
  ("R" (lambda () (interactive) (insert "®")))
  ("U" (lambda () (interactive) (insert "™")))
  ("S" (lambda () (interactive) (insert "℠")))
  ("J" (lambda () (interactive) (insert "〄")))
  ("K" (lambda () (interactive) (insert "㉿"))))
;; org_gcr_2017-05-12_mara_EE5F8793-8604-4041-8D91-DBC419809947 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_E4413D83-9743-468B-BBAF-3FAF9E31F491][org_gcr_2017-05-12_mara_E4413D83-9743-468B-BBAF-3FAF9E31F491]]
(defhydra help/checks (:color blue :hint nil)
  "
_a_ ✓ _s_ ✗ _d_ ☐ _f_ ☑ _g_ ☒_
"
  ("a" (lambda () (interactive) (insert "✓")) :exit nil)
  ("s" (lambda () (interactive) (insert "✗")) :exit nil)
  ("d" (lambda () (interactive) (insert "☐")) :exit nil)
  ("f" (lambda () (interactive) (insert "☑")) :exit nil)
  ("g" (lambda () (interactive) (insert "☒")) :exit nil))
;; org_gcr_2017-05-12_mara_E4413D83-9743-468B-BBAF-3FAF9E31F491 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_D0F37886-4355-478C-A141-93F48E531CE5][org_gcr_2017-05-12_mara_D0F37886-4355-478C-A141-93F48E531CE5]]
(defhydra help/bibtex (:color blue :hint nil)
  "
_c_ Clean Entry _C_ Clean Entry & Create New Reference
_f_ Reindent Field _F_ Reindent Buffer/Region
_m_ Disable Unhelpful Modes _M_ Enable Unhelpful Modes
"
  ("c" bibtex-clean-entry)
  ("C" (lambda () (interactive) (bibtex-clean-entry 't)))
  ("f" #'bibtex-fill-entry)
  ("F" #'bibtex-reformat)
  ;; Disable them
  ("m" (lambda () (interactive)
         (progn (aggressive-indent-mode 'toggle)
                (visual-line-mode 't))))
  ;; Enable them
  ("M" (lambda () (interactive)
         (progn (aggressive-indent-mode nil)
                (visual-line-mode nil)))))
;; org_gcr_2017-05-12_mara_D0F37886-4355-478C-A141-93F48E531CE5 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_63E4B554-A5C6-46AB-9A34-E93FAF8B848B][org_gcr_2017-05-12_mara_63E4B554-A5C6-46AB-9A34-E93FAF8B848B]]
(global-set-key (kbd "C-x C-c") #'help/safb-save-buffers-kill-terminal)
(define-key org-mode-map (kbd "C-j") nil)
(global-set-key (kbd "C-j") nil)
(global-set-key (kbd "C-j") #'ido-switch-buffer)
(global-set-key (kbd "M-j") nil)
(define-key org-mode-map (kbd "M-j") nil)
(global-set-key (kbd "M-j") #'smex)
(global-set-key (kbd "C-M-,") #'ibuffer)
(define-key org-mode-map (kbd "C-o") nil)
(global-set-key (kbd "C-o") nil)
(global-set-key (kbd "C-o") #'ido-find-file)
(global-set-key (kbd "C-M-.") nil)
(global-set-key (kbd "M-s-m") #'ns-do-hide-emacs)
;; org_gcr_2017-05-12_mara_63E4B554-A5C6-46AB-9A34-E93FAF8B848B ends here

;; [[file:~/src/help/help.org::org_gcr_2017-07-28_mara_2A9CEE58-31E9-4DC8-B2EB-D3232D9DD9F7][org_gcr_2017-07-28_mara_2A9CEE58-31E9-4DC8-B2EB-D3232D9DD9F7]]
(global-set-key (kbd "s-<") (lambda () (interactive) (insert "⟪")))
(global-set-key (kbd "s->") (lambda () (interactive) (insert "⟫")))
;; org_gcr_2017-07-28_mara_2A9CEE58-31E9-4DC8-B2EB-D3232D9DD9F7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_5FAD516B-B4C1-4F47-A6B9-7CA12F9AFF5D][org_gcr_2017-05-12_mara_5FAD516B-B4C1-4F47-A6B9-7CA12F9AFF5D]]
(global-set-key (kbd "s-SPC") #'cycle-spacing)
;; org_gcr_2017-05-12_mara_5FAD516B-B4C1-4F47-A6B9-7CA12F9AFF5D ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_0CA60630-37AA-4192-91A1-FFC1B16DC3E4][org_gcr_2017-05-12_mara_0CA60630-37AA-4192-91A1-FFC1B16DC3E4]]
(key-chord-define-global "f9" #'help/util-cycle)
;; org_gcr_2017-05-12_mara_0CA60630-37AA-4192-91A1-FFC1B16DC3E4 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_921A07BB-6FBA-46E3-824D-F9F0B92F48B3][org_gcr_2017-05-12_mara_921A07BB-6FBA-46E3-824D-F9F0B92F48B3]]
(key-chord-define-global "qp" #'ispell)
(key-chord-define-global "qo" #'ispell-word)
;; org_gcr_2017-05-12_mara_921A07BB-6FBA-46E3-824D-F9F0B92F48B3 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_2C04C038-F246-4E90-92C6-15ABF018BCD3][org_gcr_2017-05-12_mara_2C04C038-F246-4E90-92C6-15ABF018BCD3]]
(key-chord-define-global "fj" #'avy-goto-word-1)
(key-chord-define-global "fm" #'avy-goto-char)
(key-chord-define-global "FJ" #'avy-pop-mark)
;; org_gcr_2017-05-12_mara_2C04C038-F246-4E90-92C6-15ABF018BCD3 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_0729FB1D-FE71-417C-A3F7-AC1A92D71FBC][org_gcr_2017-05-12_mara_0729FB1D-FE71-417C-A3F7-AC1A92D71FBC]]
(key-chord-define-global "fk" #'help/safb-help/goto-line)
;; org_gcr_2017-05-12_mara_0729FB1D-FE71-417C-A3F7-AC1A92D71FBC ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_ED3BE98E-B863-447A-AB97-F4E878F2C483][org_gcr_2017-05-12_mara_ED3BE98E-B863-447A-AB97-F4E878F2C483]]
(key-chord-define-global "FK" #'pop-to-mark-command)
;; org_gcr_2017-05-12_mara_ED3BE98E-B863-447A-AB97-F4E878F2C483 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_9302B01F-93C0-4D21-8BB6-53ECF1478153][org_gcr_2017-05-12_mara_9302B01F-93C0-4D21-8BB6-53ECF1478153]]
(help/on-gui (global-set-key (kbd "s-<return>") #'help/smart-open-line))
;; org_gcr_2017-05-12_mara_9302B01F-93C0-4D21-8BB6-53ECF1478153 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_EB0E9368-41FE-4827-9EE2-5CDFCDC1C2BA][org_gcr_2017-05-12_mara_EB0E9368-41FE-4827-9EE2-5CDFCDC1C2BA]]
(global-set-key (kbd "M-p") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-n") (kbd "C-u 1 M-v"))
;; org_gcr_2017-05-12_mara_EB0E9368-41FE-4827-9EE2-5CDFCDC1C2BA ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_078C604D-5762-4763-AD17-A397C5E224E7][org_gcr_2017-05-12_mara_078C604D-5762-4763-AD17-A397C5E224E7]]
(global-set-key (kbd "C-n") #'next-logical-line)
(global-set-key (kbd "C-s-n") #'next-line)
(global-set-key (kbd "C-p") #'previous-logical-line)
(global-set-key (kbd "C-s-p") #'previous-line)
;; org_gcr_2017-05-12_mara_078C604D-5762-4763-AD17-A397C5E224E7 ends here

;; [[file:~/src/help/help.org::org_gcr_2017-05-12_mara_BF926B57-9097-483F-AB90-E3F55869B0D9][org_gcr_2017-05-12_mara_BF926B57-9097-483F-AB90-E3F55869B0D9]]
(global-set-key (kbd "M-%") #'anzu-query-replace)
(global-set-key (kbd "C-M-%") #'anzu-query-replace-regexp)
;; org_gcr_2017-05-12_mara_BF926B57-9097-483F-AB90-E3F55869B0D9 ends here
