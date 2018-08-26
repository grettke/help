- [Contribute](#org447d267)
- [xml-rpc](#orgbc4f9eb)
- [metaweblog](#orgd12dc4b)
- [Org2blog](#org7b3ce0c)
- [Pretty Mode](#orgdd6c138)
- [go-hydra](#orge15dfe8)
- [universal-emotions-emoticons](#org6fa602c)
- [corporate-bs-generator](#org1715352)

Never compile this.

```emacs-lisp
;; -*- no-byte-compile: t; -*-
```


<a id="org447d267"></a>

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


<a id="orgbc4f9eb"></a>

# xml-rpc

    ID: org_gcr_2017-12-16_mara:8490F7FD-9718-4ADD-8A84-56A8D6625C12

> An elisp implementation of clientside XML-RPC

```emacs-lisp
(add-to-list 'load-path "~/src/xml-rpc-el")
(require 'xml-rpc)
```


<a id="orgd12dc4b"></a>

# metaweblog

    ID: org_gcr_2017-12-16_mara:C3B0266C-F9EC-498B-ABBA-486090654DDA

> Weblog maintenance via XML-RPC APIs

```emacs-lisp
(add-to-list 'load-path "~/src/metaweblog")
(require 'metaweblog)
```


<a id="org7b3ce0c"></a>

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


<a id="orgdd6c138"></a>

# Pretty Mode

    ID: org_gcr_2017-05-15_mara:CB452410-955E-4A91-A811-10755A35A142

Visualize ASCII values as their most likely Unicode representation.

```emacs-lisp
(add-to-list 'load-path "~/src/pretty-mode")
(require 'pretty-mode)
```


<a id="orge15dfe8"></a>

# go-hydra

    ID: org_gcr_2017-08-01_mara:F1CA18C6-F00E-4F1A-BBD3-77FC52B437E8

A collection of Go related Hydras for Emacs.

```emacs-lisp
(add-to-list 'load-path "~/src/go-hydra")
(require 'go-hydra)
```


<a id="org6fa602c"></a>

# universal-emotions-emoticons

    ID: org_gcr_2017-12-05_mara:BAEA6BB3-614D-4957-BEFF-4AE9E6271BF1

```emacs-lisp
(add-to-list 'load-path "~/src/universal-emotions-emoticons")
(require 'universal-emotions-emoticons)
```


<a id="org1715352"></a>

# corporate-bs-generator

    ID: org_gcr_2018-07-06T22-26-05-05-00_mara:EBD3FC34-3153-4E01-A8DD-099CF51A08EF

```emacs-lisp
(add-to-list 'load-path "~/src/corporate-bs-generator")
(require 'corporate-bs-generator)
```
