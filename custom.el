(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(compilation-message-face (quote default))
 '(csv-align-style (quote auto))
 '(csv-header-lines 1)
 '(csv-invisibility-default nil)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d847e7d718be4e70404aaacd1f293ea97342882f665d0c8e0eb9065cb3393625" "c2471caadabc64850540a344079c07e4c219cd6c9a48811584438e0a0d6dc3e2" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" default)))
 '(fci-rule-color "#073642")
 '(filesets-data
   (quote
    (("WIP"
      (:files "/Users/gcr/git/src/list/wnw.org" "/Users/gcr/git/src/StoneIsle/stoneisle.org" "/Users/gcr/git/src/list/elp.org" "/Users/gcr/git/gitlab/wnw/wnw.org" "/Users/gcr/src/hardware/macbooks.org" "~/src/list/scratch.org" "~/src/list/projects.org"))
     ("Org2Blog"
      (:files "/usr/local/Cellar/emacs/26.1_1/share/emacs/26.1/lisp/url/url.el.gz" "/Users/gcr/git/src/metaweblog/metaweblog.el" "/Users/gcr/git/src/xml-rpc-el/xml-rpc.el" "/Users/gcr/src/org2blogwiki/Home.org" "/Users/gcr/src/org2blog/org2blog-pkg.el" "/Users/gcr/src/org2blog/org2blog-autoloads.el" "~/src/org2blog/ox-wp.el" "~/src/org2blog/org2blog.el"))
     ("HELP"
      (:pattern "~/src/help" "^.+\\.\\(org\\|el\\)$"))
     ("Poetry"
      (:pattern "~/src/poetry" "^.+\\.org$"))
     ("StoneIsle"
      (:tree "~/src/StoneIsle" "^.+\\.org$")))))
 '(gif-screencast-capture-format "ppm")
 '(gif-screencast-mode nil nil (gif-screencast))
 '(gif-screencast-title-bar-pixel-height 22)
 '(global-hl-todo-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#cccc00")
     ("OPTIMIZE" . "#0000cc")
     ("REVIEW" . "#cc8500")
     ("HACK" . "#cc00cc")
     ("FIXME" . "#cc0000"))))
 '(magit-diff-use-overlays nil)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 5) ((control)))))
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org2blog/wp-use-wp-latex nil)
 '(package-selected-packages
   (quote
    (yasnippet xml-rpc org2blog dash a magit-filenotify org-make-toc f gif-screencast beginend helpful caps-lock golden-ratio amx counsel hl-todo spark ox-pandoc benchmark-init auctex-latexmk info-buffer affect-vs-effect unidecode unicode-progress-reporter list-unicode-display charmap esup unicode-fonts google-this csv-mode ox-reveal go-snippets ido-completing-read+ fontawesome emacs-fontawesome :apples-mode apples-mode unfill lispy te yasnippet-snippets flycheck-yamllint edit-indirect smart-shift highlight-indentation ansible emacs-ansible yaml-mode resize-window ido-grid el2markdown gorepl-mode fsharp-mode lorem-ipsum move-text go-direx go-rename gotest go-hydra go-guru flycheck-gometalinter go-errcheck ob-go go-eldoc auto-compile highlight-quoted seethru mode-icons eyebrowse indent-guide xpm xmp persistent-scratch buffer-move crontab-mode ht parent-mode ibuffer-vc dumb-jump fountain-mode ssh-config-mode writegood-mode wrap-region web-mode unicode-troll-stopper unicode-escape undo-tree stripe-buffer smartparens selectric-mode scad-mode rainbow-mode racket-mode r-autoyas projectile pretty-mode plantuml-mode persistent-soft page-break-lines ox-gfm org-table-sticky-header nlinum mwim metaweblog markdown-mode magit macrostep lexbind-mode langtool key-chord json-mode js2-refactor inlineR imenu-list ido-vertical-mode ido-ubiquitous ido-hacks hydra graphviz-dot-mode gnu-apl-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine fuzzy fraktur-mode flycheck-package flx-ido fill-column-indicator expand-region exec-path-from-shell eval-in-repl ess-R-object-popup ess-R-data-view elmacro elisp-slime-nav elisp-refs dired-imenu dired-details+ diminish diff-hl dash-functional dash-at-point bug-hunter browse-kill-ring blackboard-bold-mode auto-complete-chunk auctex apache-mode anzu alert aggressive-indent ag ac-geiser)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(safe-local-variable-values (quote ((mangle-whitespace . t))))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(unicode-fonts-debug-availability t)
 '(unicode-fonts-skip-font-groups (quote (microsoft-only multicolor non-free)))
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
