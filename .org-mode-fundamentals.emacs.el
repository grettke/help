;; -*- lexical-binding: t -*-

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:78D777D3-FA69-4361-874C-7262DE96F753][orgmode:gcr:vela:78D777D3-FA69-4361-874C-7262DE96F753]]
(load-file "~/src/help/.org-mode-ecm.emacs.el")
;; orgmode:gcr:vela:78D777D3-FA69-4361-874C-7262DE96F753 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:BB2E97AF-6364-401F-8063-8B5A0BE481E6][orgmode:gcr:vela:BB2E97AF-6364-401F-8063-8B5A0BE481E6]]
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
             (save-excursion (insert "#+NAME: orgmode:gcr:vela:" (org-id-new) "\n"))
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
  (insert "#+NAME: orgmode:gcr:vela:" (org-id-new))
  (beginning-of-line)
  (insert "\n"))
;; orgmode:gcr:vela:BB2E97AF-6364-401F-8063-8B5A0BE481E6 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:orgmode:gcr:vela:659CE55F-3CEA-4940-9D5E-5C66258BFE8F][orgmode:gcr:vela:orgmode:gcr:vela:659CE55F-3CEA-4940-9D5E-5C66258BFE8F]]
(require 'org-id)
;; orgmode:gcr:vela:orgmode:gcr:vela:659CE55F-3CEA-4940-9D5E-5C66258BFE8F ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:751D537A-EE89-4B1D-91E5-99D3A4F8B52E][orgmode:gcr:vela:751D537A-EE89-4B1D-91E5-99D3A4F8B52E]]
(setq org-id-link-to-org-use-id 'nil)
;; orgmode:gcr:vela:751D537A-EE89-4B1D-91E5-99D3A4F8B52E ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:885C8386-AC68-4DB7-8D04-537E28ED950B][orgmode:gcr:vela:885C8386-AC68-4DB7-8D04-537E28ED950B]]
(setq org-id-prefix (concat "orgmode:" (user-real-login-name) ":" (format-time-string "%Y-%m-%d") ":" (system-name)))
(setq org-id-method 'uuid)
;; orgmode:gcr:vela:885C8386-AC68-4DB7-8D04-537E28ED950B ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:859E61A4-D910-4731-8328-A63F6B6ACD3F][orgmode:gcr:vela:859E61A4-D910-4731-8328-A63F6B6ACD3F]]
(add-hook 'org-babel-pre-tangle-hook #'help/org-prp-hdln)
(add-hook 'org-babel-pre-tangle-hook #'help/org-prp-src-blk)
;; orgmode:gcr:vela:859E61A4-D910-4731-8328-A63F6B6ACD3F ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:F19C629B-E784-48CA-BC53-CCFB849CE9EC][orgmode:gcr:vela:F19C629B-E784-48CA-BC53-CCFB849CE9EC]]
(setq org-babel-use-quick-and-dirty-noweb-expansion nil)
;; orgmode:gcr:vela:F19C629B-E784-48CA-BC53-CCFB849CE9EC ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:orgmode:gcr:vela:F7F35A40-EE63-48B1-8D5D-F745525D9996][orgmode:gcr:vela:orgmode:gcr:vela:F7F35A40-EE63-48B1-8D5D-F745525D9996]]
(setq org-babel-tangle-use-relative-file-links t)
;; orgmode:gcr:vela:orgmode:gcr:vela:F7F35A40-EE63-48B1-8D5D-F745525D9996 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:AD42B561-29FA-4652-AD28-692CAD631E62][orgmode:gcr:vela:AD42B561-29FA-4652-AD28-692CAD631E62]]
(help/set-org-babel-default-header-args :comments "noweb")
;; orgmode:gcr:vela:AD42B561-29FA-4652-AD28-692CAD631E62 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:F501D202-9F0B-4343-B257-E0DEB4483A0B][orgmode:gcr:vela:F501D202-9F0B-4343-B257-E0DEB4483A0B]]
(help/set-org-babel-default-header-args :mkdirp "yes")
;; orgmode:gcr:vela:F501D202-9F0B-4343-B257-E0DEB4483A0B ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:20BE9B4B-ED66-4935-A351-99D17B3A32D4][orgmode:gcr:vela:20BE9B4B-ED66-4935-A351-99D17B3A32D4]]
(help/set-org-babel-default-header-args :noweb "no-export")
;; orgmode:gcr:vela:20BE9B4B-ED66-4935-A351-99D17B3A32D4 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:0F3E7114-A63C-44F4-A9FD-577BAEE536ED][orgmode:gcr:vela:0F3E7114-A63C-44F4-A9FD-577BAEE536ED]]
(help/set-org-babel-default-header-args :padline "yes")
;; orgmode:gcr:vela:0F3E7114-A63C-44F4-A9FD-577BAEE536ED ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:5E69E152-9921-4527-A2B2-24467EEF1BE9][orgmode:gcr:vela:5E69E152-9921-4527-A2B2-24467EEF1BE9]]
(help/set-org-babel-default-header-args :tangle "no")
;; orgmode:gcr:vela:5E69E152-9921-4527-A2B2-24467EEF1BE9 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:6309AF39-FCE4-43DE-BD46-BC7D0BA0971D][orgmode:gcr:vela:6309AF39-FCE4-43DE-BD46-BC7D0BA0971D]]
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
;; orgmode:gcr:vela:6309AF39-FCE4-43DE-BD46-BC7D0BA0971D ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:95CAC7B0-5566-4831-A13A-CE225A286F3D][orgmode:gcr:vela:95CAC7B0-5566-4831-A13A-CE225A286F3D]]
(add-to-list 'org-src-lang-modes '("javascript" . js2))
;; orgmode:gcr:vela:95CAC7B0-5566-4831-A13A-CE225A286F3D ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:58541CA5-C633-4146-8E5D-15C7A3A2D1D7][orgmode:gcr:vela:58541CA5-C633-4146-8E5D-15C7A3A2D1D7]]
(help/set-org-babel-default-header-args :eval "never-export")
(help/set-org-babel-default-inline-header-args :eval "never-export")
;; orgmode:gcr:vela:58541CA5-C633-4146-8E5D-15C7A3A2D1D7 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:D9F32A22-B415-48EA-A189-D8EAF7C202D8][orgmode:gcr:vela:D9F32A22-B415-48EA-A189-D8EAF7C202D8]]
(setq org-export-babel-evaluate nil)
;; orgmode:gcr:vela:D9F32A22-B415-48EA-A189-D8EAF7C202D8 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:BC84119C-6085-4B36-A2D9-0918A68D15C5][orgmode:gcr:vela:BC84119C-6085-4B36-A2D9-0918A68D15C5]]
(defconst help/org-sb-results-cfg "value table drawer replace")
(help/set-org-babel-default-header-args :results help/org-sb-results-cfg)
;; orgmode:gcr:vela:BC84119C-6085-4B36-A2D9-0918A68D15C5 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:38A0B76B-EDEB-489C-9229-60E01438CCAD][orgmode:gcr:vela:38A0B76B-EDEB-489C-9229-60E01438CCAD]]
(defconst help/org-isb-results-cfg "replace")
(help/set-org-babel-default-inline-header-args :results help/org-isb-results-cfg)
;; orgmode:gcr:vela:38A0B76B-EDEB-489C-9229-60E01438CCAD ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:71BFB4A2-DABD-4621-A6E0-C3CAECD34BC4][orgmode:gcr:vela:71BFB4A2-DABD-4621-A6E0-C3CAECD34BC4]]
(setq org-export-with-properties t)
;; orgmode:gcr:vela:71BFB4A2-DABD-4621-A6E0-C3CAECD34BC4 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:49FDDABE-7999-4F51-BD93-969187A220D7][orgmode:gcr:vela:49FDDABE-7999-4F51-BD93-969187A220D7]]
(setq org-export-in-background nil)
;; orgmode:gcr:vela:49FDDABE-7999-4F51-BD93-969187A220D7 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:07E50259-E68C-465E-9387-9984220CEB69][orgmode:gcr:vela:07E50259-E68C-465E-9387-9984220CEB69]]
(setq org-export-coding-system 'utf-8)
;; orgmode:gcr:vela:07E50259-E68C-465E-9387-9984220CEB69 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:18CD863D-F01D-44F8-9B4D-A9FC016EDC79][orgmode:gcr:vela:18CD863D-F01D-44F8-9B4D-A9FC016EDC79]]
(setq org-export-preserve-breaks nil)
;; orgmode:gcr:vela:18CD863D-F01D-44F8-9B4D-A9FC016EDC79 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:F0703ECD-DB1D-47BF-BF1A-52336FE0C5D8][orgmode:gcr:vela:F0703ECD-DB1D-47BF-BF1A-52336FE0C5D8]]
(setq org-export-copy-to-kill-ring nil)
;; orgmode:gcr:vela:F0703ECD-DB1D-47BF-BF1A-52336FE0C5D8 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:5BCA100F-6AC1-454B-9F48-31B5A67CB587][orgmode:gcr:vela:5BCA100F-6AC1-454B-9F48-31B5A67CB587]]
(setq org-export-with-toc nil)
;; orgmode:gcr:vela:5BCA100F-6AC1-454B-9F48-31B5A67CB587 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:5ACDD0B0-2B6F-4F71-BFDF-2D2D1D91B573][orgmode:gcr:vela:5ACDD0B0-2B6F-4F71-BFDF-2D2D1D91B573]]
(setq org-src-preserve-indentation t)
;; orgmode:gcr:vela:5ACDD0B0-2B6F-4F71-BFDF-2D2D1D91B573 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:A2FF8367-4A6A-444C-BB2E-F5AA494E33B5][orgmode:gcr:vela:A2FF8367-4A6A-444C-BB2E-F5AA494E33B5]]
(setq org-export-allow-bind-keywords t)
;; orgmode:gcr:vela:A2FF8367-4A6A-444C-BB2E-F5AA494E33B5 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:E44782C1-A02D-4D4A-982C-9F0908773CF9][orgmode:gcr:vela:E44782C1-A02D-4D4A-982C-9F0908773CF9]]
(setq org-element-use-cache nil)
;; orgmode:gcr:vela:E44782C1-A02D-4D4A-982C-9F0908773CF9 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:72A5FF8F-6597-4523-A604-B499B439A103][orgmode:gcr:vela:72A5FF8F-6597-4523-A604-B499B439A103]]
(help/set-org-babel-default-header-args :exports "both")
;; orgmode:gcr:vela:72A5FF8F-6597-4523-A604-B499B439A103 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:4EA406BB-7D8F-447A-BE18-48FE241A3930][orgmode:gcr:vela:4EA406BB-7D8F-447A-BE18-48FE241A3930]]
(help/set-org-babel-default-inline-header-args :exports "results")
;; orgmode:gcr:vela:4EA406BB-7D8F-447A-BE18-48FE241A3930 ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:7DA47704-25D2-4812-A838-7FE29E9F88FE][orgmode:gcr:vela:7DA47704-25D2-4812-A838-7FE29E9F88FE]]
(help/set-org-babel-default-header-args :wrap "EXAMPLE")
;; orgmode:gcr:vela:7DA47704-25D2-4812-A838-7FE29E9F88FE ends here

;; [[file:~/src/help/Org-Mode_Fundamentals.org::orgmode:gcr:vela:0F18A334-A192-4DA5-A897-9D7F3E15C64B][orgmode:gcr:vela:0F18A334-A192-4DA5-A897-9D7F3E15C64B]]
(help/set-org-babel-default-header-args:ditaa :wrap "RESULTS")
(help/set-org-babel-default-header-args:dot :wrap "RESULTS")
(help/set-org-babel-default-header-args:plantuml :wrap "RESULTS")
;; orgmode:gcr:vela:0F18A334-A192-4DA5-A897-9D7F3E15C64B ends here
