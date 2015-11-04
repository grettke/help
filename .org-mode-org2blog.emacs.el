;; -*- lexical-binding: t -*-

;; [[file:help.org::*Org2blog][E32697AE-784E-458F-A042-D9B559908721]]
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
;; [[file:~/src/help/help.org::*Org-Mode%20Exemple%20Complet%20Minimal][5112469C-F95A-484B-9D56-90DDC863686A]]
(setq org-enforce-todo-checkbox-dependencies t)
;; 5112469C-F95A-484B-9D56-90DDC863686A ends here
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
  (insert "#+NAME: " (org-id-new))
  (beginning-of-line)
  (insert "\n"))
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
   (C . t)
   (R . t)
   (python . t)
   (sass . t)
   (scheme . t)
   (sql . t)
   ;;
   (latex . t)
   ;;
   (makefile . t)
   (shell . t)
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
(defconst help/org-sb-results-cfg "value table drawer replace")
(help/set-org-babel-default-header-args :results help/org-sb-results-cfg)
(defconst help/org-isb-results-cfg
  (replace-regexp-in-string "table" "scalar" help/org-sb-results-cfg))
(help/set-org-babel-default-inline-header-args :results help/org-isb-results-cfg)
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
;; [[file:~/src/help/help.org::*Weaving][E44782C1-A02D-4D4A-982C-9F0908773CF9]]
(setq org-element-use-cache nil)
;; E44782C1-A02D-4D4A-982C-9F0908773CF9 ends here
;; [[file:~/src/help/help.org::*exports][72A5FF8F-6597-4523-A604-B499B439A103]]
(help/set-org-babel-default-header-args :exports "both")
;; 72A5FF8F-6597-4523-A604-B499B439A103 ends here
;; [[file:~/src/help/help.org::*exports][4EA406BB-7D8F-447A-BE18-48FE241A3930]]
(help/set-org-babel-default-inline-header-args :exports "results")
;; 4EA406BB-7D8F-447A-BE18-48FE241A3930 ends here
;; [[file:~/src/help/help.org::*wrap][7DA47704-25D2-4812-A838-7FE29E9F88FE]]
(help/set-org-babel-default-header-args :wrap "EXAMPLE")
;; 7DA47704-25D2-4812-A838-7FE29E9F88FE ends here
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
;; [[file:~/src/help/help.org::*Blog][E99598C8-D394-484B-A7FB-333FA2544CB0]]
(use-package xml-rpc
  :ensure t)
;; E99598C8-D394-484B-A7FB-333FA2544CB0 ends here
;; [[file:~/src/help/help.org::*Blog][79F63BAD-0CD7-4A97-8A7D-CBAA51BB48E1]]
(use-package metaweblog
  :ensure t)
;; 79F63BAD-0CD7-4A97-8A7D-CBAA51BB48E1 ends here
;; [[file:~/src/help/help.org::*Blog][DF522DDF-4A71-4D8B-B6F9-9BD6F11EB832]]
(add-to-list 'load-path "~/src/org2blog")
(require 'org2blog-autoloads)
;; DF522DDF-4A71-4D8B-B6F9-9BD6F11EB832 ends here
;; [[file:~/src/help/help.org::*Blog][9C1EAE6B-9D05-43FB-AC35-7FBFE6CB4F7E]]
(setq org2blog/wp-track-posts nil)
;; 9C1EAE6B-9D05-43FB-AC35-7FBFE6CB4F7E ends here
;; [[file:~/src/help/help.org::*Blog][BCA2FE29-930C-4E66-A662-17FF451D1591]]
(setq org2blog/wp-blog-alist
      '(("wisdomandwonder"
         :url "http://www.wisdomandwonder.com/wordpress/xmlrpc.php"
         :username "admin"
         :default-categories ("Article" "Link")
         :confirm t
         :show 'show)))
;; BCA2FE29-930C-4E66-A662-17FF451D1591 ends here
;; E32697AE-784E-458F-A042-D9B559908721 ends here
