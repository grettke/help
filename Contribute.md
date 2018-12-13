- [Contribute](#orgcd4e9c4)
- [xml-rpc](#orgfaae10d)
- [metaweblog](#orgd7c98be)
- [Org2blog](#orgee66932)
- [Pretty Mode](#orgf91e1d2)
- [go-hydra](#org206241a)
- [universal-emotions-emoticons](#orgc2fc997)
- [corporate-bs-generator](#orgcd31862)

Never compile this.

```emacs-lisp
;; -*- no-byte-compile: t; -*-
```


<a id="orgcd4e9c4"></a>

# Contribute

    ID: org_gcr_2017-05-12_mara:B6246A7A-5514-4478-BC3D-7768B05B08B8

```emacs-lisp
;; -*- no-byte-compile: t; -*-
```

Sysop is likely to use this periodically.

Start EMACS with this command:

    emacs --debug-init --no-init-file --no-splash --background-color white --foreground-color black --vertical-scroll-bars --eval '(switch-to-buffer "*Messages*")' --name O2B-TEST --title O2B-TEST --load ~/src/help/.org-mode-contribute.emacs.el

```emacs-lisp
(load-file "~/src/help/.org-mode-package-management.emacs.el")
```


<a id="orgfaae10d"></a>

# xml-rpc

    ID: org_gcr_2017-12-16_mara:8490F7FD-9718-4ADD-8A84-56A8D6625C12

> An elisp implementation of clientside XML-RPC

```emacs-lisp
(add-to-list 'load-path "~/src/xml-rpc-el")
(require 'xml-rpc)
```


<a id="orgd7c98be"></a>

# metaweblog

    ID: org_gcr_2017-12-16_mara:C3B0266C-F9EC-498B-ABBA-486090654DDA

> Weblog maintenance via XML-RPC APIs

```emacs-lisp
(add-to-list 'load-path "~/src/metaweblog")
(require 'metaweblog)
```


<a id="orgee66932"></a>

# Org2blog

    ID: org_gcr_2018-03-03_mara:60113001-1991-4EB5-BF61-190C198AF742

Configure Org2blog for use, development, and support.

> Blog from Org mode to wordpress

```emacs-lisp
(add-to-list 'load-path "~/src/org2blog")
(require 'org2blog)
(add-hook 'org-mode-hook #'org2blog/wp-org-mode-hook-fn)
```

Use [MathJax](https://www.mathjax.org/) instead of `wp-latex` syntax.

```emacs-lisp
(setq org2blog/wp-use-wp-latex nil)
```

Org2Blog depends on Org-Mode. This system loads Org-Mode from Git. Enter the `ELPA` cache directory and delete it.

This system works with WisdomAndWonder. It keeps its posts separate giving focus to each Web.

```emacs-lisp
(setq org2blog/wp-track-posts nil)
```

Post creation handler.

```emacs-lisp
(add-hook 'org2blog/wp-after-new-post-or-page-functions (lambda (p) (pp p)))
```

Configure Org2Blog.

```emacs-lisp
(setq org2blog/wp-blog-alist
      '(("wisdomandwonder"
         :url "https://www.wisdomandwonder.com/xmlrpc.php"
         :username "admin"
         :default-categories ("Article" "Link")
         :confirm t
         :show 'show)))
```


<a id="orgf91e1d2"></a>

# Pretty Mode

    ID: org_gcr_2017-05-15_mara:CB452410-955E-4A91-A811-10755A35A142

Visualize ASCII values as their most likely Unicode representation.

```emacs-lisp
(add-to-list 'load-path "~/src/pretty-mode")
(require 'pretty-mode)
```


<a id="org206241a"></a>

# go-hydra

    ID: org_gcr_2017-08-01_mara:F1CA18C6-F00E-4F1A-BBD3-77FC52B437E8

A collection of Go related Hydras for Emacs.

```emacs-lisp
(add-to-list 'load-path "~/src/go-hydra")
(require 'go-hydra)
```


<a id="orgc2fc997"></a>

# universal-emotions-emoticons

    ID: org_gcr_2017-12-05_mara:BAEA6BB3-614D-4957-BEFF-4AE9E6271BF1

```emacs-lisp
(add-to-list 'load-path "~/src/universal-emotions-emoticons")
(require 'universal-emotions-emoticons)
```


<a id="orgcd31862"></a>

# corporate-bs-generator

    ID: org_gcr_2018-07-06T22-26-05-05-00_mara:EBD3FC34-3153-4E01-A8DD-099CF51A08EF

```emacs-lisp
(add-to-list 'load-path "~/src/corporate-bs-generator")
(require 'corporate-bs-generator)
```
