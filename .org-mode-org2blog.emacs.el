;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5][org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5]]
(load-file "~/src/help/.org-mode-fundamentals.emacs.el")
;; org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5 ends here

;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_0F6BBBBA-259E-46FC-AD7F-C954149CCCEA][org_gcr_2017-05-12_mara_0F6BBBBA-259E-46FC-AD7F-C954149CCCEA]]
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
;; org_gcr_2017-05-12_mara_0F6BBBBA-259E-46FC-AD7F-C954149CCCEA ends here

;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_867E1E1D-48E5-47C7-9B39-FD29F137665D][org_gcr_2017-05-12_mara_867E1E1D-48E5-47C7-9B39-FD29F137665D]]
(add-to-list 'load-path"~/src/use-package")
;; org_gcr_2017-05-12_mara_867E1E1D-48E5-47C7-9B39-FD29F137665D ends here

;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_3982F502-880C-4DF4-A1DF-07DA3EAA7D78][org_gcr_2017-05-12_mara_3982F502-880C-4DF4-A1DF-07DA3EAA7D78]]
(eval-when-compile
  (require 'use-package))
(use-package diminish)
;; org_gcr_2017-05-12_mara_3982F502-880C-4DF4-A1DF-07DA3EAA7D78 ends here

;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B][org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B]]
(use-package xml-rpc
  :ensure t)
;; org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B ends here

;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551][org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551]]
(use-package metaweblog
  :ensure t)
;; org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551 ends here

;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F][org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F]]
(add-to-list 'load-path "~/src/org2blog")
(require 'org2blog-autoloads)
;; org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F ends here

;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE][org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE]]
(setq org2blog/wp-track-posts nil)
;; org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE ends here

;; [[file:~/src/help/Org2Blog.org::org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7][org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7]]
(setq org2blog/wp-blog-alist
      '(("wisdomandwonder"
         :url "https://www.wisdomandwonder.com/xmlrpc.php"
         :username "admin"
         :default-categories ("Article" "Link")
         :confirm t
         :show 'show)))
;; org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7 ends here
