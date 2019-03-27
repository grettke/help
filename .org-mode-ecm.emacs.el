;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-07-21_mara_5170EF1B-2FA1-4BE2-BC63-1443252F0717][org_gcr_2017-07-21_mara_5170EF1B-2FA1-4BE2-BC63-1443252F0717]]
;; -*- no-byte-compile: t; -*-
;; org_gcr_2017-07-21_mara_5170EF1B-2FA1-4BE2-BC63-1443252F0717 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2018-03-16_mara_24B486D3-AF94-44E7-99F6-AEB7A53FD0E6][org_gcr_2018-03-16_mara_24B486D3-AF94-44E7-99F6-AEB7A53FD0E6]]
(defun help/get-timestamp ()
  "Produces a full ISO 8601 format timestamp."
  (interactive)
  (let* ((timestamp-without-timezone (format-time-string "%Y-%m-%dT%T"))
         (timezone-name-in-numeric-form (format-time-string "%z"))
         (timezone-utf-offset
          (concat (substring timezone-name-in-numeric-form 0 3)
                  ":"
                  (substring timezone-name-in-numeric-form 3 5)))
         (timestamp (concat timestamp-without-timezone
                            timezone-utf-offset)))
    timestamp))

(defun help/insert-timestamp ()
  "Inserts a full ISO 8601 format timestamp."
  (interactive)
  (insert (help/get-timestamp)))

(defun help/get-timestamp-no-colons ()
  "Produces a full ISO 8601 format timestamp with colons replaced by hyphens."
  (interactive)
  (let* ((timestamp (help/get-timestamp))
         (timestamp-no-colons (replace-regexp-in-string ":" "-" timestamp)))
    timestamp-no-colons))

(defun help/insert-timestamp-no-colons ()
  "Inserts a full ISO 8601 format timestamp with colons replaced by hyphens."
  (interactive)
  (insert (help/get-timestamp-no-colons)))

(defun help/insert-datestamp ()
  "Produces and inserts a partial ISO 8601 format timestamp."
  (interactive)
  (insert (format-time-string "%F")))
;; org_gcr_2018-03-16_mara_24B486D3-AF94-44E7-99F6-AEB7A53FD0E6 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-07-29_mara_3F459DF6-EA6A-4D48-BB0A-3670FCB25713][org_gcr_2017-07-29_mara_3F459DF6-EA6A-4D48-BB0A-3670FCB25713]]
(setq help/default-gc-cons-threshold gc-cons-threshold)
(defun help/set-gc-cons-threshold (&optional multiplier notify)
  "Set `gc-cons-threshold' either to its default value or a
   `multiplier' thereof."
  (let* ((new-multiplier (or multiplier 1))
         (new-threshold (* help/default-gc-cons-threshold
                           new-multiplier)))
    (setq gc-cons-threshold new-threshold)
    (when notify (message "Setting `gc-cons-threshold' to %s" new-threshold))))
;; org_gcr_2017-07-29_mara_3F459DF6-EA6A-4D48-BB0A-3670FCB25713 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-05-12_mara_E2EECBA9-1ECD-498B-A45B-CE21135CF080][org_gcr_2017-05-12_mara_E2EECBA9-1ECD-498B-A45B-CE21135CF080]]
(setq load-prefer-newer t)
;; org_gcr_2017-05-12_mara_E2EECBA9-1ECD-498B-A45B-CE21135CF080 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2019-01-26T01-36-06-06-00_cosmicality_46A574D5-AE39-402A-9F16-AD72732C95CB][org_gcr_2019-01-26T01-36-06-06-00_cosmicality_46A574D5-AE39-402A-9F16-AD72732C95CB]]
;; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;; org_gcr_2019-01-26T01-36-06-06-00_cosmicality_46A574D5-AE39-402A-9F16-AD72732C95CB ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-05-12_mara_DAFA4781-7A63-44A1-8817-C4AB75F23130][org_gcr_2017-05-12_mara_DAFA4781-7A63-44A1-8817-C4AB75F23130]]
(add-to-list 'load-path "~/src/org-mode/lisp")
;; org_gcr_2017-05-12_mara_DAFA4781-7A63-44A1-8817-C4AB75F23130 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-05-12_mara_018101D7-1448-4844-861B-789F222A9FD4][org_gcr_2017-05-12_mara_018101D7-1448-4844-861B-789F222A9FD4]]
(add-to-list 'load-path "~/src/org-mode/contrib/lisp")
;; org_gcr_2017-05-12_mara_018101D7-1448-4844-861B-789F222A9FD4 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-05-12_mara_050624C5-3BC5-4049-B070-F0A6736EB754][org_gcr_2017-05-12_mara_050624C5-3BC5-4049-B070-F0A6736EB754]]
(setq org-list-allow-alphabetical t)
;; org_gcr_2017-05-12_mara_050624C5-3BC5-4049-B070-F0A6736EB754 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-05-12_mara_7A650900-7023-4EA7-B2DB-CAB39437E9F3][org_gcr_2017-05-12_mara_7A650900-7023-4EA7-B2DB-CAB39437E9F3]]
(setq org-enforce-todo-checkbox-dependencies t)
;; org_gcr_2017-05-12_mara_7A650900-7023-4EA7-B2DB-CAB39437E9F3 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-07-17_mara_755B4DF4-9BEF-4349-94CB-0452730D67F1][org_gcr_2017-07-17_mara_755B4DF4-9BEF-4349-94CB-0452730D67F1]]
(setq org-babel-noweb-wrap-start "⟪")
(setq org-babel-noweb-wrap-end "⟫")
;; org_gcr_2017-07-17_mara_755B4DF4-9BEF-4349-94CB-0452730D67F1 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-05-12_mara_766E7D57-B6F9-4718-AF7E-30EE4A23BDF1][org_gcr_2017-05-12_mara_766E7D57-B6F9-4718-AF7E-30EE4A23BDF1]]
(require 'org)
;; org_gcr_2017-05-12_mara_766E7D57-B6F9-4718-AF7E-30EE4A23BDF1 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-08-02_mara_92B4C3CB-6CE3-4211-8A18-C7BE905BFBC2][org_gcr_2017-08-02_mara_92B4C3CB-6CE3-4211-8A18-C7BE905BFBC2]]
(defun help/double-gc-cons-threshold () "Double `gc-cons-threshold'." (help/set-gc-cons-threshold 2))
;; org_gcr_2017-08-02_mara_92B4C3CB-6CE3-4211-8A18-C7BE905BFBC2 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-08-02_mara_DAC6E558-E49D-4551-8789-2B3FB88F6CE7][org_gcr_2017-08-02_mara_DAC6E558-E49D-4551-8789-2B3FB88F6CE7]]
(add-hook 'org-babel-pre-tangle-hook #'help/double-gc-cons-threshold)
(add-hook 'org-babel-post-tangle-hook #'help/set-gc-cons-threshold)
;; org_gcr_2017-08-02_mara_DAC6E558-E49D-4551-8789-2B3FB88F6CE7 ends here

;; [[file:~/src/help/Org-Mode_Exemple_Complet_Minimal.org::org_gcr_2017-05-12_mara_901541A6-1DB6-4EA2-8688-9C888C41902A][org_gcr_2017-05-12_mara_901541A6-1DB6-4EA2-8688-9C888C41902A]]
(defun help/display-system-info ()
  (interactive)
  (message "<<<ECM Information>>>\nThis buffer file: %s\nAs Of: %s\nOrg-Version: %s\nOrg-Git-Version:%s\nEmacs-Version: %s\nNoweb wrap start and stop delimeters: '%s' and '%s'\norg-babel-default-header-args:\n"
           buffer-file-name
           (help/get-timestamp)
           (org-version)
           (org-git-version)
           (emacs-version)
           org-babel-noweb-wrap-start
           org-babel-noweb-wrap-end)
  (pp org-babel-default-header-args))
(help/display-system-info)
;; org_gcr_2017-05-12_mara_901541A6-1DB6-4EA2-8688-9C888C41902A ends here
