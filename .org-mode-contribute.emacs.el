;; -*- no-byte-compile: t; -*-

;; -*- no-byte-compile: t; -*-

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5][org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5]]
(load-file "~/src/help/.org-mode-package-management.emacs.el")
;; org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B][org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B]]
(add-to-list 'load-path "~/src/xml-rpc-el")
(require 'xml-rpc)
;; org_gcr_2017-05-12_mara_3989AFAA-23E6-4463-98E8-90F7ED269C1B ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551][org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551]]
(add-to-list 'load-path "~/src/metaweblog")
(require 'metaweblog)
;; org_gcr_2017-05-12_mara_C057BFE2-7242-495D-BCD2-62C6389A6551 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F][org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F]]
(add-to-list 'load-path "~/src/org2blog")
(require 'org2blog)
(add-hook 'org-mode-hook #'org2blog/wp-org-mode-hook-fn)
;; org_gcr_2017-05-12_mara_EF1B02DF-BDB7-44AA-A018-B0BE6DA1C08F ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE][org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE]]
(setq org2blog/wp-track-posts nil)
;; org_gcr_2017-05-12_mara_FF96F4B6-42B9-45D6-BEE6-6CDC9D6815AE ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7][org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7]]
(setq org2blog/wp-blog-alist
      '(("wisdomandwonder"
         :url "https://www.wisdomandwonder.com/xmlrpc.php"
         :username "admin"
         :default-categories ("Article" "Link")
         :confirm t
         :show 'show)))
;; org_gcr_2017-05-12_mara_854DE6E9-2208-42EB-A164-EC06E489B6B7 ends here

;; [[file:~/src/help/Contribute.org::org_gcr_2017-05-15_mara_5CF1DF19-27F5-4509-8E17-9CA0D1B29314][org_gcr_2017-05-15_mara_5CF1DF19-27F5-4509-8E17-9CA0D1B29314]]
(add-to-list 'load-path "~/src/pretty-mode")
(require 'pretty-mode)
(global-pretty-mode t)
;; org_gcr_2017-05-15_mara_5CF1DF19-27F5-4509-8E17-9CA0D1B29314 ends here
