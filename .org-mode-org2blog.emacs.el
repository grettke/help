;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:E32697AE-784E-458F-A042-D9B559908721][orgmode:gcr:vela:E32697AE-784E-458F-A042-D9B559908721]]
(load-file "~/src/help/.org-mode-fundamentals.emacs.el")
;; orgmode:gcr:vela:E32697AE-784E-458F-A042-D9B559908721 ends here

;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:804FD197-8B2A-49F5-A4CB-48F6036FBCEC][orgmode:gcr:vela:804FD197-8B2A-49F5-A4CB-48F6036FBCEC]]
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
;; orgmode:gcr:vela:804FD197-8B2A-49F5-A4CB-48F6036FBCEC ends here

;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:FAB22F99-AB0C-4A75-AFEF-9E680A5EE95D][orgmode:gcr:vela:FAB22F99-AB0C-4A75-AFEF-9E680A5EE95D]]
(add-to-list 'load-path"~/src/use-package")
;; orgmode:gcr:vela:FAB22F99-AB0C-4A75-AFEF-9E680A5EE95D ends here

;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:54841CA9-6491-46E8-8F40-4DCF7182CCD7][orgmode:gcr:vela:54841CA9-6491-46E8-8F40-4DCF7182CCD7]]
(eval-when-compile
  (require 'use-package))
(use-package diminish)
;; orgmode:gcr:vela:54841CA9-6491-46E8-8F40-4DCF7182CCD7 ends here

;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:E99598C8-D394-484B-A7FB-333FA2544CB0][orgmode:gcr:vela:E99598C8-D394-484B-A7FB-333FA2544CB0]]
(use-package xml-rpc
  :ensure t)
;; orgmode:gcr:vela:E99598C8-D394-484B-A7FB-333FA2544CB0 ends here

;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:79F63BAD-0CD7-4A97-8A7D-CBAA51BB48E1][orgmode:gcr:vela:79F63BAD-0CD7-4A97-8A7D-CBAA51BB48E1]]
(use-package metaweblog
  :ensure t)
;; orgmode:gcr:vela:79F63BAD-0CD7-4A97-8A7D-CBAA51BB48E1 ends here

;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:DF522DDF-4A71-4D8B-B6F9-9BD6F11EB832][orgmode:gcr:vela:DF522DDF-4A71-4D8B-B6F9-9BD6F11EB832]]
(add-to-list 'load-path "~/src/org2blog")
(require 'org2blog-autoloads)
;; orgmode:gcr:vela:DF522DDF-4A71-4D8B-B6F9-9BD6F11EB832 ends here

;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:9C1EAE6B-9D05-43FB-AC35-7FBFE6CB4F7E][orgmode:gcr:vela:9C1EAE6B-9D05-43FB-AC35-7FBFE6CB4F7E]]
(setq org2blog/wp-track-posts nil)
;; orgmode:gcr:vela:9C1EAE6B-9D05-43FB-AC35-7FBFE6CB4F7E ends here

;; [[file:~/src/help/Org2Blog.org::orgmode:gcr:vela:BCA2FE29-930C-4E66-A662-17FF451D1591][orgmode:gcr:vela:BCA2FE29-930C-4E66-A662-17FF451D1591]]
(setq org2blog/wp-blog-alist
      '(("wisdomandwonder"
         :url "https://www.wisdomandwonder.com/xmlrpc.php"
         :username "admin"
         :default-categories ("Article" "Link")
         :confirm t
         :show 'show)))
;; orgmode:gcr:vela:BCA2FE29-930C-4E66-A662-17FF451D1591 ends here
