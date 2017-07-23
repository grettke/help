Never compile this.

```emacs-lisp
;; -*- no-byte-compile: t; -*-
```


# Watch What You Eat

    ID: org_gcr_2017-05-12_mara:BD133C8B-8DFF-45C0-967D-CB83693C54B4

Configure `use-package`.

Sysop is likely to use this infrequently.

Start EMACS with this command:

    emacs --debug-init --no-init-file --no-splash --background-color white --foreground-color black --vertical-scroll-bars --eval '(switch-to-buffer "*Messages*")' --name O2B-TEST --title O2B-TEST --load ~/src/help/.org-mode-package-management.emacs.el

```emacs-lisp
(load-file "~/src/help/.org-mode-fundamentals.emacs.el")
```

**Code requiring package-management can only follow this block.**

Before ELPA, I used SVN to manage software packages for EMACS. After ELPA, I used ELPA-packages. Now this system uses MELPA and GNU. MELPA packages always have their issues fixed very quickly. GNU packages rarely have issues.

Initialize Package.

```emacs-lisp
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
```

Use-Package is the most configurable and performant way to manage ELPA packages. Startup speed matters but not right now so don&rsquo;t use `:defer`.

Add the Use-Package distribution the load path.

```emacs-lisp
(add-to-list 'load-path"~/src/use-package")
```

Load Use-Package and it&rsquo;s partner Diminish. Every package loaded before this point uses `require`. Every package loaded after this point uses `use-package`.

```emacs-lisp
(eval-when-compile
  (require 'use-package))
(use-package diminish)
```

Speed up code execution. Review as desired.

```emacs-lisp
(use-package auto-compile
  :ensure t
  :config
  (auto-compile-on-load-mode)
  (auto-compile-on-save-mode)
  (setq auto-compile-display-buffer nil))
```
