;; [[file:help.org::*Org-Mode%20Fundamentals][78D777D3-FA69-4361-874C-7262DE96F753]]
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][9969960B-FFEE-48B4-BD9C-F29E750FD8A3]]
;; [[file:~/src/help/help.org::*Principle%20of%20Least%20Astonishment%20(POLA)][87B0CAB9-E6E5-4C68-B389-9289E65FCA7F]]
(setq load-prefer-newer t)
;; 87B0CAB9-E6E5-4C68-B389-9289E65FCA7F ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][D5D4EECF-00C5-4B2F-B9F9-988591C70852]]
(add-to-list #'load-path "~/src/org-mode/lisp")
;; D5D4EECF-00C5-4B2F-B9F9-988591C70852 ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][4D4E921E-7B99-43B2-AD1F-30D2593F05D7]]
(add-to-list #'load-path "~/src/org-mode/contrib/lisp")
;; 4D4E921E-7B99-43B2-AD1F-30D2593F05D7 ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][28776245-A6BB-4294-AC72-30F03F902DF7]]
(setq org-list-allow-alphabetical t)
;; 28776245-A6BB-4294-AC72-30F03F902DF7 ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][86CAEC4F-CFC4-4CAD-9993-E1DCEF3BFCD1]]
(require 'org)
;; 86CAEC4F-CFC4-4CAD-9993-E1DCEF3BFCD1 ends here
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][5749B5BF-1C2A-4948-A357-E096B11539D0]]
(setq org-babel-noweb-wrap-start "«")
(setq org-babel-noweb-wrap-end "»")
;; 5749B5BF-1C2A-4948-A357-E096B11539D0 ends here
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
  "Visit every Source-Block. If it doesn't have a NAME property then add one and
   assign it a UUID. Attribution: URL `http://article.gmane.org/gmane.emacs.orgmode/99740'"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (let ((case-fold-search t))
      (while (re-search-forward "^\s*#[+]BEGIN_SRC" nil t)
        (let ((element (org-element-at-point)))
          (when (eq (org-element-type element) 'src-block)
            (if (not (org-element-property :name element))
                (let ((i (org-get-indentation)))
                  (beginning-of-line)
                  (save-excursion (insert "#+NAME: " (org-id-new) "\n"))
                  (indent-to i)
                  (forward-line 2)))))))
    (save-buffer)))

(defun help/org-babel-demarcate-block ()
  "Add a NAME property then assign it a UUID."
  (interactive)
  (org-babel-demarcate-block)
  (insert "\n#+NAME: " (org-id-new)))
;; BB2E97AF-6364-401F-8063-8B5A0BE481E6 ends here
;; [[file:~/src/help/help.org::*Tangling][859E61A4-D910-4731-8328-A63F6B6ACD3F]]
(add-hook #'org-babel-pre-tangle-hook #'help/org-prp-hdln)
(add-hook #'org-babel-pre-tangle-hook #'help/org-prp-src-blk)
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
 #'org-babel-load-languages
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
;; [[file:~/src/help/help.org::*exports][72A5FF8F-6597-4523-A604-B499B439A103]]
(help/set-org-babel-default-header-args :exports "both")
;; 72A5FF8F-6597-4523-A604-B499B439A103 ends here
;; 78D777D3-FA69-4361-874C-7262DE96F753 ends here
