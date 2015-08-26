;; -*- lexical-binding: t -*-

;; [[file:help.org::*The%20Whole%20Enchilada][AD12BE48-B87B-4AB6-814D-4FA5E47597A0]]
;; [[file:~/src/help/help.org::*Org-Mode%20Fundamentals][78D777D3-FA69-4361-874C-7262DE96F753]]
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][9969960B-FFEE-48B4-BD9C-F29E750FD8A3]]
;; [[file:~/src/help/help.org::*Load%20Behavior][87B0CAB9-E6E5-4C68-B389-9289E65FCA7F]]
(setq load-prefer-newer t)
;; 87B0CAB9-E6E5-4C68-B389-9289E65FCA7F ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][D5D4EECF-00C5-4B2F-B9F9-988591C70852]]
(add-to-list 'load-path "~/src/org-mode/lisp")
;; D5D4EECF-00C5-4B2F-B9F9-988591C70852 ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][4D4E921E-7B99-43B2-AD1F-30D2593F05D7]]
(add-to-list 'load-path "~/src/org-mode/contrib/lisp")
;; 4D4E921E-7B99-43B2-AD1F-30D2593F05D7 ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][28776245-A6BB-4294-AC72-30F03F902DF7]]
(setq org-list-allow-alphabetical t)
;; 28776245-A6BB-4294-AC72-30F03F902DF7 ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][86CAEC4F-CFC4-4CAD-9993-E1DCEF3BFCD1]]
(require 'org)
;; 86CAEC4F-CFC4-4CAD-9993-E1DCEF3BFCD1 ends here
;; 9969960B-FFEE-48B4-BD9C-F29E750FD8A3 ends here
;; [[file:~/src/help/help.org::*Helper%20Functions][BB2E97AF-6364-401F-8063-8B5A0BE481E6]]
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

(defun help/org-toggle-macro-markers ()
  (interactive)
  (setq org-hide-macro-markers (not org-hide-macro-markers)))

(defun help/org-prp-hdln ()
  "Visit every Headline. If it doesn't have an ID property then add one and
  assign it a UUID. Attribution: URL `http://article.gmane.org/gmane.emacs.orgmode/99738'"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (dolist (p (nreverse
                (org-element-map (org-element-parse-buffer 'headline) 'headline
                  (lambda (headline) (org-element-property :begin headline)))))
      (goto-char p)
      (org-id-get-create))
    (save-buffer)))

(defun help/org-prp-src-blk ()
  "If it doesn't have a NAME property then add one and
   assign it a UUID. Attribution: URL `http://article.gmane.org/gmane.emacs.orgmode/99740'"
  (interactive)
  (help/org-2every-src-block
   #'(lambda (element)
       (if (not (org-element-property :name element))
           (let ((i (org-get-indentation)))
             (beginning-of-line)
             (save-excursion (insert "#+NAME: " (org-id-new) "\n"))
             (indent-to i)
             (forward-line 2))))))

(defun help/org-2every-src-block (fn)
  "Visit every Source-Block and evaluate `FN'."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (let ((case-fold-search t))
      (while (re-search-forward "^\s*#[+]BEGIN_SRC" nil t)
        (let ((element (org-element-at-point)))
          (when (eq (org-element-type element) 'src-block)
            (funcall fn element)))))
    (save-buffer)))

(defun help/org-babel-demarcate-block ()
  "Add a NAME property then assign it a UUID."
  (interactive)
  (org-babel-demarcate-block)
  (insert "\n#+NAME: " (org-id-new)))
;; BB2E97AF-6364-401F-8063-8B5A0BE481E6 ends here
;; [[file:~/src/help/help.org::*Tangling][859E61A4-D910-4731-8328-A63F6B6ACD3F]]
(add-hook 'org-babel-pre-tangle-hook #'help/org-prp-hdln)
(add-hook 'org-babel-pre-tangle-hook #'help/org-prp-src-blk)
;; 859E61A4-D910-4731-8328-A63F6B6ACD3F ends here
;; [[file:~/src/help/help.org::*Tangling][F19C629B-E784-48CA-BC53-CCFB849CE9EC]]
(setq org-babel-use-quick-and-dirty-noweb-expansion nil)
;; F19C629B-E784-48CA-BC53-CCFB849CE9EC ends here
;; [[file:~/src/help/help.org::*comments][AD42B561-29FA-4652-AD28-692CAD631E62]]
(help/set-org-babel-default-header-args :comments "noweb")
;; AD42B561-29FA-4652-AD28-692CAD631E62 ends here
;; [[file:~/src/help/help.org::*mkdirp][F501D202-9F0B-4343-B257-E0DEB4483A0B]]
(help/set-org-babel-default-header-args :mkdirp "yes")
;; F501D202-9F0B-4343-B257-E0DEB4483A0B ends here
;; [[file:~/src/help/help.org::*noweb][20BE9B4B-ED66-4935-A351-99D17B3A32D4]]
(help/set-org-babel-default-header-args :noweb "no-export")
;; 20BE9B4B-ED66-4935-A351-99D17B3A32D4 ends here
;; [[file:~/src/help/help.org::*padline][0F3E7114-A63C-44F4-A9FD-577BAEE536ED]]
(help/set-org-babel-default-header-args :padline "yes")
;; 0F3E7114-A63C-44F4-A9FD-577BAEE536ED ends here
;; [[file:~/src/help/help.org::*tangle][5E69E152-9921-4527-A2B2-24467EEF1BE9]]
(help/set-org-babel-default-header-args :tangle "no")
;; 5E69E152-9921-4527-A2B2-24467EEF1BE9 ends here
;; [[file:~/src/help/help.org::*Evaluating][6309AF39-FCE4-43DE-BD46-BC7D0BA0971D]]
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (org . t)
   ;;
   (sass . t)
   (R . t)
   (sql . t)
   ;;
   (latex . t)
   ;;
   (sh . t)
   (makefile . t)
   ;;
   (ditaa . t)
   (dot . t)
   (plantuml . t)))
;; 6309AF39-FCE4-43DE-BD46-BC7D0BA0971D ends here
;; [[file:~/src/help/help.org::*eval][58541CA5-C633-4146-8E5D-15C7A3A2D1D7]]
(help/set-org-babel-default-header-args :eval "never-export")
(help/set-org-babel-default-inline-header-args :eval "never-export")
;; 58541CA5-C633-4146-8E5D-15C7A3A2D1D7 ends here
;; [[file:~/src/help/help.org::*eval][D9F32A22-B415-48EA-A189-D8EAF7C202D8]]
(setq org-export-babel-evaluate nil)
;; D9F32A22-B415-48EA-A189-D8EAF7C202D8 ends here
;; [[file:~/src/help/help.org::*results][BC84119C-6085-4B36-A2D9-0918A68D15C5]]
(help/set-org-babel-default-header-args :results "output replace")
(help/set-org-babel-default-inline-header-args :results "value replace")
;; BC84119C-6085-4B36-A2D9-0918A68D15C5 ends here
;; [[file:~/src/help/help.org::*Weaving][71BFB4A2-DABD-4621-A6E0-C3CAECD34BC4]]
(setq org-export-with-properties t)
;; 71BFB4A2-DABD-4621-A6E0-C3CAECD34BC4 ends here
;; [[file:~/src/help/help.org::*Weaving][49FDDABE-7999-4F51-BD93-969187A220D7]]
(setq org-export-in-background nil)
;; 49FDDABE-7999-4F51-BD93-969187A220D7 ends here
;; [[file:~/src/help/help.org::*Weaving][07E50259-E68C-465E-9387-9984220CEB69]]
(setq org-export-coding-system 'utf-8)
;; 07E50259-E68C-465E-9387-9984220CEB69 ends here
;; [[file:~/src/help/help.org::*Weaving][18CD863D-F01D-44F8-9B4D-A9FC016EDC79]]
(setq org-export-preserve-breaks nil)
;; 18CD863D-F01D-44F8-9B4D-A9FC016EDC79 ends here
;; [[file:~/src/help/help.org::*Weaving][F0703ECD-DB1D-47BF-BF1A-52336FE0C5D8]]
(setq org-export-copy-to-kill-ring nil)
;; F0703ECD-DB1D-47BF-BF1A-52336FE0C5D8 ends here
;; [[file:~/src/help/help.org::*Weaving][5BCA100F-6AC1-454B-9F48-31B5A67CB587]]
(setq org-export-with-toc nil)
;; 5BCA100F-6AC1-454B-9F48-31B5A67CB587 ends here
;; [[file:~/src/help/help.org::*Weaving][5ACDD0B0-2B6F-4F71-BFDF-2D2D1D91B573]]
(setq org-src-preserve-indentation t)
;; 5ACDD0B0-2B6F-4F71-BFDF-2D2D1D91B573 ends here
;; [[file:~/src/help/help.org::*Weaving][A2FF8367-4A6A-444C-BB2E-F5AA494E33B5]]
(setq org-export-allow-bind-keywords t)
;; A2FF8367-4A6A-444C-BB2E-F5AA494E33B5 ends here
;; [[file:~/src/help/help.org::*exports][72A5FF8F-6597-4523-A604-B499B439A103]]
(help/set-org-babel-default-header-args :exports "both")
;; 72A5FF8F-6597-4523-A604-B499B439A103 ends here
;; 78D777D3-FA69-4361-874C-7262DE96F753 ends here
;; [[file:~/src/help/help.org::*Watch%20What%20You%20Eat][804FD197-8B2A-49F5-A4CB-48F6036FBCEC]]
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
;; 804FD197-8B2A-49F5-A4CB-48F6036FBCEC ends here
;; [[file:~/src/help/help.org::*Watch%20What%20You%20Eat][FAB22F99-AB0C-4A75-AFEF-9E680A5EE95D]]
(add-to-list 'load-path"~/src/use-package")
;; FAB22F99-AB0C-4A75-AFEF-9E680A5EE95D ends here
;; [[file:~/src/help/help.org::*Watch%20What%20You%20Eat][54841CA9-6491-46E8-8F40-4DCF7182CCD7]]
(eval-when-compile
  (require 'use-package))
(use-package diminish)
;; 54841CA9-6491-46E8-8F40-4DCF7182CCD7 ends here
;; [[file:~/src/help/help.org::*Display][20CC11BB-D72C-4A86-8558-44D9AE44FEAF]]
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

;; 20CC11BB-D72C-4A86-8558-44D9AE44FEAF ends here
;; [[file:~/src/help/help.org::*Hydra][2652BC97-28FA-41DC-9E0F-4B107292D78D]]
(use-package hydra
  :ensure t)
;; 2652BC97-28FA-41DC-9E0F-4B107292D78D ends here
;; [[file:~/src/help/help.org::*Keyboard][06C30DE0-5B5D-4021-B82E-C30CF1DBE923]]
(use-package key-chord
  :ensure t
  :config
  (key-chord-mode t))
;; 06C30DE0-5B5D-4021-B82E-C30CF1DBE923 ends here
;; [[file:~/src/help/help.org::*Keyboard][3EF213A9-048C-4A3D-B242-3A4D699D087C]]
(setq echo-keystrokes 0.02)
;; 3EF213A9-048C-4A3D-B242-3A4D699D087C ends here
;; [[file:~/src/help/help.org::*Libraries][6205B309-A576-4272-9D2B-C65966ECA286]]
(use-package dash
  :ensure t
  :config
  (dash-enable-font-lock))
(use-package dash-functional
  :ensure t)
;; 6205B309-A576-4272-9D2B-C65966ECA286 ends here
;; [[file:~/src/help/help.org::*Libraries][D483F480-4716-4F79-BD0A-C99691618DC5]]
(use-package f
  :ensure t)
;; D483F480-4716-4F79-BD0A-C99691618DC5 ends here
;; [[file:~/src/help/help.org::*Libraries][FA4C219D-DCAB-4416-954D-231D3F89FB36]]
(use-package s
  :ensure t)
;; FA4C219D-DCAB-4416-954D-231D3F89FB36 ends here
;; [[file:~/src/help/help.org::*Modeline][1F5BD72D-2E4B-4298-B4BF-DD52BD26FC3E]]
(use-package diminish)
;; 1F5BD72D-2E4B-4298-B4BF-DD52BD26FC3E ends here
;; [[file:~/src/help/help.org::*Modeline][4E0CC8F8-620E-41F4-AB7E-B68A82430FE0]]
(size-indication-mode)
;; 4E0CC8F8-620E-41F4-AB7E-B68A82430FE0 ends here
;; [[file:~/src/help/help.org::*Modeline][551CCCA8-8B54-4B5C-9118-22F411C687E0]]
(column-number-mode t)
;; 551CCCA8-8B54-4B5C-9118-22F411C687E0 ends here
;; [[file:~/src/help/help.org::*OSX][84EB04EB-9149-495E-AF38-942C3732D62D]]
(defmacro help/on-osx (statement &rest statements)
  "Evaluate the enclosed body only when run on OSX."
  `(when (eq system-type 'darwin)
     ,statement
     ,@statements))
;; 84EB04EB-9149-495E-AF38-942C3732D62D ends here
;; [[file:~/src/help/help.org::*OSX][EA03614E-3B8C-4D07-A8E5-B03FFB120AE4]]
(help/on-osx
 (use-package exec-path-from-shell
   :ensure t
   :config
   (exec-path-from-shell-initialize)))
;; EA03614E-3B8C-4D07-A8E5-B03FFB120AE4 ends here
;; [[file:~/src/help/help.org::*OSX][98237FE5-5D02-4DCF-BCCB-082F90AE38D8]]
(help/on-osx
 (setq mac-control-modifier 'control)
 (setq mac-command-modifier 'meta)
 (setq mac-option-modifier 'super))
;; 98237FE5-5D02-4DCF-BCCB-082F90AE38D8 ends here
;; [[file:~/src/help/help.org::*OSX][8764885C-9AFD-49DD-9E4B-F21AA0ED0D2F]]
(help/on-osx
 (defun help/yes-or-no-p (orig-fun &rest args)
   "Prevent yes-or-no-p from activating a dialog."
   (let ((use-dialog-box nil))
     (apply orig-fun args)))
 (advice-add #'yes-or-no-p :around #'help/yes-or-no-p)
 (advice-add #'y-or-n-p :around #'help/yes-or-no-p))
;; 8764885C-9AFD-49DD-9E4B-F21AA0ED0D2F ends here
;; [[file:~/src/help/help.org::*Windows][DB9672CE-E027-408F-B072-6E73FDD47349]]
(defmacro help/on-windows (statement &rest statements)
  "Evaluate the enclosed body only when run on Microsoft Windows."
  `(when (eq system-type 'windows-nt)
     ,statement
     ,@statements))
;; DB9672CE-E027-408F-B072-6E73FDD47349 ends here
;; [[file:~/src/help/help.org::*Windows][A69B960E-400A-4BC7-961C-AECF3522C7AF]]
(help/on-windows
 (setq shell-file-name "cmdproxy.exe"))
;; A69B960E-400A-4BC7-961C-AECF3522C7AF ends here
;; [[file:~/src/help/help.org::*Windows][B66E53C2-D90F-422E-BD67-250EB644C6BB]]
(help/on-windows
 (defvar w32-lwindow-modifier 'super)
 (defvar w32-rwindow-modifier 'super))
;; B66E53C2-D90F-422E-BD67-250EB644C6BB ends here
;; [[file:~/src/help/help.org::*Buffer][0E6156C3-4259-4539-BDAC-899B0AF4E80F]]
(desktop-save-mode t)
(setq desktop-restore-eager 10)
;; 0E6156C3-4259-4539-BDAC-899B0AF4E80F ends here
;; [[file:~/src/help/help.org::*Buffer][170E0633-2AA6-47AD-9234-4C1F0978C058]]
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode 1)
  :diminish undo-tree-mode)
;; 170E0633-2AA6-47AD-9234-4C1F0978C058 ends here
;; [[file:~/src/help/help.org::*Buffer][7CA01CFF-D9B6-4F1D-B120-88AFC30F281E]]
(setq require-final-newline nil)
;; 7CA01CFF-D9B6-4F1D-B120-88AFC30F281E ends here
;; [[file:~/src/help/help.org::*Buffer][C2215D90-ADDA-47C9-9F1E-21FD79BDDBC0]]
(setq track-eol t)
(setq line-move-visual nil)
;; C2215D90-ADDA-47C9-9F1E-21FD79BDDBC0 ends here
;; [[file:~/src/help/help.org::*Buffer][CDBC5A4D-F67C-412C-A1DE-69EB52287E2C]]
(setq scroll-preserve-screen-position t)
;; CDBC5A4D-F67C-412C-A1DE-69EB52287E2C ends here
;; [[file:~/src/help/help.org::*Buffer][4B565992-E3BA-4355-AD8F-061E6A1736D9]]
(use-package stripe-buffer
  :ensure t)
;; 4B565992-E3BA-4355-AD8F-061E6A1736D9 ends here
;; [[file:~/src/help/help.org::*Buffer][C82EDEC4-3E13-4B4A-A947-B8ACDB5C8160]]
(setq sentence-end-double-space nil)
;; C82EDEC4-3E13-4B4A-A947-B8ACDB5C8160 ends here
;; [[file:~/src/help/help.org::*Buffer][B80399BE-3E19-441E-93CF-C613A1309C35]]
(add-hook 'before-save-hook #'help/delete-trailing-whitespace)
;; B80399BE-3E19-441E-93CF-C613A1309C35 ends here
;; [[file:~/src/help/help.org::*Buffer][DA9A04CF-ABF9-4BF4-A9FF-85E89DA740E1]]
(use-package expand-region
  :ensure t)
;; DA9A04CF-ABF9-4BF4-A9FF-85E89DA740E1 ends here
;; [[file:~/src/help/help.org::*Buffer][9DB523BC-E21B-42B7-AEE2-31ED24C14D92]]
(setq help/column-width 80)
;; 9DB523BC-E21B-42B7-AEE2-31ED24C14D92 ends here
;; [[file:~/src/help/help.org::*Code%20Folding][2D731158-FCE7-4BDA-AE78-383EAAD1FE4B]]
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
;; 2D731158-FCE7-4BDA-AE78-383EAAD1FE4B ends here
;; [[file:~/src/help/help.org::*Colors][5CDF03F0-974F-4AFC-9F63-EA9B5D7C6923]]
(use-package rainbow-mode
  :ensure t
  :config
  :diminish rainbow-mode)
;; 5CDF03F0-974F-4AFC-9F63-EA9B5D7C6923 ends here
;; [[file:~/src/help/help.org::*Evaluation][96387299-8865-4DF8-8B98-8EF290A319B8]]
(setq-default eval-expression-print-level nil)
;; 96387299-8865-4DF8-8B98-8EF290A319B8 ends here
;; [[file:~/src/help/help.org::*Evaluation][F082B76A-8371-43DE-8FF5-2D95F3FD687A]]
(put #'upcase-region 'disabled nil)
(put #'downcase-region 'disabled nil)
(put #'narrow-to-region 'disabled nil)
;; F082B76A-8371-43DE-8FF5-2D95F3FD687A ends here
;; [[file:~/src/help/help.org::*Encryption][A7C4590E-53C4-4159-B627-178E367B0A12]]
(add-to-list 'load-path (getenv "CCRYPT"))
(use-package ps-ccrypt)
;; A7C4590E-53C4-4159-B627-178E367B0A12 ends here
;; [[file:~/src/help/help.org::*Eshell][A9A01E59-A084-4849-93F3-957753D65D24]]
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
;; A9A01E59-A084-4849-93F3-957753D65D24 ends here
;; [[file:~/src/help/help.org::*Eshell][6D58C096-C7DE-44D2-AA33-0602237F46C5]]
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
;; 6D58C096-C7DE-44D2-AA33-0602237F46C5 ends here
;; [[file:~/src/help/help.org::*File%20Based%20System][423B343F-CA48-4C7C-A0A5-45D533FFD8D6]]
(setq auto-save-default t)
(setq make-backup-files nil)
(setq auto-save-visited-file-name t)
(setq auto-save-interval 0)
(setq auto-save-timeout (* 60 5))
;; 423B343F-CA48-4C7C-A0A5-45D533FFD8D6 ends here
;; [[file:~/src/help/help.org::*File%20Based%20System][84B0605F-AA20-4CBB-8D14-5B55CF8D097D]]
(add-hook 'focus-out-hook #'help/save-all-file-buffers)
;; 84B0605F-AA20-4CBB-8D14-5B55CF8D097D ends here
;; [[file:~/src/help/help.org::*File%20Based%20System][B04C1388-6C2A-45D9-BFA6-7E21861FB9E3]]
(global-auto-revert-mode 1)
;; B04C1388-6C2A-45D9-BFA6-7E21861FB9E3 ends here
;; [[file:~/src/help/help.org::*File%20Based%20System][5A0C3F05-0C41-4E50-944E-0ACC4C2F4A15]]
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
;; 5A0C3F05-0C41-4E50-944E-0ACC4C2F4A15 ends here
;; [[file:~/src/help/help.org::*File%20Based%20System][DA537B02-6E64-42FC-BE9D-E5A3408B6599]]
(add-to-list 'find-file-not-found-functions #'help/create-non-existent-directory)
;; DA537B02-6E64-42FC-BE9D-E5A3408B6599 ends here
;; [[file:~/src/help/help.org::*File-system/directory%20management%20(Console)][26EA1235-E9EC-4DC0-9F7D-B3D14E1A27B7]]
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
;; 26EA1235-E9EC-4DC0-9F7D-B3D14E1A27B7 ends here
;; [[file:~/src/help/help.org::*File-system/directory%20management%20(Console)][720D3D44-21F6-4AA0-82B7-C23EE86783C9]]
(setq dired-dwim-target t)
;; 720D3D44-21F6-4AA0-82B7-C23EE86783C9 ends here
;; [[file:~/src/help/help.org::*File-system/directory%20management%20(Console)][8E592C34-93F5-47DC-A072-ACB8C96D3753]]
(help/on-osx
 (setq ls-lisp-use-insert-directory-program nil)
 (use-package ls-lisp))
;; 8E592C34-93F5-47DC-A072-ACB8C96D3753 ends here
;; [[file:~/src/help/help.org::*File-system/directory%20management%20(Console)][8FE141D1-224D-415F-8D68-D1A30196EA33]]
(use-package find-dired
  :ensure t
  :config
  (setq find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld")))
;; 8FE141D1-224D-415F-8D68-D1A30196EA33 ends here
;; [[file:~/src/help/help.org::*File-system/directory%20management%20(Console)][66FFA0AC-973A-412E-9056-F9B4BE9D3641]]
(use-package wdired
  :ensure t
  :config
  (setq wdired-allow-to-change-permissions t)
  (setq wdired-allow-to-redirect-links t)
  (setq wdired-use-interactive-rename t)
  (setq wdired-confirm-overwrite t)
  (setq wdired-use-dired-vertical-movement 'sometimes))
;; 66FFA0AC-973A-412E-9056-F9B4BE9D3641 ends here
;; [[file:~/src/help/help.org::*File-system/directory%20management%20(Console)][41A96AA5-4736-40CF-BECD-5AE7C43DCEFF]]
(use-package dired-imenu
  :ensure t)
;; 41A96AA5-4736-40CF-BECD-5AE7C43DCEFF ends here
;; [[file:~/src/help/help.org::*IMenu][D722C567-86BA-45AD-91AB-2536696312C8]]
(use-package imenu
  :config
  (setq imenu-sort-function #'imenu--sort-by-name))
(defun help/try-to-add-imenu ()
  "Add Imenu to modes that have `font-lock-mode' activated.

Attribution: SRC http://www.emacswiki.org/emacs/ImenuMode"
  (condition-case nil (imenu-add-to-menubar "Imenu") (error nil)))
(add-hook 'font-lock-mode-hook #'help/try-to-add-imenu)
;; D722C567-86BA-45AD-91AB-2536696312C8 ends here
;; [[file:~/src/help/help.org::*Interactively%20DO%20Things][CCCA7B51-6A71-41EF-906C-C1C3A6B0C927]]
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
;; CCCA7B51-6A71-41EF-906C-C1C3A6B0C927 ends here
;; [[file:~/src/help/help.org::*Interactively%20DO%20Things][4C4179A9-2415-4309-A127-FA143D3331DD]]
(use-package smex
  :ensure t
  :config
  (smex-initialize))
;; 4C4179A9-2415-4309-A127-FA143D3331DD ends here
;; [[file:~/src/help/help.org::*Interactively%20DO%20Things][667AED70-8685-4BEA-A32F-7B304483C05F]]
(setq ido-use-url-at-point t)
(setq ido-use-filename-at-point 'guess)
;; 667AED70-8685-4BEA-A32F-7B304483C05F ends here
;; [[file:~/src/help/help.org::*Font][6CE3010A-0F52-4050-89FF-C3DB72794822]]
(use-package unicode-fonts
  :ensure t
  :config
  (unicode-fonts-setup))
;; 6CE3010A-0F52-4050-89FF-C3DB72794822 ends here
;; [[file:~/src/help/help.org::*Font][54E78DF3-0C8E-4ABE-8CD8-36C0AF24DD26]]
(global-font-lock-mode t)
;; 54E78DF3-0C8E-4ABE-8CD8-36C0AF24DD26 ends here
;; [[file:~/src/help/help.org::*Font][391224F7-3242-4B91-BC34-6E8083947884]]
(use-package pretty-mode
  :ensure t
  :config
  (global-pretty-mode))
;; 391224F7-3242-4B91-BC34-6E8083947884 ends here
;; [[file:~/src/help/help.org::*Going%20to%20Objects][C95AD351-D087-473F-88EB-B0930C86FBDF]]
(use-package avy
  :ensure t
  :config)
;; C95AD351-D087-473F-88EB-B0930C86FBDF ends here
;; [[file:~/src/help/help.org::*Grammar][42DD3C85-F2C4-4A82-8B76-5BFBCF692E86]]
(use-package writegood-mode
  :ensure t
  :config
  (eval-after-load "writegood-mode"
    '(diminish 'writegood-mode)))
;; 42DD3C85-F2C4-4A82-8B76-5BFBCF692E86 ends here
;; [[file:~/src/help/help.org::*Grammar][4FF40D35-DDA0-4E02-80C0-52962DCD449A]]
(use-package langtool
  :ensure t
  :init
  (setq langtool-language-tool-jar (concat (getenv "EELIB") "/LanguageTool-2.8/languagetool-commandline.jar"))
  (setq langtool-mother-tongue "en")
  (setq langtool-java-bin (concat (getenv "JAVA_HOME") "/bin/java")))
;; 4FF40D35-DDA0-4E02-80C0-52962DCD449A ends here
;; [[file:~/src/help/help.org::*Helper%20Functions][D523CBF8-67C4-4C96-9298-A4A49FE54E61]]
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
  (insert (org-id-new)))

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
(defun help/text-scale-increase ()
  "Increase font size"
  (interactive)
  (help/on-gui
   (setq help/font-size (+ help/font-size 1))
   (help/update-font))
  (help/not-on-gui
   (message "Please resize the terminal emulator font.")))
(defun help/text-scale-decrease ()
  "Reduce font size."
  (interactive)
  (help/on-gui
   (when (> help/font-size 1)
     (setq help/font-size (- help/font-size 1))
     (help/update-font)))
  (help/not-on-gui
   (message "Please resize the terminal emulator font.")))

(defun help/org-xprt-rdme ()
  (interactive)
  (help/save-all-file-buffers)
  (save-excursion
    (let ((hidx (org-find-property "ID" "39A2F05A-BC60-4879-9B66-85E43297FC97")))
      (when hidx
        (goto-char hidx)
        (org-export-to-file 'gfm "README.md" nil t nil)))))

(defun help/xprt-all ()
  "Export this entire document in configured weavers."
  (interactive)
  (org-ascii-export-to-ascii)
  (org-html-export-to-html)
  (org-gfm-export-to-markdown)
  (org-latex-export-to-pdf))
;; D523CBF8-67C4-4C96-9298-A4A49FE54E61 ends here
;; [[file:~/src/help/help.org::*Intellisense%20(Auto%20Completion)][487B46D5-C025-4114-A1B4-BAAF5FAFE430]]
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
;; 487B46D5-C025-4114-A1B4-BAAF5FAFE430 ends here
;; [[file:~/src/help/help.org::*Intellisense%20(Auto%20Completion)][36899F5A-7606-461A-A17C-622B0B807E8E]]
(use-package auto-complete-chunk
  :ensure t)
;; 36899F5A-7606-461A-A17C-622B0B807E8E ends here
;; [[file:~/src/help/help.org::*Macros][989C4727-473A-4DAB-8446-5077F3042587]]
(use-package multiple-cursors
  :ensure t)
;; 989C4727-473A-4DAB-8446-5077F3042587 ends here
;; [[file:~/src/help/help.org::*Mark%20and%20Region][0B6E0831-FE6F-442F-918F-48488A6FCD2D]]
(delete-selection-mode t)
;; 0B6E0831-FE6F-442F-918F-48488A6FCD2D ends here
;; [[file:~/src/help/help.org::*Minibuffer][2D2A8781-9A67-4D3A-B0E4-B09EEBBC65D8]]
(fset #'yes-or-no-p #'y-or-n-p)
;; 2D2A8781-9A67-4D3A-B0E4-B09EEBBC65D8 ends here
;; [[file:~/src/help/help.org::*Minibuffer][F40D1069-58B9-42CA-A64E-789B56C914EC]]
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)
;; F40D1069-58B9-42CA-A64E-789B56C914EC ends here
;; [[file:~/src/help/help.org::*Minibuffer][A6E43252-3A7E-4647-BC3E-EB93CF178233]]
(setq enable-recursive-minibuffers t)
(minibuffer-depth-indicate-mode t)
;; A6E43252-3A7E-4647-BC3E-EB93CF178233 ends here
;; [[file:~/src/help/help.org::*Mouse][9B580380-CA8C-4134-80CC-FE3B0376BE73]]
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse t)
;; 9B580380-CA8C-4134-80CC-FE3B0376BE73 ends here
;; [[file:~/src/help/help.org::*Occur][00A4417A-8BE6-4417-B054-2F9D8287FAFD]]
(defun help/occur-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))
(add-hook 'occur-mode-hook #'help/occur-mode-hook-fn)
(define-key occur-mode-map (kbd "n") #'next-logical-line)
(define-key occur-mode-map (kbd "p") #'previous-logical-line)
;; 00A4417A-8BE6-4417-B054-2F9D8287FAFD ends here
;; [[file:~/src/help/help.org::*Popups][2DE86EF6-3E4B-42FD-AA11-1914A83029BE]]
(use-package alert
  :ensure t
  :config
  (setq alert-fade-time 10)
  (help/on-gui
   (help/on-osx
    (setq alert-default-style 'growl)))
  (setq alert-reveal-idle-time 120))
;; 2DE86EF6-3E4B-42FD-AA11-1914A83029BE ends here
;; [[file:~/src/help/help.org::*Projects][037534FF-945E-477A-9813-D9E4C7E54359]]
(use-package projectile
  :ensure t
  :config
  (projectile-global-mode t)
  (global-set-key (kbd "s-z") #'projectile-find-file)
  (help/on-windows
   (setq projectile-indexing-method 'alien))
  :diminish projectile-mode)
;; 037534FF-945E-477A-9813-D9E4C7E54359 ends here
;; [[file:~/src/help/help.org::*Projects][8431ABE6-1C81-4AD3-AB47-C0B793C98FE3]]
(eval-after-load "projectile"
  '(progn (setq magit-repository-directories (mapcar (lambda (dir)
                                                       (substring dir 0 -1))
                                                     (remove-if-not (lambda (project)
                                                                      (file-directory-p (concat project "/.git/")))
                                                                    (projectile-relevant-known-projects)))

                magit-repository-directories-depth 1)))
;; 8431ABE6-1C81-4AD3-AB47-C0B793C98FE3 ends here
;; [[file:~/src/help/help.org::*Printing][BD085F97-3BDA-43A5-A5BC-A17DD446E36B]]
(use-package pp
  :commands (pp-display-expression))
;; BD085F97-3BDA-43A5-A5BC-A17DD446E36B ends here
;; [[file:~/src/help/help.org::*Replacing][D9A8B6E9-E328-47C1-9B75-863B640BEAB7]]
(use-package anzu
  :ensure t
  :config
  (global-anzu-mode t)
  (setq anzu-mode-lighter "")
  (setq anzu-deactivate-region t)
  (setq anzu-search-threshold 1000)
  (setq anzu-replace-to-string-separator " ⇒ "))
;; D9A8B6E9-E328-47C1-9B75-863B640BEAB7 ends here
;; [[file:~/src/help/help.org::*Save%20History%20of%20All%20Things][FDA728C0-CBE2-4B1B-A30F-CC8EA3E810DB]]
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
(savehist-mode t)
;; FDA728C0-CBE2-4B1B-A30F-CC8EA3E810DB ends here
;; [[file:~/src/help/help.org::*Searching][B5DDBCA8-42F2-49DF-9E7F-71E776A99946]]
(setq isearch-lax-whitespace t)
(setq isearch-regexp-lax-whitespace t)
;; B5DDBCA8-42F2-49DF-9E7F-71E776A99946 ends here
;; [[file:~/src/help/help.org::*Searching][4B9FE2A1-6A5F-42EF-AEEA-222B72170B64]]
(setq-default case-fold-search t)
;; 4B9FE2A1-6A5F-42EF-AEEA-222B72170B64 ends here
;; [[file:~/src/help/help.org::*Org-Mode][23D5548B-1081-48A8-BBCD-5C69AC2C57B8]]
(add-to-list 'ispell-skip-region-alist '("^\s*#[+]BEGIN_SRC" . "^\s*#[+]END_SRC"))
;; 23D5548B-1081-48A8-BBCD-5C69AC2C57B8 ends here
;; [[file:~/src/help/help.org::*Org-Mode][CE78FEAC-B28A-4F76-95F2-4FE246FCDCAD]]
(add-to-list 'ispell-skip-region-alist '("^\s*#[+]BEGIN_EXAMPLE" . "^\s*#[+]END_EXAMPLE"))
;; CE78FEAC-B28A-4F76-95F2-4FE246FCDCAD ends here
;; [[file:~/src/help/help.org::*Org-Mode][01BEC0C6-64F7-440F-A217-EA73CDA75DDA]]
(add-to-list 'ispell-skip-region-alist '("\:PROPERTIES\:$" . "\:END\:$"))
;; 01BEC0C6-64F7-440F-A217-EA73CDA75DDA ends here
;; [[file:~/src/help/help.org::*Org-Mode][F5DC40F2-20EC-45C0-BDB3-7C788514CD23]]
(add-to-list 'ispell-skip-region-alist '("\\[fn:.+:" . "\\]"))
;; F5DC40F2-20EC-45C0-BDB3-7C788514CD23 ends here
;; [[file:~/src/help/help.org::*Org-Mode][F5636C6E-61AC-491F-936E-FAE5974ED541]]
(add-to-list 'ispell-skip-region-alist '("^http" . "\\]"))
;; F5636C6E-61AC-491F-936E-FAE5974ED541 ends here
;; [[file:~/src/help/help.org::*Org-Mode][5BF4C8DE-63B8-4684-B8F4-0021781B1E1E]]
(add-to-list 'ispell-skip-region-alist '("=" . ".+="))
;; 5BF4C8DE-63B8-4684-B8F4-0021781B1E1E ends here
;; [[file:~/src/help/help.org::*Org-Mode][D1A2D129-9299-4349-AFF3-8F65F7D0CF95]]
(add-to-list 'ispell-skip-region-alist '("- \\*.+" . ".*\\*: "))
;; D1A2D129-9299-4349-AFF3-8F65F7D0CF95 ends here
;; [[file:~/src/help/help.org::*Org-Mode][3745D1E1-33D3-4D2F-B527-BBBCA619D455]]
(defun help/ispell-org-header-lines-regexp (h)
  "Help ispell ignore org header lines."
  (interactive)
  (cons (concat "^\s*#[+]" h ":") ".$"))

(defun help/ispell-a2isra (block-def)
  "Add to the ispell skip region alist the BLOCK-DEF."
  (interactive)
  (add-to-list 'ispell-skip-region-alist block-def))

(let ()
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
        "NAME"
        "OPTIONS"
        "SELECT_TAGS"
        "STARTUP"
        "TITLE")
    (help/ispell-a2isra (help/ispell-org-header-lines-regexp it))))
;; 3745D1E1-33D3-4D2F-B527-BBBCA619D455 ends here
;; [[file:~/src/help/help.org::*Sudo][E2D66077-10AC-46D1-AAAA-D0C81BED451B]]
(help/on-osx
 (defun help/ido-find-file ()
   "Find file as root if necessary.

Attribution: SRC `http://emacsredux.com/blog/2013/04/21/edit-files-as-root/'"
   (unless (and buffer-file-name
              (file-writable-p buffer-file-name))
     (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

 (advice-add #'ido-find-file :after #'help/ido-find-file))
;; E2D66077-10AC-46D1-AAAA-D0C81BED451B ends here
;; [[file:~/src/help/help.org::*Syntax%20Checking][33473D12-CA77-453B-8115-FE060E033ED4]]
(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  :diminish flycheck-mode)
;; 33473D12-CA77-453B-8115-FE060E033ED4 ends here
;; [[file:~/src/help/help.org::*TAB][6A9C209F-8228-4D10-B23D-6A8376FD7FB3]]
(setq-default indent-tabs-mode nil)
;; 6A9C209F-8228-4D10-B23D-6A8376FD7FB3 ends here
;; [[file:~/src/help/help.org::*TAB][FD5B749C-AC7A-40A7-AB88-851F2190E906]]
(defun help/untabify-if-not-indent-tabs-mode ()
  "Untabify if `indent-tabs-mode' is false.

Attribution: URL `http://www.emacswiki.org/emacs/UntabifyUponSave'"
  (interactive)
  (when (not indent-tabs-mode)
    (untabify (point-min) (point-max))))

(add-hook 'before-save-hook #'help/untabify-if-not-indent-tabs-mode)
;; FD5B749C-AC7A-40A7-AB88-851F2190E906 ends here
;; [[file:~/src/help/help.org::*TAB][1AB838F7-4C9B-4C35-97B5-35390871A22D]]
(setq-default tab-width 2)
;; 1AB838F7-4C9B-4C35-97B5-35390871A22D ends here
;; [[file:~/src/help/help.org::*Version%20Control][14B95634-E6E8-46A0-9698-2C9B847DD404]]
(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "s-e") #'help/safb-help/magit-status))
;; 14B95634-E6E8-46A0-9698-2C9B847DD404 ends here
;; [[file:~/src/help/help.org::*Version%20Control][27D5DC40-DD13-4E08-9EF9-D962DD08A7D5]]
(eval-after-load "log-edit"
  '(remove-hook 'log-edit-hook 'log-edit-insert-message-template))
;; 27D5DC40-DD13-4E08-9EF9-D962DD08A7D5 ends here
;; [[file:~/src/help/help.org::*Version%20Control][6FD11818-DB10-4AF4-A714-C32C04291AF2]]
(add-to-list 'auto-mode-alist '(".gitignore$" . text-mode))
;; 6FD11818-DB10-4AF4-A714-C32C04291AF2 ends here
;; [[file:~/src/help/help.org::*Whitespace%20Management][3327B4FF-82CF-42E7-AEF8-DCC968B97BDC]]
(use-package whitespace
  :ensure t
  :config
  (setq whitespace-style '(trailing lines tab-mark))
  (setq whitespace-line-column help/column-width)
  (global-whitespace-mode t)
  :diminish whitespace-mode global-whitespace-mode)
;; 3327B4FF-82CF-42E7-AEF8-DCC968B97BDC ends here
;; [[file:~/src/help/help.org::*Word%20Wrap][EDD8ABBB-B76A-4B95-9367-211A765348CD]]
(use-package visual-line-mode
  :config
  (eval-after-load "visual-line-mode"
    '(diminish 'visual-line-mode)))
;; EDD8ABBB-B76A-4B95-9367-211A765348CD ends here
;; [[file:~/src/help/help.org::*Text-Mode][9288AC00-4B73-4E10-ABAE-F2E886981F97]]
(use-package fill-column-indicator
  :ensure t
  :config
  (setq-default fill-column help/column-width))
;; 9288AC00-4B73-4E10-ABAE-F2E886981F97 ends here
;; [[file:~/src/help/help.org::*Text-Mode][42D5F313-65F0-49E1-8759-9259D4020FA9]]
(defun help/text-prog*-setup ()
  "HELP's standard configuration for buffer's working with text, often for
   programming."
  (interactive)
  (visual-line-mode)
  (linum-mode)
  (fci-mode)
  (rainbow-mode)
  (help/try-to-add-imenu)
  (writegood-mode))

(add-hook 'text-mode-hook #'help/text-prog*-setup)
;; 42D5F313-65F0-49E1-8759-9259D4020FA9 ends here
;; [[file:~/src/help/help.org::*Prog*-Mode%20Modes][B56D8E08-DF7C-4EBB-922E-EA215BD66C0D]]
(setq help/hack-modes '(makefile-mode-hook ruby-mode-hook sh-mode-hook plantuml-mode-hook tex-mode-hook ess-mode-hook graphviz-dot-mode-hook))
;; B56D8E08-DF7C-4EBB-922E-EA215BD66C0D ends here
;; [[file:~/src/help/help.org::*Prog*-Mode%20Modes][963C787F-BC23-4A6C-9637-3922541B26E2]]
(setq help/hack-lisp-modes
      '(emacs-lisp-mode-hook
        ielm-mode-hook
        lisp-interaction-mode))
(setq help/hack-modes (append help/hack-modes help/hack-lisp-modes))
;; 963C787F-BC23-4A6C-9637-3922541B26E2 ends here
;; [[file:~/src/help/help.org::*Goal][9585BEED-D8EE-4B47-94FA-7E0C604B5804]]
(use-package aggressive-indent
  :ensure t
  :config)
;; 9585BEED-D8EE-4B47-94FA-7E0C604B5804 ends here
;; [[file:~/src/help/help.org::*Goal][2B027700-7A37-4C26-BA3C-AAD0E6549F9F]]
(use-package smartparens-config
  :ensure smartparens
  :config
  (setq sp-show-pair-from-inside nil)
  :diminish smartparens-mode)
;; 2B027700-7A37-4C26-BA3C-AAD0E6549F9F ends here
;; [[file:~/src/help/help.org::*Implementation.][A0515707-4727-4A01-82E3-01A41CAA841F]]
(defun help/hack-prog*-mode-hook-fn ()
  (interactive)
  (help/text-prog*-setup)
  (smartparens-strict-mode)
  (aggressive-indent-mode)
  (hs-minor-mode)
  (help/not-on-gui (local-set-key (kbd "RET") #'newline-and-indent))
  (help/on-gui (local-set-key (kbd "<return>") #'newline-and-indent)))
;; A0515707-4727-4A01-82E3-01A41CAA841F ends here
;; [[file:~/src/help/help.org::*Wiring][EBACFD45-C2FF-47B3-B991-28591C112F28]]
(let ()
  (--each help/hack-modes
    (add-hook it #'help/hack-prog*-mode-hook-fn)))

(let ()
  (--each help/hack-lisp-modes
    (add-hook it #'help/emacs-lisp-mode-hook-fn)))

(add-hook 'ielm-mode-hook #'help/ielm-mode-hook-fn)
;; EBACFD45-C2FF-47B3-B991-28591C112F28 ends here
;; [[file:~/src/help/help.org::*Emacs%20Lisp][BDF6F6E5-D219-4C49-BB3F-D414A9741B11]]
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
;; BDF6F6E5-D219-4C49-BB3F-D414A9741B11 ends here
;; [[file:~/src/help/help.org::*Keybinding][7CEA216B-6A18-47F6-B1DE-327CFA8A591A]]
(define-key emacs-lisp-mode-map (kbd "s-p") #'describe-thing-in-popup)
;; 7CEA216B-6A18-47F6-B1DE-327CFA8A591A ends here
;; [[file:~/src/help/help.org::*Org-Mode][AB26182E-A169-4FB9-BA68-E9F7231069C1]]
(setq org-babel-min-lines-for-block-output 0)
;; AB26182E-A169-4FB9-BA68-E9F7231069C1 ends here
;; [[file:~/src/help/help.org::*Org-Mode][8F3861FD-B2F6-4618-8E70-026316855E67]]
(setq org-edit-src-auto-save-idle-delay 0)
(setq org-edit-src-turn-on-auto-save nil)
;; 8F3861FD-B2F6-4618-8E70-026316855E67 ends here
;; [[file:~/src/help/help.org::*Org-Mode][11B7C941-8AA4-471A-B4A4-BCEBFE850206]]
(defun help/org-babel-after-execute-hook ()
  "HELP settings for the `org-babel-after-execute-hook'.

This does not interfere with exports.

Attribution: URL `https://lists.gnu.org/archive/html/emacs-orgmode/2015-01/msg00534.html'"
  (interactive)
  (org-redisplay-inline-images))

(add-hook 'org-babel-after-execute-hook #'help/org-babel-after-execute-hook)
;; 11B7C941-8AA4-471A-B4A4-BCEBFE850206 ends here
;; [[file:~/src/help/help.org::*Org-Mode][9947D738-D140-4CBF-BB6D-21E2FF58BD24]]
(setq org-confirm-babel-evaluate nil)
;; 9947D738-D140-4CBF-BB6D-21E2FF58BD24 ends here
;; [[file:~/src/help/help.org::*Org-Mode][6CE707AD-A340-4B63-B747-8692E0DFF41C]]
(setq org-src-tab-acts-natively nil)
;; 6CE707AD-A340-4B63-B747-8692E0DFF41C ends here
;; [[file:~/src/help/help.org::*Org-Mode][BB8A752F-713B-4450-98DC-CE04957577EF]]
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "BLOCKED" "REVIEW" "DONE")))
;; BB8A752F-713B-4450-98DC-CE04957577EF ends here
;; [[file:~/src/help/help.org::*Org-Mode][548D2D49-98E0-456B-91BC-37D0C0BC3557]]
(setq org-startup-with-inline-images (display-graphic-p))
;; 548D2D49-98E0-456B-91BC-37D0C0BC3557 ends here
;; [[file:~/src/help/help.org::*Org-Mode][CE97A1D8-07E2-4445-80B9-3C91ACFE7FB8]]
(setq org-completion-use-ido t)
(setq org-outline-path-complete-in-steps nil)
(setq org-completion-use-iswitchb nil)
;; CE97A1D8-07E2-4445-80B9-3C91ACFE7FB8 ends here
;; [[file:~/src/help/help.org::*Org-Mode][232DFCF9-BFC7-4022-8B93-09F323CB1BA8]]
(setq org-use-speed-commands t)
;; 232DFCF9-BFC7-4022-8B93-09F323CB1BA8 ends here
;; [[file:~/src/help/help.org::*Org-Mode][F5ABA576-FB0D-4FCE-A000-AA5E38B7EB3D]]
(setq org-confirm-shell-link-function 'y-or-n-p)
;; F5ABA576-FB0D-4FCE-A000-AA5E38B7EB3D ends here
;; [[file:~/src/help/help.org::*Org-Mode][13BBCE85-2D3B-4903-8098-EB565B5CB708]]
(setq org-confirm-elisp-link-function 'y-or-n-p)
;; 13BBCE85-2D3B-4903-8098-EB565B5CB708 ends here
;; [[file:~/src/help/help.org::*Org-Mode][4AE6A326-034C-475A-BC95-877D528A94D6]]
(setq org-enforce-todo-dependencies t)
;; 4AE6A326-034C-475A-BC95-877D528A94D6 ends here
;; [[file:~/src/help/help.org::*Org-Mode][BA1565BE-2BF1-4121-96BD-A3F7462676CC]]
(when (display-graphic-p)
  (use-package org-mouse))
;; BA1565BE-2BF1-4121-96BD-A3F7462676CC ends here
;; [[file:~/src/help/help.org::*Org-Mode][42F9CE2D-591D-4BDD-998E-C85E0B7B5DF5]]
(setq org-ellipsis "…")
;; 42F9CE2D-591D-4BDD-998E-C85E0B7B5DF5 ends here
;; [[file:~/src/help/help.org::*Org-Mode][A0FB5129-6EF9-4D5F-A35A-CB5505C8FD6F]]
(setq org-hide-leading-stars t)
;; A0FB5129-6EF9-4D5F-A35A-CB5505C8FD6F ends here
;; [[file:~/src/help/help.org::*Org-Mode][4FDB1A19-4906-48EE-B7CB-26B3E9301964]]
(setq org-fontify-emphasized-text t)
;; 4FDB1A19-4906-48EE-B7CB-26B3E9301964 ends here
;; [[file:~/src/help/help.org::*Org-Mode][D2453829-D976-4FE0-B517-7CCD8C3C1A2C]]
(setq org-pretty-entities t)
;; D2453829-D976-4FE0-B517-7CCD8C3C1A2C ends here
;; [[file:~/src/help/help.org::*Org-Mode][B5A535CA-E024-4592-A787-734032E48860]]
(setq org-highlight-latex-and-related '(latex script entities))
;; B5A535CA-E024-4592-A787-734032E48860 ends here
;; [[file:~/src/help/help.org::*Org-Mode][834535C5-DCEA-47D3-B251-76DADE4CE897]]
(setq org-footnote-define-inline t)
(setq org-footnote-auto-label 'random)
(setq org-footnote-auto-adjust nil)
(setq org-footnote-section nil)
;; 834535C5-DCEA-47D3-B251-76DADE4CE897 ends here
;; [[file:~/src/help/help.org::*Org-Mode][939BFF91-F7AC-446A-B797-6B294D364082]]
(setq org-catch-invisible-edits 'error)
;; 939BFF91-F7AC-446A-B797-6B294D364082 ends here
;; [[file:~/src/help/help.org::*Org-Mode][D8426EE3-702E-4008-B2F5-0A839E0B9C27]]
(setq org-loop-over-headlines-in-active-region t)
;; D8426EE3-702E-4008-B2F5-0A839E0B9C27 ends here
;; [[file:~/src/help/help.org::*Org-Mode][EB229153-0540-4EFE-BB44-D44EE0D0E9B8]]
(setq org-startup-folded "nofold")
;; EB229153-0540-4EFE-BB44-D44EE0D0E9B8 ends here
;; [[file:~/src/help/help.org::*Org-Mode][862CCD19-46D8-47E9-85CF-43F0EE9E8404]]
(setq org-image-actual-width t)
;; 862CCD19-46D8-47E9-85CF-43F0EE9E8404 ends here
;; [[file:~/src/help/help.org::*Org-Mode][4F8C7477-3CE5-4C83-9C00-FCBAAECEB5E8]]
(setq org-hide-emphasis-markers t)
;; 4F8C7477-3CE5-4C83-9C00-FCBAAECEB5E8 ends here
;; [[file:~/src/help/help.org::*Org-Mode][78196A51-0117-4C66-8616-1508D81568A7]]
(setq org-startup-align-all-tables t)
;; 78196A51-0117-4C66-8616-1508D81568A7 ends here
;; [[file:~/src/help/help.org::*Org-Mode][0102E34E-3098-48E9-AAB9-F5433AE37D66]]
(setq org-html-checkbox-type 'unicode)
;; 0102E34E-3098-48E9-AAB9-F5433AE37D66 ends here
;; [[file:~/src/help/help.org::*Org-Mode][A1636BE6-8477-4085-BB14-E0870A19A440]]
(setq org-src-fontify-natively nil)
;; A1636BE6-8477-4085-BB14-E0870A19A440 ends here
;; [[file:~/src/help/help.org::*Org-Mode][EA9E78DF-18FA-477B-8CFF-CF921479CD40]]
(setq org-edit-src-content-indentation 0)
;; EA9E78DF-18FA-477B-8CFF-CF921479CD40 ends here
;; [[file:~/src/help/help.org::*Org-Mode][59E79DBC-FDA4-4F1A-9306-DB9204233A7C]]
(setq org-src-strip-leading-and-trailing-blank-lines t)
;; 59E79DBC-FDA4-4F1A-9306-DB9204233A7C ends here
;; [[file:~/src/help/help.org::*Org-Mode][767547FC-FCB3-433C-AC2E-4240D040F5F8]]
(setq org-src-window-setup 'current-window)
;; 767547FC-FCB3-433C-AC2E-4240D040F5F8 ends here
;; [[file:~/src/help/help.org::*Org-Mode][C0FFD815-3AB7-4101-B1E8-D73A10026CB4]]
(setq org-babel-no-eval-on-ctrl-c-ctrl-c t)
;; C0FFD815-3AB7-4101-B1E8-D73A10026CB4 ends here
;; [[file:~/src/help/help.org::*Org-Mode][C1F1C610-AC69-40E8-AD2F-EB6C849B40CB]]
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
  (call-interactively 'magit-status))
;; C1F1C610-AC69-40E8-AD2F-EB6C849B40CB ends here
;; [[file:~/src/help/help.org::*Org-Mode][727834EF-DF94-4190-98AC-B791FCCDE7E3]]
(setq org-edit-src-code nil)
;; 727834EF-DF94-4190-98AC-B791FCCDE7E3 ends here
;; [[file:~/src/help/help.org::*Org-Mode][593A037F-9615-47CA-9C13-5BC88074F24D]]
(use-package wrap-region
  :ensure t
  :config
  :diminish wrap-region-mode)
;; 593A037F-9615-47CA-9C13-5BC88074F24D ends here
;; [[file:~/src/help/help.org::*Org-Mode][8055DBFC-C839-4EED-BA59-E56D2E05F027]]
(wrap-region-add-wrapper "*" "*" nil 'org-mode)
;; 8055DBFC-C839-4EED-BA59-E56D2E05F027 ends here
;; [[file:~/src/help/help.org::*Org-Mode][15774582-183E-4625-9BDB-E36D3A7B2AFE]]
(wrap-region-add-wrapper "/" "/" nil 'org-mode)
;; 15774582-183E-4625-9BDB-E36D3A7B2AFE ends here
;; [[file:~/src/help/help.org::*Org-Mode][F3B847CA-C89F-4566-98C3-240514B37447]]
(wrap-region-add-wrapper "=" "=" nil 'org-mode)
;; F3B847CA-C89F-4566-98C3-240514B37447 ends here
;; [[file:~/src/help/help.org::*Org-Mode][0E2ECE84-87AB-4B18-9929-6E752C88118C]]
(wrap-region-add-wrapper "~" "~" nil 'org-mode)
;; 0E2ECE84-87AB-4B18-9929-6E752C88118C ends here
;; [[file:~/src/help/help.org::*Org-Mode][0EBE9F71-59AC-4D54-B792-AFC3F78985D8]]
(wrap-region-add-wrapper "+" "+" nil 'org-mode)
;; 0EBE9F71-59AC-4D54-B792-AFC3F78985D8 ends here
;; [[file:~/src/help/help.org::*Org-Mode][BB37579C-08EC-42AB-8706-7ECFD9506B8B]]
(add-hook 'org-babel-pre-tangle-hook #'help/org-xprt-rdme)
;; BB37579C-08EC-42AB-8706-7ECFD9506B8B ends here
;; [[file:~/src/help/help.org::*Org-Mode][6C80DBCA-AE28-4FE3-91E3-825E642735BA]]
(setq org-hide-macro-markers t)
;; 6C80DBCA-AE28-4FE3-91E3-825E642735BA ends here
;; [[file:~/src/help/help.org::*Keybindings][8C7E90AC-C7EB-4A43-9377-C3C85CE51849]]
(help/not-on-gui
 (define-key org-mode-map (kbd "RET") #'org-return-indent)
 (define-key org-mode-map (kbd "C-M-RET") #'electric-indent-just-newline))
(help/on-gui
 (define-key org-mode-map (kbd "<return>") #'org-return-indent)
 (define-key org-mode-map (kbd "C-M-<return>") #'electric-indent-just-newline))
;; 8C7E90AC-C7EB-4A43-9377-C3C85CE51849 ends here
;; [[file:~/src/help/help.org::*Keybindings][E65CF1F6-F56C-4A1A-BB45-5E530FA93C04]]
(define-key org-mode-map (kbd "s-7") #'org-babel-load-in-session)
(define-key org-mode-map (kbd "s-8") #'org-babel-switch-to-session)
(define-key org-mode-map (kbd "s-9") #'org-babel-switch-to-session-with-code)
(define-key org-mode-map (kbd "s-j") #'org-babel-next-src-block)
(define-key org-mode-map (kbd "s-y") #'help/safb-org-babel-execute-subtree)
(define-key org-mode-map (kbd "s-u") #'help/safb-org-babel-execute-buffer)
(define-key org-mode-map (kbd "s-U") #'org-mark-ring-goto)
(define-key org-mode-map (kbd "s-k") #'org-babel-previous-src-block)
(define-key org-mode-map (kbd "s-i") #'help/safb-org-babel-tangle)
(define-key org-mode-map (kbd "s-l") #'help/safb-org-edit-src-code)
(define-key org-mode-map (kbd "s-o") #'org-babel-execute-src-block-maybe)
(define-key org-mode-map (kbd "s-;") #'org-babel-view-src-block-info)
(define-key org-mode-map (kbd "s-'") #'org-babel-open-src-block-result)
(define-key org-mode-map (kbd "s-p") #'help/safb-help/org-babel-demarcate-block)
;; E65CF1F6-F56C-4A1A-BB45-5E530FA93C04 ends here
;; [[file:~/src/help/help.org::*Keybindings][5186DD50-F693-4297-A164-192BEA685C6D]]
(defhydra help/hydra/right-side/org-mode (:color blue
                                                 :hint nil)
  "
_1_ SHA-1 _2_ export-all _4_ +imgs _5_ -imgs                   _8_ detangle _9_ igc  _0_ tglmcro
_q_ ←/w-code _w_ tbletfld _e_ g2nmrst _r_ g2nms-b _t_ g2s-b/hd      _u_ goto
_a_ inshdrgs _s_ oblobigst            _h_ dksieb
_c_ cksrcblk _b_ swtch2sessn _n_ n2sbtre _m_ xpndsrcblk"
  ("1" org-babel-sha1-hash)
  ("2" help/xprt-all)
  ("4" org-display-inline-images)
  ("5" org-remove-inline-images)
  ("8" org-babel-detangle)
  ("9" org-id-get-create)
  ("0" help/org-toggle-macro-markers)
  ("s" org-babel-lob-ingest)
  ("e" org-babel-goto-named-result)
  ("r" org-babel-goto-named-src-block)
  ("t" org-babel-goto-src-block-head)
  ("a" org-babel-insert-header-arg)
  ("h" org-babel-do-key-sequence-in-edit-buffer)
  ("m" org-babel-expand-src-block-maybe)
  ("c" org-babel-check-src-block)
  ("w" org-table-edit-field)
  ("n" org-narrow-to-subtree)
  ("u" org-goto)
  ("b" org-babel-switch-to-session)
  ("q" org-babel-switch-to-session-with-code))
(key-chord-define-global "hh" #'help/hydra/right-side/org-mode/body)
;; 5186DD50-F693-4297-A164-192BEA685C6D ends here
;; [[file:~/src/help/help.org::*Keybindings][BFF7A955-3107-4ED3-9022-CAB792E779EC]]
(define-key org-mode-map (kbd "C-c C-e") #'help/safb-org-export-dispatch)
;; BFF7A955-3107-4ED3-9022-CAB792E779EC ends here
;; [[file:~/src/help/help.org::*Keybindings][B489F70A-F1B0-41A9-BB98-A5861A867547]]
(define-key org-src-mode-map (kbd "s-l") #'org-edit-src-exit)
;; B489F70A-F1B0-41A9-BB98-A5861A867547 ends here
;; [[file:~/src/help/help.org::*Keybindings][46FE856B-D5C6-45B0-95D5-891211AC295C]]
(key-chord-define org-src-mode-map "<<" (lambda () (interactive) (insert "«")))
(key-chord-define org-src-mode-map ">>" (lambda () (interactive) (insert "»")))
;; 46FE856B-D5C6-45B0-95D5-891211AC295C ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][E7AE32C1-42CC-482F-92D2-43DBD703500C]]
(use-package ess
  :ensure t)
;; E7AE32C1-42CC-482F-92D2-43DBD703500C ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][DC7E5F11-0C1A-4F9B-B6B1-2133C8B86617]]
(setq ess-eldoc-show-on-symbol t)
;; DC7E5F11-0C1A-4F9B-B6B1-2133C8B86617 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][7EF0A0EB-FBE6-4411-A0E5-F0B37AF1743D]]
(setq ess-describe-at-point-method 'tooltip)
;; 7EF0A0EB-FBE6-4411-A0E5-F0B37AF1743D ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][2FB01FE3-71DD-4FB6-AEC9-E4499AF5E007]]
(setq inferior-ess-same-window nil)
(setq inferior-ess-own-frame nil)
;; 2FB01FE3-71DD-4FB6-AEC9-E4499AF5E007 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][47202D29-D75E-426E-AD24-7218BB5F2673]]
(setq ess-help-own-frame nil)
;; 47202D29-D75E-426E-AD24-7218BB5F2673 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][FCB70937-540C-4CC9-B0B7-63E0F0626E25]]
(setq ess-execute-in-process-buffer t)
;; FCB70937-540C-4CC9-B0B7-63E0F0626E25 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][36F5EACF-A2AA-42D2-B7B7-EC5C07B2E1A4]]
(setq ess-switch-to-end-of-proc-buffer t)
;; 36F5EACF-A2AA-42D2-B7B7-EC5C07B2E1A4 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][0274002E-BB6F-4131-B6B2-5531D9F630F4]]
(setq ess-tab-complete-in-script t)
(setq ess-first-tab-never-complete 'symbol-or-paren-or-punct)
;; 0274002E-BB6F-4131-B6B2-5531D9F630F4 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][043204D6-59AA-4DB4-ABF4-03D2E8D61154]]
(setq ess-use-ido t)
;; 043204D6-59AA-4DB4-ABF4-03D2E8D61154 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][6C6DC638-6869-4534-AA0D-746263D47FD5]]
(setq ess-use-eldoc t)
(setq ess-eldoc-show-on-symbol t)
(setq ess-eldoc-abbreviation-style 'normal)
;; 6C6DC638-6869-4534-AA0D-746263D47FD5 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][F0740222-26A5-4DA0-9C60-6EC04DCCDDFB]]
(setq ess-keep-dump-files +1)
;; F0740222-26A5-4DA0-9C60-6EC04DCCDDFB ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][9FD6F694-08ED-4E08-96FE-28634970388B]]
(setq ess-delete-dump-files nil)
;; 9FD6F694-08ED-4E08-96FE-28634970388B ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][252643D9-4FC2-4037-BAF8-5F6043D02C5A]]
(setq ess-mode-silently-save +1)
;; 252643D9-4FC2-4037-BAF8-5F6043D02C5A ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][F25A516C-7FD0-4F88-96AA-E53EBE01C5C3]]
(sp-local-pair #'ess-mode "{" nil :post-handlers '((help/indent-curly-block "RET")))
;; F25A516C-7FD0-4F88-96AA-E53EBE01C5C3 ends here
;; [[file:~/src/help/help.org::*Emacs%20Speaks%20Statistics%20(ESS)][B46D5051-6F7D-4BC9-8A47-DDE14B41C3A5]]
(setq ess-eval-visibly 'nowait)
;; B46D5051-6F7D-4BC9-8A47-DDE14B41C3A5 ends here

;; [[file:~/src/help/help.org::*R%20(ESS)][77E7570C-C08D-42B4-996D-F38C9F91C248]]
(setq ess-use-tracebug t)
;; 77E7570C-C08D-42B4-996D-F38C9F91C248 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][F21989AE-7351-49A7-9B1F-6926F7298182]]
(setq ess-tracebug-search-path '())
;; F21989AE-7351-49A7-9B1F-6926F7298182 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][FAFD7683-E1BF-43CF-B862-B90029FBB319]]
(define-key compilation-minor-mode-map [(?n)] #'next-error-no-select)
(define-key compilation-minor-mode-map [(?p)] #'previous-error-no-select)
;; FAFD7683-E1BF-43CF-B862-B90029FBB319 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][08D73B43-0EAC-433E-A5C8-F4E89A5ADA12]]
(setq ess-watch-scale-amount -1)
;; 08D73B43-0EAC-433E-A5C8-F4E89A5ADA12 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][CAA06F3F-C308-4C51-B5EA-84CB75C66DE7]]
(setq ess-ask-for-ess-directory nil)
;; CAA06F3F-C308-4C51-B5EA-84CB75C66DE7 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][4A9DDBA7-1715-45C8-A979-69725E37381E]]
(setq inferior-ess-exit-command "q('no')
")
;; 4A9DDBA7-1715-45C8-A979-69725E37381E ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][A0EA1072-089F-4C7A-AE35-7C05D090097E]]
(use-package ess-R-object-popup
  :ensure t)
;; A0EA1072-089F-4C7A-AE35-7C05D090097E ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][FCFBA6B6-B76D-4230-93BE-1DDFE411FF82]]
(autoload 'ess-rdired "ess-rdired")
;; FCFBA6B6-B76D-4230-93BE-1DDFE411FF82 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][B2C94B37-92A9-4320-A5EE-BAAD81FAB1AD]]
(use-package ess-R-data-view
  :ensure t)
;; B2C94B37-92A9-4320-A5EE-BAAD81FAB1AD ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][E49028CA-9CE0-41FD-9B1E-004C3D68445B]]
(use-package inlineR
  :ensure t)
;; E49028CA-9CE0-41FD-9B1E-004C3D68445B ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][D0976061-7DE0-4441-898F-4014547FFB29]]
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
;; D0976061-7DE0-4441-898F-4014547FFB29 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][931F150B-01FB-455C-B6F9-D730BEC162FF]]
(setq inferior-ess-program "R")
(setq inferior-R-program-name "R")
(setq ess-local-process-name "R")
;; 931F150B-01FB-455C-B6F9-D730BEC162FF ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][5D17A7DE-ECAF-4FAE-8425-AD43FEDD2D45]]
(add-to-list 'auto-mode-alist '("\\.rd\\'" . Rd-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd$" . r-mode))
;; 5D17A7DE-ECAF-4FAE-8425-AD43FEDD2D45 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][8122AAC4-008A-454B-A3F6-4F9B11F7278E]]
(local-set-key (kbd "C-c C-. S") #'ess-rutils-rsitesearch)
;; 8122AAC4-008A-454B-A3F6-4F9B11F7278E ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][17FD6489-F187-4667-9E96-5ECF3DAED95B]]
(use-package ess-rutils
  :config
  (setq ess-rutils-keys t))
;; 17FD6489-F187-4667-9E96-5ECF3DAED95B ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][588C7A99-908C-4CD9-A1BE-1818938E2D13]]
(use-package r-autoyas
  :ensure t
  :config
  (setq r-autoyas-debug t)
  (setq r-autoyas-expand-package-functions-only nil)
  (setq r-autoyas-remove-explicit-assignments nil))
;; 588C7A99-908C-4CD9-A1BE-1818938E2D13 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][5D526636-47A1-463B-9466-4DD240C7F382]]
(setq ess-R-argument-suffix "=")
;; 5D526636-47A1-463B-9466-4DD240C7F382 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][9E931868-056E-49E6-A0AE-D1447BA27039]]
(setq ess-S-assign-key (kbd "C-,"))
(ess-toggle-S-assign-key t)
(ess-toggle-underscore nil)
;; 9E931868-056E-49E6-A0AE-D1447BA27039 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][4B373CC7-EF17-4900-87BE-E38995585C46]]
(setq inferior-R-args "--no-save --no-restore")
;; 4B373CC7-EF17-4900-87BE-E38995585C46 ends here
;; [[file:~/src/help/help.org::*R%20(ESS)][E5F48F7A-E926-4FB0-92D2-92204808630E]]
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
  (local-set-key (kbd "C->") #'(lambda () (interactive) (insert " %>% ")))
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
;; E5F48F7A-E926-4FB0-92D2-92204808630E ends here
;; [[file:~/src/help/help.org::*YASnippet][1827B724-7BC0-4228-8389-2B06F308D6AF]]
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
;; 1827B724-7BC0-4228-8389-2B06F308D6AF ends here
;; [[file:~/src/help/help.org::*TeX][B97EDF2E-0538-475A-AA0A-6C708DCCEC11]]
(use-package tex-site
  :ensure auctex
  :config
  (eval-after-load "tex"
    '(define-key TeX-mode-map (kbd "C-c C-c") #'help/safb-TeX-command-master)))
;; B97EDF2E-0538-475A-AA0A-6C708DCCEC11 ends here
;; [[file:~/src/help/help.org::*TeX][2B0193C4-291A-4C5E-9FA0-36A80DE1D379]]
(setq TeX-auto-save t)
;; 2B0193C4-291A-4C5E-9FA0-36A80DE1D379 ends here
;; [[file:~/src/help/help.org::*TeX][278E7DC2-6BD3-4F90-A4F2-25B9BE614981]]
(setq TeX-parse-self t)
;; 278E7DC2-6BD3-4F90-A4F2-25B9BE614981 ends here
;; [[file:~/src/help/help.org::*TeX][10789FA5-E5AA-4F8C-BB0E-62307655F7AD]]
(setq TeX-auto-save t)
;; 10789FA5-E5AA-4F8C-BB0E-62307655F7AD ends here
;; [[file:~/src/help/help.org::*TeX][F89FBF57-D32D-45B0-B43F-D5A9EB489ABE]]
(setq TeX-PDF-mode t)
(setq TeX-DVI-via-PDFTeX t)
;; F89FBF57-D32D-45B0-B43F-D5A9EB489ABE ends here
;; [[file:~/src/help/help.org::*TeX][A193F562-9E1C-49A2-982C-EBF7D9AFF32F]]
(setq TeX-save-query nil)
;; A193F562-9E1C-49A2-982C-EBF7D9AFF32F ends here
;; [[file:~/src/help/help.org::*TeX][083E953F-E95D-4596-98D1-C8554D451721]]
(add-to-list 'auto-mode-alist '("\\.lco?\\'" . TeX-latex-mode))
;; 083E953F-E95D-4596-98D1-C8554D451721 ends here
;; [[file:~/src/help/help.org::*TeX][9FA4E728-0AB8-4A18-9EE8-DC4387E6DD08]]
(add-to-list 'org-latex-packages-alist '("english" "babel" t))
;; 9FA4E728-0AB8-4A18-9EE8-DC4387E6DD08 ends here
;; [[file:~/src/help/help.org::*TeX][6C50239B-2D5D-4022-8645-+BEGIN_SRC]]
(add-to-list 'org-latex-packages-alist '("osf" "mathpazo" t))
;; 6C50239B-2D5D-4022-8645-+BEGIN_SRC ends here
;; [[file:~/src/help/help.org::*TeX][AA859065-4868-4A02-882E-AD5840B74349]]
(add-to-list 'org-latex-packages-alist '("margin=0.5in" "geometry" nil))
;; AA859065-4868-4A02-882E-AD5840B74349 ends here
;; [[file:~/src/help/help.org::*TeX][E6559423-7FC3-4924-A38B-FE4C9CA8CD91]]
(defvar help/ltx-cls-opt "paper=letter, fontsize=10pt, parskip")
;; E6559423-7FC3-4924-A38B-FE4C9CA8CD91 ends here
;; [[file:~/src/help/help.org::*TeX][6C864008-5602-4E73-A8DE-6DDE5DFA1EE0]]
(eval-after-load "ox-latex"
  '(add-to-list 'org-latex-classes
                `("help-article"
                  ,(concat "\\documentclass["
                           help/ltx-cls-opt
                           "]{article}"))))

(setq org-latex-default-class "help-article")
;; 6C864008-5602-4E73-A8DE-6DDE5DFA1EE0 ends here
;; [[file:~/src/help/help.org::*TeX][9B903D8E-6E42-41BB-83AA-EBE64298A7C8]]
(setq org-export-with-smart-quotes t)
;; 9B903D8E-6E42-41BB-83AA-EBE64298A7C8 ends here
;; [[file:~/src/help/help.org::*KOMA-Script][C2C100F1-B302-4BC7-8633-A79BCBFE1FC7]]
(eval-after-load "ox" '(require 'ox-koma-letter))
;; C2C100F1-B302-4BC7-8633-A79BCBFE1FC7 ends here
;; [[file:~/src/help/help.org::*KOMA-Script][05968019-B83F-4F5B-ACF7-4CFF10CB8690]]
(eval-after-load "ox-koma-letter"
  '(progn
     (add-to-list 'org-latex-classes
                  `("help-letter"
                    ,(concat "\\documentclass["
                             help/ltx-cls-opt
                             "]{scrlttr2}")))

     (setq org-koma-letter-default-class "help-letter")))
;; 05968019-B83F-4F5B-ACF7-4CFF10CB8690 ends here
;; [[file:~/src/help/help.org::*KOMA-Script][EFFC0DFD-168F-42F5-9405-BAECD7EC5CB4]]
(setq org-koma-letter-class-option-file "UScommercial9 KomaDefault")
;; EFFC0DFD-168F-42F5-9405-BAECD7EC5CB4 ends here
;; [[file:~/src/help/help.org::*Markdown][02005BF5-AADC-45B1-AC64-67ECB028352A]]
(use-package ox-gfm)
;; 02005BF5-AADC-45B1-AC64-67ECB028352A ends here
;; [[file:~/src/help/help.org::*Markdown][8A4DB408-7888-4705-AB2B-C7EED9262DF2]]
(use-package markdown-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
  (setq markdown-coding-system "utf-8"))
;; 8A4DB408-7888-4705-AB2B-C7EED9262DF2 ends here
;; [[file:~/src/help/help.org::*Beamer][B77E265B-EE1A-469D-BEFB-51360B7AB45E]]
(use-package ox-beamer)
;; B77E265B-EE1A-469D-BEFB-51360B7AB45E ends here
;; [[file:~/src/help/help.org::*HTML][080472B8-EC76-4318-876A-A4A65547B056]]
(setq org-html-doctype "html5")
;; 080472B8-EC76-4318-876A-A4A65547B056 ends here
;; [[file:~/src/help/help.org::*HTML][E26F69F8-ED1F-4F10-A291-6F9CB958FD18]]
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
;; E26F69F8-ED1F-4F10-A291-6F9CB958FD18 ends here
;; [[file:~/src/help/help.org::*Artist][7592B1CF-CDA3-4ED1-99FA-205E41C74FFF]]
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.art" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
;; 7592B1CF-CDA3-4ED1-99FA-205E41C74FFF ends here
;; [[file:~/src/help/help.org::*DITAA][6907A176-CCF4-4BDF-A242-BDBC4C67239F]]
(defconst help/ditaa-jar (concat (getenv "EELIB") "/ditaa.jar"))
(setq org-ditaa-jar-path help/ditaa-jar)
;; 6907A176-CCF4-4BDF-A242-BDBC4C67239F ends here
;; [[file:~/src/help/help.org::*Graphviz][EAADBBCB-9054-4040-8579-1EC08FB97BDE]]
(use-package graphviz-dot-mode
  :ensure t
  :config
  (setf (cdr (assoc "dot" org-src-lang-modes)) 'graphviz-dot))
;; EAADBBCB-9054-4040-8579-1EC08FB97BDE ends here
;; [[file:~/src/help/help.org::*PlantUML][80EE7930-0025-4D06-96BB-24A70169CDEA]]
(use-package plantuml-mode
  :ensure t
  :init
  (defconst help/plantuml-jar (concat (getenv "EELIB") "/plantuml.jar"))
  (setq plantuml-jar-path help/plantuml-jar)
  :config
  (eval-after-load "ob-plantuml"
    (setq org-plantuml-jar-path help/plantuml-jar)))
;; 80EE7930-0025-4D06-96BB-24A70169CDEA ends here
;; [[file:~/src/help/help.org::*Line%20Number][DC131133-BEC7-45D2-BA35-42E77FC3BB22]]
(defvar linum-format "%05d")
;; DC131133-BEC7-45D2-BA35-42E77FC3BB22 ends here
;; [[file:~/src/help/help.org::*Buffer][61F1703A-48AA-4C2E-AE78-4C9766B6C8BC]]
(setq inhibit-eol-conversion t)
;; 61F1703A-48AA-4C2E-AE78-4C9766B6C8BC ends here
;; [[file:~/src/help/help.org::*Buffer][A5438CB6-5228-4753-B2A7-BFEFC573F6B6]]
(use-package uniquify)
(setq uniquify-buffer-name-style 'forward)
;; A5438CB6-5228-4753-B2A7-BFEFC573F6B6 ends here
;; [[file:~/src/help/help.org::*Buffer][295C91F5-6CD4-41C8-A62C-600B11838B2B]]
(setq ring-bell-function 'ignore)
(setq visible-bell t)
;; 295C91F5-6CD4-41C8-A62C-600B11838B2B ends here
;; [[file:~/src/help/help.org::*Buffer][59F87147-F8C3-49D0-BEC6-A8D19989001E]]
(setq blink-matching-paren nil)
(show-paren-mode)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
;; 59F87147-F8C3-49D0-BEC6-A8D19989001E ends here
;; [[file:~/src/help/help.org::*Buffer][CC0CDAEB-8460-43CE-BA7E-3A9D986A02BB]]
(blink-cursor-mode 0)
(help/on-gui
 (setq-default cursor-type 'box)
 (setq x-stretch-cursor 1))
;; CC0CDAEB-8460-43CE-BA7E-3A9D986A02BB ends here
;; [[file:~/src/help/help.org::*Buffer][BC706CBF-2B98-4FD7-9A5A-61F5483D0899]]
(prefer-coding-system 'utf-8)
(help/on-gui
 (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
 (help/on-windows
  (set-clipboard-coding-system 'utf-16le-dos)))
;; BC706CBF-2B98-4FD7-9A5A-61F5483D0899 ends here
;; [[file:~/src/help/help.org::*Buffer][6FD9F092-7062-4E7A-BB58-4B5F45AF0AD0]]
(global-hl-line-mode t)
;; 6FD9F092-7062-4E7A-BB58-4B5F45AF0AD0 ends here
;; [[file:~/src/help/help.org::*Buffer][D0F5616F-1609-4E12-A4D7-7A1F46D34A2C]]
(setq default-input-method 'TeX)
;; D0F5616F-1609-4E12-A4D7-7A1F46D34A2C ends here
;; [[file:~/src/help/help.org::*Color%20Theme][021B7D3A-E696-43B9-BC08-C8BDABB33999]]
(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-distinct-fringe-background t)
  (setq solarized-high-contrast-mode-line nil)
  (setq solarized-use-less-bold t)
  (setq solarized-use-more-italic nil)
  (setq solarized-emphasize-indicators nil)
  (load-theme 'solarized-dark t))
;; 021B7D3A-E696-43B9-BC08-C8BDABB33999 ends here
;; [[file:~/src/help/help.org::*Comint][CDD7F353-867A-4E9C-A060-5C0F6A26866B]]
(setq comint-scroll-to-bottom-on-input 'this)
(setq comint-scroll-to-bottom-on-output 'others)
(setq comint-move-point-for-output 'others)
(setq comint-show-maximum-output t)
(setq comint-scroll-show-maximum-output t)
(setq comint-move-point-for-output t)
;; CDD7F353-867A-4E9C-A060-5C0F6A26866B ends here
;; [[file:~/src/help/help.org::*Comint][346012D4-6861-458B-8352-3874D1F934E6]]
(setq comint-prompt-read-only nil)
;; 346012D4-6861-458B-8352-3874D1F934E6 ends here
;; [[file:~/src/help/help.org::*Font][21687556-D79E-4734-86E6-52FF9EE107B5]]
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
         (set-frame-font (help/font-name)))
     (message (concat "Your preferred font is not available: " help/font-base))))
 (help/update-font))
;; 21687556-D79E-4734-86E6-52FF9EE107B5 ends here
;; [[file:~/src/help/help.org::*Frame][96EB14DD-CB63-46F3-B2E3-6F433D70DFAE]]
(scroll-bar-mode 0)
;; 96EB14DD-CB63-46F3-B2E3-6F433D70DFAE ends here
;; [[file:~/src/help/help.org::*Frame][2063ECD7-C23B-4CDC-96E0-786361DFAA9C]]
(tool-bar-mode -1)
;; 2063ECD7-C23B-4CDC-96E0-786361DFAA9C ends here
;; [[file:~/src/help/help.org::*Pointer][9E122111-1074-42D5-A57D-855E3A888C8E]]
(setq make-pointer-invisible t)
;; 9E122111-1074-42D5-A57D-855E3A888C8E ends here
;; [[file:~/src/help/help.org::*Version%20Control][668C63F3-C52E-4BDF-929D-E2BF2E985304]]
(use-package diff-hl
  :ensure t)
;; 668C63F3-C52E-4BDF-929D-E2BF2E985304 ends here
;; [[file:~/src/help/help.org::*Window][00BC7BEE-F9FC-4B9D-AC1A-4B1A3FFA64A7]]
(menu-bar-mode t)
;; 00BC7BEE-F9FC-4B9D-AC1A-4B1A3FFA64A7 ends here
;; [[file:~/src/help/help.org::*Window][3FB7FA94-1A6B-4E3B-8EDE-7A4D1D86E50E]]
(winner-mode t)
;; 3FB7FA94-1A6B-4E3B-8EDE-7A4D1D86E50E ends here
;; [[file:~/src/help/help.org::*5][E4B98196-FDFB-42B4-A52A-8CA7DC066E8E]]
(global-set-key (kbd "s-4") #'mc/mark-next-like-this)
(global-set-key (kbd "s-3") #'mc/mark-previous-like-this)
(global-set-key (kbd "s-2") #'mc/mark-all-like-this)
(global-set-key (kbd "s-1") #'mc/edit-lines)
;; E4B98196-FDFB-42B4-A52A-8CA7DC066E8E ends here
;; [[file:~/src/help/help.org::*4][239A85C3-2CEB-4E40-975F-8B3584F7F450]]
(global-set-key (kbd "s-w") #'imenu)
;; 239A85C3-2CEB-4E40-975F-8B3584F7F450 ends here
;; [[file:~/src/help/help.org::*3][E60EA15F-28A0-4E98-B62E-1F8BDE444BD8]]
(global-set-key (kbd "s-d") #'er/expand-region)
(key-chord-define-global "df" #'avy-goto-word-1)
(key-chord-define-global "DF" #'avy-pop-mark)
;; E60EA15F-28A0-4E98-B62E-1F8BDE444BD8 ends here
;; [[file:~/src/help/help.org::*3][F6C7AAB7-DF69-4EBA-8116-15DC32022D49]]
(defhydra help/hydra/left-side/global (:color blue
                                              :hint nil)
  "
_1_ -font  _2_ +font _3_ ellipsis _4_ UUID _5_ bfr-cdng-systm _6_ grade-level _7_ reading-ease
_q_ apropos _w_ widen _r_ rgrep _t_ obtj2o     _i_ scrollUp _I_ prevLogLine _o_ dbgOnErr _p_ query-replace
                 _j_ back-char _k_ scrollDown _K_ nextLogLine _l_ forw-char
_x_ delete-indentation"
  ("1" help/text-scale-decrease :exit nil)
  ("2" help/text-scale-increase :exit nil)
  ("3" help/insert-ellipsis)
  ("4" help/uuid)
  ("5" set-buffer-file-coding-system)
  ("6" writegood-grade-level)
  ("7" writegood-reading-ease)
  ("x" delete-indentation)
  ("q" hydra-apropos/body)
  ("w" widen)
  ("r" rgrep)
  ("t" org-babel-tangle-jump-to-org)
  ("i" scroll-down-command :exit nil)
  ("k" scroll-up-command :exit nil)
  ("I" previous-logical-line :exit nil)
  ("K" next-logical-line :exit nil)
  ("j" backward-char :exit nil)
  ("l" forward-char :exit nil)
  ("o" toggle-debug-on-error)
  ("p" anzu-query-replace))
;; F6C7AAB7-DF69-4EBA-8116-15DC32022D49 ends here
;; [[file:~/src/help/help.org::*3][EFFA5A5F-58A8-476D-A8D4-16F232231EC7]]
(key-chord-define-global "vv" #'help/hydra/left-side/global/body)
;; EFFA5A5F-58A8-476D-A8D4-16F232231EC7 ends here
;; [[file:~/src/help/help.org::*3][362686F6-B397-44D5-812F-BE24670F4204]]
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
;; 362686F6-B397-44D5-812F-BE24670F4204 ends here
;; [[file:~/src/help/help.org::*2][9224105B-2CDB-46F4-AF3F-312B3467C2B8]]
(global-set-key (kbd "s-v") #'smex)
(global-set-key (kbd "C-x C-c") #'help/safb-save-buffers-kill-terminal)
(global-set-key (kbd "s-x") #'ido-find-file)
(global-set-key (kbd "s-c") #'ido-switch-buffer)
;; 9224105B-2CDB-46F4-AF3F-312B3467C2B8 ends here
;; [[file:~/src/help/help.org::*Unsorted][A45F49E2-E330-463B-82C6-907F138E8F2A]]
(define-prefix-command 'help/vc-map)
(global-set-key (kbd "s-r") #'help/vc-map)
(define-key help/vc-map "e" #'help/safb-vc-ediff)
(define-key help/vc-map "d" #'help/safb-vc-diff)
(define-key help/vc-map "u" #'help/safb-vc-revert)
(global-set-key (kbd "s-f") #'help/safb-help/vc-next-action)
;; A45F49E2-E330-463B-82C6-907F138E8F2A ends here
;; [[file:~/src/help/help.org::*Unsorted][B05E89FC-9FCE-48D6-8112-9BF990A8A15D]]
(key-chord-define-global "fg" #'help/safb-help/goto-line)
;; B05E89FC-9FCE-48D6-8112-9BF990A8A15D ends here
;; [[file:~/src/help/help.org::*Unsorted][F3708409-D807-4541-95AB-C6298540FD59]]
(key-chord-define-global "FG" #'pop-to-mark-command)
;; F3708409-D807-4541-95AB-C6298540FD59 ends here
;; [[file:~/src/help/help.org::*Unsorted][C9521BF3-23E7-4952-846F-322D107E3EE3]]
(global-set-key (kbd "C-a") #'beginning-of-line-dwim)
;; C9521BF3-23E7-4952-846F-322D107E3EE3 ends here
;; [[file:~/src/help/help.org::*Unsorted][2608E62D-62B4-4B82-BFE0-E1E04C0D6914]]
(global-set-key (kbd "M-s p") #'help/occur-dwim)
;; 2608E62D-62B4-4B82-BFE0-E1E04C0D6914 ends here
;; [[file:~/src/help/help.org::*Unsorted][FD9CED46-8D84-495F-A413-90DA9EA52B8A]]
(key-chord-define-global "fv" #'help/safb-other-window)
;; FD9CED46-8D84-495F-A413-90DA9EA52B8A ends here
;; [[file:~/src/help/help.org::*Unsorted][4E784CF7-8CB1-42D0-A8EB-6FF54E7B60E9]]
(key-chord-define-global "f9" #'help/util-cycle)
;; 4E784CF7-8CB1-42D0-A8EB-6FF54E7B60E9 ends here
;; [[file:~/src/help/help.org::*Unsorted][374B4284-8823-4E85-A469-F3985D48EC61]]
(global-set-key (kbd "s-b") #'hs-toggle-hiding)
;; 374B4284-8823-4E85-A469-F3985D48EC61 ends here
;; [[file:~/src/help/help.org::*Left%20&%20Right%20Side][779A4232-960E-4CE1-B6EC-018FC997F0DD]]
(key-chord-define-global "d." #'describe-function)
(key-chord-define-global "d," #'describe-variable)
;; 779A4232-960E-4CE1-B6EC-018FC997F0DD ends here
;; [[file:~/src/help/help.org::*Left%20&%20Right%20Side][55D2A3E6-07B1-47B0-9ADD-54C966FA252B]]
(key-chord-define-global "qi" #'help/comment-or-uncomment)
;; 55D2A3E6-07B1-47B0-9ADD-54C966FA252B ends here
;; [[file:~/src/help/help.org::*Left%20&%20Right%20Side][E167321A-E8E5-4C54-B570-241B465B2D4B]]
(key-chord-define-global "qp" #'ispell)
(key-chord-define-global "qo" #'ispell-word)
;; E167321A-E8E5-4C54-B570-241B465B2D4B ends here
;; [[file:~/src/help/help.org::*Left%20&%20Right%20Side][52E762F8-9A31-4FEC-859D-049BD658C6D9]]
(define-prefix-command 'help/langtool-map)
(key-chord-define-global "qk" #'help/langtool-map)
(define-key help/langtool-map "c" #'langtool-check-buffer)
(define-key help/langtool-map "C" #'langtool-correct-buffer)
(define-key help/langtool-map "j" #'langtool-goto-previous-error)
(define-key help/langtool-map "k" #'langtool-show-message-at-point)
(define-key help/langtool-map "l" #'langtool-goto-next-error)
(define-key help/langtool-map "q" #'langtool-check-done)
;; 52E762F8-9A31-4FEC-859D-049BD658C6D9 ends here
;; [[file:~/src/help/help.org::*Exceptions][0410911F-2D84-4799-8F68-1F3173E318B6]]
(help/not-on-gui (global-set-key (kbd "s-RET") #'help/smart-open-line))
(help/on-gui (global-set-key (kbd "s-<return>") #'help/smart-open-line))
;; 0410911F-2D84-4799-8F68-1F3173E318B6 ends here
;; [[file:~/src/help/help.org::*Exceptions][7B79E6A3-90F2-4F3F-AA40-1231D0DDA684]]
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))
;; 7B79E6A3-90F2-4F3F-AA40-1231D0DDA684 ends here
;; [[file:~/src/help/help.org::*Exceptions][FA4DDBA3-494B-4062-B43F-5D17DB239AF5]]
(global-set-key (kbd "s-:") #'my-eval-expression)
;; FA4DDBA3-494B-4062-B43F-5D17DB239AF5 ends here
;; [[file:~/src/help/help.org::*Exceptions][65D190DA-D23D-427D-B070-1C74053EDC4E]]
(global-set-key (kbd "s-C-n") #'next-line)
(global-set-key (kbd "C-n") #'next-logical-line)
(global-set-key (kbd "s-C-p") #'previous-line)
(global-set-key (kbd "C-p") #'previous-logical-line)
;; 65D190DA-D23D-427D-B070-1C74053EDC4E ends here
;; [[file:~/src/help/help.org::*Exceptions][C8A58EDC-466A-493E-8709-2A241ED10808]]
(global-set-key (kbd "M-%") #'anzu-query-replace)
(global-set-key (kbd "C-M-%") #'anzu-query-replace-regexp)
;; C8A58EDC-466A-493E-8709-2A241ED10808 ends here
;; AD12BE48-B87B-4AB6-814D-4FA5E47597A0 ends here
