
(setq load-prefer-newer t)
(add-to-list 'load-path "~/src/org-mode/lisp")
(add-to-list 'load-path "~/src/org-mode/contrib/lisp")
(setq org-list-allow-alphabetical t)
(require 'org)
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
(help/set-org-babel-default-header-args :comments "noweb")
(help/set-org-babel-default-header-args :padline "yes")
(help/set-org-babel-default-header-args :noweb "no-export")
(help/set-org-babel-default-header-args :eval "never-export")
(help/set-org-babel-default-inline-header-args :eval "never-export")
(setq org-export-babel-evaluate nil)
(help/set-org-babel-default-header-args :results "output replace")
(help/set-org-babel-default-inline-header-args :results "value replace")
(help/set-org-babel-default-header-args :exports "both")
(setq org-confirm-babel-evaluate nil)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'load-path "~/src/use-package")
(require 'use-package)
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
