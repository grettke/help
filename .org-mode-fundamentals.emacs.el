;; -*- no-byte-compile: t; -*-

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_71A4A257-9A13-457A-B504-888D8131A206][org_gcr_2017-05-12_mara_71A4A257-9A13-457A-B504-888D8131A206]]
(load-file "~/src/help/.org-mode-ecm.emacs.el")
;; org_gcr_2017-05-12_mara_71A4A257-9A13-457A-B504-888D8131A206 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_21BEDC86-D1A3-43FC-85AC-8FF54D161E2F][org_gcr_2017-05-12_mara_21BEDC86-D1A3-43FC-85AC-8FF54D161E2F]]
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

(defun help/set-org-babel-default-header-args:ditaa (property value)
  "See `help/set-org-babel-default-header-args'; same but for ditaa.

This is a copy and paste. Additional languages would warrant a refactor."
  (setq org-babel-default-header-args:ditaa
        (cons (cons property value)
              (assq-delete-all property org-babel-default-header-args:ditaa))))

(defun help/set-org-babel-default-header-args:dot (property value)
  "See `help/set-org-babel-default-header-args'; same but for dot.

This is a copy and paste. Additional languages would warrant a refactor."
  (setq org-babel-default-header-args:dot
        (cons (cons property value)
              (assq-delete-all property org-babel-default-header-args:dot))))

(defun help/set-org-babel-default-header-args:plantuml (property value)
  "See `help/set-org-babel-default-header-args'; same but for plantuml.

This is a copy and paste. Additional languages would warrant a refactor."
  (setq org-babel-default-header-args:plantuml
        (cons (cons property value)
              (assq-delete-all property org-babel-default-header-args:plantuml))))

(defun help/org-toggle-macro-markers ()
  (interactive)
  (let ((old org-hide-macro-markers)
        (new (not org-hide-macro-markers)))
    (setq org-hide-macro-markers new)
    (message "Just changed org-hide-macro-markers from %s to %s" old new)
    (font-lock-mode)
    (font-lock-mode)))

(defun help/org-prp-hdln ()
  "Visit every Headline. If it doesn't have an ID property then add one and
  assign it a UUID. Attribution: URL
  `http://article.gmane.org/gmane.emacs.orgmode/99738'. It is OK to leave the
  colon separator in here because these are never used as Source-Blocks and
  the rest of the code expects the colon separator."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (dolist (p (nreverse
                (org-element-map (org-element-parse-buffer 'headline) 'headline
                  (lambda (headline) (org-element-property :begin headline)))))
      (goto-char p)
      (org-id-get-create))
    (save-buffer)))

(defun help/org-id-new ()
  "Re-purposing `org-id' hit a snag when colons were forbidden in Source-Block
  names. Adding support for a user-defined Org-Id separator would have fixed
  this but with no benefit to Org-Id. So this function removes the colon
  instead.
 "
  (interactive)
  (let* ((gend (org-id-new))
         (newid (replace-regexp-in-string ":" "_" gend)))
    newid))

(defun help/org-prp-src-blk ()
  "If it doesn't have a NAME property then add one and
   assign it a UUID. Attribution: URL `http://article.gmane.org/gmane.emacs.orgmode/99740'"
  (interactive)
  (help/org-2every-src-block
   #'(lambda (element)
       (if (not (org-element-property :name element))
           (let ((i (org-get-indentation)))
             (beginning-of-line)
             (save-excursion (insert "#+NAME: " (help/org-id-new) "\n"))
             (indent-to i)
             (forward-line 2))))))

(defconst help/org-special-pre "^\s*#[+]")

(defun help/org-2every-src-block (fn)
  "Visit every Source-Block and evaluate `FN'."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (let ((case-fold-search t))
      (while (re-search-forward (concat help/org-special-pre "BEGIN_SRC") nil t)
        (let ((element (org-element-at-point)))
          (when (eq (org-element-type element) 'src-block)
            (funcall fn element)))))
    (save-buffer)))

(defun help/org-babel-demarcate-block ()
  "Add a NAME property then assign it a UUID."
  (interactive)
  (org-babel-demarcate-block)
  (insert "#+name: " (help/org-id-new))
  (beginning-of-line)
  (insert "\n"))
;; org_gcr_2017-05-12_mara_21BEDC86-D1A3-43FC-85AC-8FF54D161E2F ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_922805E3-E016-4026-BAF6-C3BA5DFC6B5A][org_gcr_2017-05-12_mara_922805E3-E016-4026-BAF6-C3BA5DFC6B5A]]
(require 'org-id)
;; org_gcr_2017-05-12_mara_922805E3-E016-4026-BAF6-C3BA5DFC6B5A ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_6F578996-A506-4193-8566-C3FAC6102228][org_gcr_2017-05-12_mara_6F578996-A506-4193-8566-C3FAC6102228]]
(setq org-id-link-to-org-use-id 'nil)
;; org_gcr_2017-05-12_mara_6F578996-A506-4193-8566-C3FAC6102228 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_8F2F5DAE-40B9-490D-8523-BABCAA913A71][org_gcr_2017-05-12_mara_8F2F5DAE-40B9-490D-8523-BABCAA913A71]]
(setq org-id-prefix (concat "org_" (user-real-login-name) "_" (help/get-timestamp-no-colons) "_" (system-name)))
(setq org-id-method 'uuid)
;; org_gcr_2017-05-12_mara_8F2F5DAE-40B9-490D-8523-BABCAA913A71 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_C4C2CC56-88D6-440F-A277-75B174B7F8E8][org_gcr_2017-05-12_mara_C4C2CC56-88D6-440F-A277-75B174B7F8E8]]
(add-hook 'org-babel-pre-tangle-hook #'help/org-prp-hdln)
(add-hook 'org-babel-pre-tangle-hook #'help/org-prp-src-blk)
;; org_gcr_2017-05-12_mara_C4C2CC56-88D6-440F-A277-75B174B7F8E8 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_7AFF21D6-39A6-4580-8AD1-3BF24A83091A][org_gcr_2017-05-12_mara_7AFF21D6-39A6-4580-8AD1-3BF24A83091A]]
(setq org-babel-use-quick-and-dirty-noweb-expansion nil)
;; org_gcr_2017-05-12_mara_7AFF21D6-39A6-4580-8AD1-3BF24A83091A ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_BFB80EA4-F37F-484C-9A7E-7B97166A2F49][org_gcr_2017-05-12_mara_BFB80EA4-F37F-484C-9A7E-7B97166A2F49]]
(setq org-babel-tangle-use-relative-file-links t)
;; org_gcr_2017-05-12_mara_BFB80EA4-F37F-484C-9A7E-7B97166A2F49 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_1946BB7D-D2A7-40F3-BF7D-1C22B887D1F6][org_gcr_2017-05-12_mara_1946BB7D-D2A7-40F3-BF7D-1C22B887D1F6]]
(defun help/org-babel-post-tangle-hook-fn ()
  (interactive)
  (indent-region (point-min) (point-max) nil)
  (save-buffer))
(add-hook 'org-babel-post-tangle-hook #'help/org-babel-post-tangle-hook-fn)
;; org_gcr_2017-05-12_mara_1946BB7D-D2A7-40F3-BF7D-1C22B887D1F6 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_5516E87C-58CA-451B-84B3-BA7B9D2A284E][org_gcr_2017-05-12_mara_5516E87C-58CA-451B-84B3-BA7B9D2A284E]]
(help/set-org-babel-default-header-args :comments "noweb")
;; org_gcr_2017-05-12_mara_5516E87C-58CA-451B-84B3-BA7B9D2A284E ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_51AE0BB2-9E85-482C-AAC6-8860D2141999][org_gcr_2017-05-12_mara_51AE0BB2-9E85-482C-AAC6-8860D2141999]]
(help/set-org-babel-default-header-args :mkdirp "yes")
;; org_gcr_2017-05-12_mara_51AE0BB2-9E85-482C-AAC6-8860D2141999 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_F9D0273A-A0E4-4265-B133-C665ADE1F031][org_gcr_2017-05-12_mara_F9D0273A-A0E4-4265-B133-C665ADE1F031]]
(help/set-org-babel-default-header-args :noweb "no-export")
;; org_gcr_2017-05-12_mara_F9D0273A-A0E4-4265-B133-C665ADE1F031 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_D7CD2E35-5BE4-4003-8D78-26D939E0031E][org_gcr_2017-05-12_mara_D7CD2E35-5BE4-4003-8D78-26D939E0031E]]
(help/set-org-babel-default-header-args :padline "yes")
;; org_gcr_2017-05-12_mara_D7CD2E35-5BE4-4003-8D78-26D939E0031E ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_B11664F9-C0E7-48C0-8050-0A66B199FEBF][org_gcr_2017-05-12_mara_B11664F9-C0E7-48C0-8050-0A66B199FEBF]]
(help/set-org-babel-default-header-args :tangle "no")
;; org_gcr_2017-05-12_mara_B11664F9-C0E7-48C0-8050-0A66B199FEBF ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_54FEB960-2B87-41E3-A4E4-6DE9DED9B1BD][org_gcr_2017-05-12_mara_54FEB960-2B87-41E3-A4E4-6DE9DED9B1BD]]
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (org . t)
   ;;
   (C . t)
   (R . t)
   (python . t)
   (sass . t)
   (scheme . t)
   (sql . t)
   (js . t)
   ;;
   (latex . t)
   ;;
   (makefile . t)
   (shell . t)
   ;;
   (ditaa . t)
   (dot . t)
   (plantuml . t)))
;; org_gcr_2017-05-12_mara_54FEB960-2B87-41E3-A4E4-6DE9DED9B1BD ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_FE5C21BF-9766-4277-A413-B3AF5C255C39][org_gcr_2017-05-12_mara_FE5C21BF-9766-4277-A413-B3AF5C255C39]]
(help/set-org-babel-default-header-args :eval "never-export")
(help/set-org-babel-default-inline-header-args :eval "never-export")
;; org_gcr_2017-05-12_mara_FE5C21BF-9766-4277-A413-B3AF5C255C39 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_DB816700-04B3-45D0-9847-490BBFE9DBA0][org_gcr_2017-05-12_mara_DB816700-04B3-45D0-9847-490BBFE9DBA0]]
(setq org-export-use-babel t)
;; org_gcr_2017-05-12_mara_DB816700-04B3-45D0-9847-490BBFE9DBA0 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_2F6FE420-85A2-4A99-AAB7-20473F02B878][org_gcr_2017-05-12_mara_2F6FE420-85A2-4A99-AAB7-20473F02B878]]
(defconst help/org-sb-results-cfg "value scalar drawer replace")
(help/set-org-babel-default-header-args :results help/org-sb-results-cfg)
;; org_gcr_2017-05-12_mara_2F6FE420-85A2-4A99-AAB7-20473F02B878 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_3E59D8A5-2B8A-44D6-A863-7051E8E62421][org_gcr_2017-05-12_mara_3E59D8A5-2B8A-44D6-A863-7051E8E62421]]
(defconst help/org-isb-results-cfg "replace")
(help/set-org-babel-default-inline-header-args :results help/org-isb-results-cfg)
;; org_gcr_2017-05-12_mara_3E59D8A5-2B8A-44D6-A863-7051E8E62421 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_FDA3AE76-9095-49A6-8D3B-F522060FFE0E][org_gcr_2017-05-12_mara_FDA3AE76-9095-49A6-8D3B-F522060FFE0E]]
(setq org-export-with-properties t)
;; org_gcr_2017-05-12_mara_FDA3AE76-9095-49A6-8D3B-F522060FFE0E ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_75498F0F-C121-4954-9E27-B6859173C1E1][org_gcr_2017-05-12_mara_75498F0F-C121-4954-9E27-B6859173C1E1]]
(setq org-export-in-background nil)
;; org_gcr_2017-05-12_mara_75498F0F-C121-4954-9E27-B6859173C1E1 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_400FE840-685A-4130-B697-8835F8FDB1FF][org_gcr_2017-05-12_mara_400FE840-685A-4130-B697-8835F8FDB1FF]]
(setq org-export-coding-system 'utf-8)
;; org_gcr_2017-05-12_mara_400FE840-685A-4130-B697-8835F8FDB1FF ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_DE83AAE3-B4D6-4AB8-83BF-EE3252F9F6D2][org_gcr_2017-05-12_mara_DE83AAE3-B4D6-4AB8-83BF-EE3252F9F6D2]]
(setq org-export-preserve-breaks nil)
;; org_gcr_2017-05-12_mara_DE83AAE3-B4D6-4AB8-83BF-EE3252F9F6D2 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_564FC52E-A339-4209-9B6E-86E890D8835C][org_gcr_2017-05-12_mara_564FC52E-A339-4209-9B6E-86E890D8835C]]
(setq org-export-copy-to-kill-ring nil)
;; org_gcr_2017-05-12_mara_564FC52E-A339-4209-9B6E-86E890D8835C ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_BF7F8052-2578-4BA2-9740-DA437B55447B][org_gcr_2017-05-12_mara_BF7F8052-2578-4BA2-9740-DA437B55447B]]
(setq org-export-with-toc nil)
;; org_gcr_2017-05-12_mara_BF7F8052-2578-4BA2-9740-DA437B55447B ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_5E57CCF7-6D5D-42B4-BD49-26D55EC0891C][org_gcr_2017-05-12_mara_5E57CCF7-6D5D-42B4-BD49-26D55EC0891C]]
(setq org-src-preserve-indentation t)
;; org_gcr_2017-05-12_mara_5E57CCF7-6D5D-42B4-BD49-26D55EC0891C ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_BC45B41D-BED3-4448-BFE6-9EE43DAD37E2][org_gcr_2017-05-12_mara_BC45B41D-BED3-4448-BFE6-9EE43DAD37E2]]
(setq org-export-allow-bind-keywords t)
;; org_gcr_2017-05-12_mara_BC45B41D-BED3-4448-BFE6-9EE43DAD37E2 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_DA69CB4F-597A-4057-A532-2B9EC5E4FCF9][org_gcr_2017-05-12_mara_DA69CB4F-597A-4057-A532-2B9EC5E4FCF9]]
(setq org-element-use-cache nil)
;; org_gcr_2017-05-12_mara_DA69CB4F-597A-4057-A532-2B9EC5E4FCF9 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_C933F9D3-EC64-4D09-980D-FB8C7E39CB92][org_gcr_2017-05-12_mara_C933F9D3-EC64-4D09-980D-FB8C7E39CB92]]
(help/set-org-babel-default-header-args :exports "both")
;; org_gcr_2017-05-12_mara_C933F9D3-EC64-4D09-980D-FB8C7E39CB92 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_8D15DF2A-D8EE-4797-AD1C-CB81CFE1404B][org_gcr_2017-05-12_mara_8D15DF2A-D8EE-4797-AD1C-CB81CFE1404B]]
(help/set-org-babel-default-inline-header-args :exports "results")
;; org_gcr_2017-05-12_mara_8D15DF2A-D8EE-4797-AD1C-CB81CFE1404B ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_9C45DF8B-120E-47C8-9CA8-04EE6EEB162A][org_gcr_2017-05-12_mara_9C45DF8B-120E-47C8-9CA8-04EE6EEB162A]]
(help/set-org-babel-default-header-args :wrap "EXAMPLE")
;; org_gcr_2017-05-12_mara_9C45DF8B-120E-47C8-9CA8-04EE6EEB162A ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::org_gcr_2017-05-12_mara_28D5D5A9-5CC8-4B6C-887F-A02F9D416B0D][org_gcr_2017-05-12_mara_28D5D5A9-5CC8-4B6C-887F-A02F9D416B0D]]
(help/set-org-babel-default-header-args:ditaa :wrap "RESULTS")
(help/set-org-babel-default-header-args:dot :wrap "RESULTS")
(help/set-org-babel-default-header-args:plantuml :wrap "RESULTS")
;; org_gcr_2017-05-12_mara_28D5D5A9-5CC8-4B6C-887F-A02F9D416B0D ends here
