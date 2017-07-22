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
