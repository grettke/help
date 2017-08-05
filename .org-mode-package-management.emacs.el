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

;; [[file:~/src/help/Package-Management.org::org_gcr_2017-07-21_mara_E9CF2CB2-D837-41C3-A56A-B2ACFB9E228F][org_gcr_2017-07-21_mara_E9CF2CB2-D837-41C3-A56A-B2ACFB9E228F]]
(use-package auto-compile
  :ensure t
  :config
  (auto-compile-on-load-mode)
  (auto-compile-on-save-mode)
  (setq auto-compile-display-buffer 1))
;; org_gcr_2017-07-21_mara_E9CF2CB2-D837-41C3-A56A-B2ACFB9E228F ends here
