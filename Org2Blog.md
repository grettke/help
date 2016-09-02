
# Org2blog

    ID: orgmode:gcr:vela:BA37913C-D781-453B-B438-F6464B60CFDF

Configure Org2blog for use, development, and support.

Sysop is likely to use this periodically.

Start EMACS with this command:

`open /Applications/Emacs.app -n --args --quick --load ~/src/help/.org-mode-org2blog.emacs.el`

```lisp
;; -*- lexical-binding: t -*-
```

```lisp
(load-file "~/src/help/.org-mode-fundamentals.emacs.el")
```

## Watch What You Eat

    ID: orgmode:gcr:vela:59073E74-83D9-4218-917C-789A27D57E5A

**Code requiring package-management can only follow this block.**

Before ELPA, I used SVN to manage software packages for EMACS. After ELPA,
I used ELPA-packages. Now this system uses MELPA and GNU. MELPA packages always
have their issues fixed very quickly. GNU packages rarely have issues.

Initialize Package.

```lisp
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
```

Use-Package is the most configurable and performant way to manage ELPA packages.

Add the Use-Package distribution the load path.

```lisp
(add-to-list 'load-path"~/src/use-package")
```

Load Use-Package and it&rsquo;s partner Diminish. Every package loaded before this
point uses `require`. Every package loaded after this point uses `use-package`.

```lisp
(eval-when-compile
  (require 'use-package))
(use-package diminish)
```

## Blog

    ID: orgmode:gcr:vela:F5E33EB2-2E26-435C-85F6-26CB7CE7FC56

> An elisp implementation of clientside XML-RPC

```lisp
(use-package xml-rpc
  :ensure t)
```

> Weblog maintenance via XML-RPC APIs

```lisp
(use-package metaweblog
  :ensure t)
```

> Blog from Org mode to wordpress

```lisp
(add-to-list 'load-path "~/src/org2blog")
(require 'org2blog-autoloads)
```

Org2Blog depends on Org-Mode. This system loads Org-Mode from Git. Enter the
`ELPA` cache directory and delete it.

This system works with WisdomAndWonder. It keeps its posts separate giving focus
to each Web.

```lisp
(setq org2blog/wp-track-posts nil)
```

Configure Org2Blog.

```lisp
(setq org2blog/wp-blog-alist
      '(("wisdomandwonder"
         :url "https://www.wisdomandwonder.com/xmlrpc.php"
         :username "admin"
         :default-categories ("Article" "Link")
         :confirm t
         :show 'show)))
```
