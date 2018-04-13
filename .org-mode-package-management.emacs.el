;; -*- no-byte-compile: t; -*-

;; [[file:~/src/help/Package-Management.org::org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5][org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5]]
(load-file "~/src/help/.org-mode-fundamentals.emacs.el")
;; org_gcr_2017-05-12_mara_AD27B44D-A88A-421F-9418-EE1B9E1977D5 ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2017-05-12_mara_0F6BBBBA-259E-46FC-AD7F-C954149CCCEA][org_gcr_2017-05-12_mara_0F6BBBBA-259E-46FC-AD7F-C954149CCCEA]]
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
;; org_gcr_2017-05-12_mara_0F6BBBBA-259E-46FC-AD7F-C954149CCCEA ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2017-05-12_mara_867E1E1D-48E5-47C7-9B39-FD29F137665D][org_gcr_2017-05-12_mara_867E1E1D-48E5-47C7-9B39-FD29F137665D]]
(add-to-list 'load-path"~/src/use-package")
;; org_gcr_2017-05-12_mara_867E1E1D-48E5-47C7-9B39-FD29F137665D ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2017-05-12_mara_3982F502-880C-4DF4-A1DF-07DA3EAA7D78][org_gcr_2017-05-12_mara_3982F502-880C-4DF4-A1DF-07DA3EAA7D78]]
(eval-when-compile
  (require 'use-package))
(use-package diminish)
;; org_gcr_2017-05-12_mara_3982F502-880C-4DF4-A1DF-07DA3EAA7D78 ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_CB6F4AFF-CBA8-43F5-AFCA-422CDE0FE6EA][org_gcr_2018-04-11T09-44-43-05-00_mara_CB6F4AFF-CBA8-43F5-AFCA-422CDE0FE6EA]]
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
;; org_gcr_2018-04-11T09-44-43-05-00_mara_CB6F4AFF-CBA8-43F5-AFCA-422CDE0FE6EA ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_CB81CA6E-E912-41EB-ADB4-A60871EA967B][org_gcr_2018-04-11T09-44-43-05-00_mara_CB81CA6E-E912-41EB-ADB4-A60871EA967B]]
(setq help/el-get-packages nil)
;; org_gcr_2018-04-11T09-44-43-05-00_mara_CB81CA6E-E912-41EB-ADB4-A60871EA967B ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_4D78A420-EF7B-49FE-A888-D764F92E54E6][org_gcr_2018-04-11T09-44-43-05-00_mara_4D78A420-EF7B-49FE-A888-D764F92E54E6]]
(add-to-list
 'el-get-sources
 '(:name emacs-name
         :type http
         :url "http://www.splode.com/~friedman/software/emacs-lisp/src/emacs-name.el"
         :features emacs-name
         :autoloads nil
         :website "http://www.splode.com/"
         :description "emacs acronym expansions"))
(add-to-list 'help/el-get-packages 'emacs-name)
;; org_gcr_2018-04-11T09-44-43-05-00_mara_4D78A420-EF7B-49FE-A888-D764F92E54E6 ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_CB884AE4-47C9-47A3-A322-1817E6E51A6E][org_gcr_2018-04-11T09-44-43-05-00_mara_CB884AE4-47C9-47A3-A322-1817E6E51A6E]]
(add-to-list
 'el-get-sources
 '(:name flame
         :type http
         :url "http://www.splode.com/~friedman/software/emacs-lisp/src/flame.el"
         :features flame
         :autoloads nil
         :website "http://www.splode.com/"
         :description "automatic generation of flamage, as if we needed more"))
(add-to-list 'help/el-get-packages 'flame)
;; org_gcr_2018-04-11T09-44-43-05-00_mara_CB884AE4-47C9-47A3-A322-1817E6E51A6E ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_2A56F5B4-EDF2-4F41-BD96-3B188C0EBBF8][org_gcr_2018-04-11T09-44-43-05-00_mara_2A56F5B4-EDF2-4F41-BD96-3B188C0EBBF8]]
(add-to-list
 'el-get-sources
 '(:name horoscope
         :type http
         :url "http://www.splode.com/~friedman/software/emacs-lisp/src/horoscope.el"
         :features horoscope
         :autoloads t
         :website "http://www.splode.com/"
         :description "generate horoscopes"))
(add-to-list 'help/el-get-packages 'horoscope)
;; org_gcr_2018-04-11T09-44-43-05-00_mara_2A56F5B4-EDF2-4F41-BD96-3B188C0EBBF8 ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_40D6F67F-CB60-4D03-95D1-0A32D460D366][org_gcr_2018-04-11T09-44-43-05-00_mara_40D6F67F-CB60-4D03-95D1-0A32D460D366]]
(add-to-list
 'el-get-sources
 '(:name kibologize
         :type http
         :url "http://www.splode.com/~friedman/software/emacs-lisp/src/kibologize.el"
         :features kibologize
         :autoloads nil
         :website "http://www.splode.com/"
         :description "generate ravings about kibology, in the style of kibo"))
(add-to-list 'help/el-get-packages 'kibologize)
;; org_gcr_2018-04-11T09-44-43-05-00_mara_40D6F67F-CB60-4D03-95D1-0A32D460D366 ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_4BC2EFC6-D51B-4D90-8486-5DB2B8B1E02E][org_gcr_2018-04-11T09-44-43-05-00_mara_4BC2EFC6-D51B-4D90-8486-5DB2B8B1E02E]]
(add-to-list
 'el-get-sources
 '(:name shop
         :type http
         :url "http://www.splode.com/~friedman/software/emacs-lisp/src/shop.el"
         :features shop
         :autoloads nil
         :website "http://www.splode.com/"
         :description "generate random shopping lists"))
(add-to-list 'help/el-get-packages 'shop)
;; org_gcr_2018-04-11T09-44-43-05-00_mara_4BC2EFC6-D51B-4D90-8486-5DB2B8B1E02E ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_BF33EE53-4A53-46A9-A6BF-4F7419A082F9][org_gcr_2018-04-11T09-44-43-05-00_mara_BF33EE53-4A53-46A9-A6BF-4F7419A082F9]]
(add-to-list
 'el-get-sources
 '(:name youwill
         :type http
         :url "http://www.splode.com/~friedman/software/emacs-lisp/src/youwill.el"
         :features youwill
         :autoloads t
         :website "http://www.splode.com/"
         :description "generate meaningless marketing hype"))
(add-to-list 'help/el-get-packages 'youwill)
;; org_gcr_2018-04-11T09-44-43-05-00_mara_BF33EE53-4A53-46A9-A6BF-4F7419A082F9 ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2018-04-11T09-44-43-05-00_mara_2E404438-B898-448B-98AD-B1A5468DEA80][org_gcr_2018-04-11T09-44-43-05-00_mara_2E404438-B898-448B-98AD-B1A5468DEA80]]
(el-get 'sync help/el-get-packages)
;; org_gcr_2018-04-11T09-44-43-05-00_mara_2E404438-B898-448B-98AD-B1A5468DEA80 ends here

;; [[file:~/src/help/Package-Management.org::org_gcr_2017-07-21_mara_E9CF2CB2-D837-41C3-A56A-B2ACFB9E228F][org_gcr_2017-07-21_mara_E9CF2CB2-D837-41C3-A56A-B2ACFB9E228F]]
(use-package auto-compile
  :ensure t
  :config
  (auto-compile-on-load-mode)
  (auto-compile-on-save-mode)
  (setq auto-compile-display-buffer 1))
;; org_gcr_2017-07-21_mara_E9CF2CB2-D837-41C3-A56A-B2ACFB9E228F ends here
