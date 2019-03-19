;; -*- no-byte-compile: t; -*-

;; -*- no-byte-compile: t; -*-

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5][org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5]]
(load-file "~/src/help/.org-mode-package-management.emacs.el")
;; org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2019-03-18T08-55-14-05-00_cosmicality_2D133516-C268-4C47-9D67-DC0B258FE70D][org_gcr_2019-03-18T08-55-14-05-00_cosmicality_2D133516-C268-4C47-9D67-DC0B258FE70D]]
(use-package dash
  :ensure t
  :config
  (dash-enable-font-lock))
(use-package dash-functional
  :ensure t)

(use-package xml-rpc
  :ensure t)
(use-package f
  :ensure t)
(use-package helpful
  :ensure t
  :config
  (global-set-key (kbd "s-a") #'helpful-at-point))
(use-package ht
  :ensure t)
(use-package hydra
  :ensure t)
(use-package go-mode
  :ensure t
  :config
  (use-package go-eldoc
    :ensure t)
  (use-package go-autocomplete
    :ensure t
    :config
    (ac-config-default))
  (use-package golint
    :ensure t)
  (use-package go-errcheck
    :ensure t)
  (use-package ob-go
    :ensure t
    :config
    (add-to-list 'org-babel-load-languages '(go . t)))
  (use-package go-snippets
    :ensure t)
  (use-package flycheck-gometalinter
    :ensure t
    :config
    (add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup)
    (setq flycheck-gometalinter-concurrency 2)
    (setq flycheck-gometalinter-deadline "7s")
    (setq flycheck-gometalinter-disable-all nil)
    (setq flycheck-gometalinter-disable-linters nil)
    (setq flycheck-gometalinter-enable-linters nil)
    (setq flycheck-gometalinter-errors-only nil)
    (setq flycheck-gometalinter-fast nil)
    (setq flycheck-gometalinter-tests t)
    (setq flycheck-gometalinter-vendor t))
  (use-package go-guru
    :ensure t)
  (use-package gotest
    :ensure t)
  (use-package go-rename
    :ensure t)
  (use-package go-direx
    :ensure t)
  (add-to-list 'load-path "~/src/go-snippets")
  (require 'go-snippets)
  (defun help/go-mode/safb/go-run ()
    ""
    (interactive)
    (let* ((compile-command (file-name-nondirectory
                             (directory-file-name default-directory))))
      (help/safb/compile)))
  (defun help/go-mode/safb/go-rename ()
    ""
    (interactive)
    (help/save-all-file-buffers)
    (call-interactively 'go-rename))
  (add-to-list 'load-path "~/git/github-anonymous/gorepl-mode")
  (require 'gorepl-mode)
  (defhydra help/hydra/right/go-mode (:color blue :hint nil)
    "
 Go: (_q_uit)              |^                   ^|^                ^|
-^------------------------^+^-------------------^+----------------^^+--------
 _e_: explorer             | _r_: run            | _t_: tools       | g_o_re
 _g_: guru                 | _j_: previous error | _k_: next error  |
 _c_: build                | _n_: rename         |                ^^|
 "
    ("e" go-direx-switch-to-buffer)
    ("r" help/go-mode/safb/go-run)
    ("t" go-hydra-go-mode/body)
    ("o" gorepl-hydra/body)
    ("g" go-hydra-guru-go-mode/body)
    ("k" godef-jump-other-window)
    ("l" pop-tag-mark)
    ("c" help/safb/compile)
    ("n" help/go-mode/safb/go-rename)
    ("j" previous-error :exit nil)
    ("k" next-error :exit nil)
    ("q" nil))
  (key-chord-define go-mode-map "hh" #'help/hydra/right/go-mode/body)
  (defun help/go-mode-hook-fn ()
    (go-eldoc-setup)
    (setq gofmt-command "goimports")
    (add-hook 'before-save-hook #'gofmt-before-save)
    (setq compilation-read-command nil)
    (setq compile-command "go install && go test -v && gometalinter ./...")
    (local-set-key (kbd "s-i") #'godoc-at-point)
    (local-set-key (kbd "s-I") #'godoc)
    (local-set-key (kbd "s-j") #'help/safb/compile)
    (local-set-key (kbd "s-k") #'help/go-mode/safb/go-run)
    (local-set-key (kbd "=") #'(lambda () (interactive) (insert " = ")))
    (local-set-key (kbd "s-=") #'(lambda () (interactive) (insert " := ")))
    (local-set-key (kbd "s-<") #'(lambda () (interactive) (insert " <- ")))
    (local-set-key (kbd "s-o") #'gorepl-hydra/body)
    (go-guru-hl-identifier-mode)
    (gorepl-mode))
  (add-hook 'go-mode-hook #'help/go-mode-hook-fn))
;; org_gcr_2019-03-18T08-55-14-05-00_cosmicality_2D133516-C268-4C47-9D67-DC0B258FE70D ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B][org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B]]
(use-package xml-rpc
  :ensure t)
;; org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551][org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551]]
(add-to-list 'load-path "~/src/metaweblog")
(require 'metaweblog)
;; org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F][org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F]]
(add-to-list 'load-path "~/src/org2blog")
(require 'org2blog)
(add-hook 'org-mode-hook #'owp-maybe-start)
(defun help/org2blog/wp-mode-hook-fn ()
  (local-set-key (kbd "s-(") #'owp-user-interface)
  (local-set-key (kbd "s-)") #'owp-complete))
(add-hook 'org2blog/wp-mode-hook #'help/org2blog/wp-mode-hook-fn)
;; org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-08-14_mara_7625680E-1CA4-428E-A92F-D53114742D28][org_gcr_2017-08-14_mara_7625680E-1CA4-428E-A92F-D53114742D28]]
(setq org2blog/wp-use-wp-latex nil)
;; org_gcr_2017-08-14_mara_7625680E-1CA4-428E-A92F-D53114742D28 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2019-03-13T19-51-47-05-00_cosmicality_54DAC301-B1D7-4772-9FEE-12FD4FD59CA0][org_gcr_2019-03-13T19-51-47-05-00_cosmicality_54DAC301-B1D7-4772-9FEE-12FD4FD59CA0]]
(setq org2blog/wp-use-sourcecode-shortcode t)
;; org_gcr_2019-03-13T19-51-47-05-00_cosmicality_54DAC301-B1D7-4772-9FEE-12FD4FD59CA0 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE][org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE]]
(setq org2blog/wp-track-posts nil)
;; org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-08-04_mara_B782FF06-D0E7-4598-89E4-02A76E882E78][org_gcr_2017-08-04_mara_B782FF06-D0E7-4598-89E4-02A76E882E78]]
(add-hook 'org2blog/wp-after-new-post-or-page-functions (lambda (p) (pp p)))
;; org_gcr_2017-08-04_mara_B782FF06-D0E7-4598-89E4-02A76E882E78 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7][org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7]]
(require 'auth-source)
(let* ((credentials (auth-source-user-and-password "wisdomandwonder"))
       (username (nth 0 credentials))
       (password (nth 1 credentials))
       (config `(("wisdomandwonder"
                  :url "https://www.wisdomandwonder.com/xmlrpc.php"
                  :username ,username
                  :password ,password
                  :confirm t))))
  (setq org2blog/wp-blog-alist config))
;; org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-15_mara_5CF1DF19-27F5-4509-8E17-9CA0D1B29314][org_gcr_2017-05-15_mara_5CF1DF19-27F5-4509-8E17-9CA0D1B29314]]
(add-to-list 'load-path "~/src/pretty-mode")
(require 'pretty-mode)
;; org_gcr_2017-05-15_mara_5CF1DF19-27F5-4509-8E17-9CA0D1B29314 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-08-01_mara_A0E420CB-EBB0-4D31-BC97-8FE54008F93D][org_gcr_2017-08-01_mara_A0E420CB-EBB0-4D31-BC97-8FE54008F93D]]
(add-to-list 'load-path "~/src/go-hydra")
(require 'go-hydra)
;; org_gcr_2017-08-01_mara_A0E420CB-EBB0-4D31-BC97-8FE54008F93D ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-12-05_mara_62849D6E-BD7B-4289-AC2C-CF8B51B9C633][org_gcr_2017-12-05_mara_62849D6E-BD7B-4289-AC2C-CF8B51B9C633]]
(add-to-list 'load-path "~/src/universal-emotions-emoticons")
(require 'universal-emotions-emoticons)
;; org_gcr_2017-12-05_mara_62849D6E-BD7B-4289-AC2C-CF8B51B9C633 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2018-07-06T22-26-05-05-00_mara_8504E527-9CB6-4CF7-AF8D-5E98CCA540E6][org_gcr_2018-07-06T22-26-05-05-00_mara_8504E527-9CB6-4CF7-AF8D-5E98CCA540E6]]
(add-to-list 'load-path "~/src/corporate-bs-generator")
(require 'corporate-bs-generator)
;; org_gcr_2018-07-06T22-26-05-05-00_mara_8504E527-9CB6-4CF7-AF8D-5E98CCA540E6 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2019-03-18T08-06-20-05-00_cosmicality_9FB6C955-D16B-4548-911B-DD38AEE256C8][org_gcr_2019-03-18T08-06-20-05-00_cosmicality_9FB6C955-D16B-4548-911B-DD38AEE256C8]]
(add-to-list 'load-path "~/src/affect-vs-effect")
(require 'affect-vs-effect)
;; org_gcr_2019-03-18T08-06-20-05-00_cosmicality_9FB6C955-D16B-4548-911B-DD38AEE256C8 ends here
