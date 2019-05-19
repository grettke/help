(defvar bird-point nil)

(defvar bird-scale -5)

(defvar bird-view-overlay nil)

(defun bird-mouse-set-point (event)
  (interactive "e")
  (mouse-set-point event)
  (bird-mode 0)
  (recenter))

(defun bird-kbd-set-point ()
  (interactive)
  (bird-mode 0)
  (recenter))

(defun bird-restore-point ()
  (interactive)
  (goto-char bird-point)
  (bird-mode 0))

(defun bird-view-top-bounce (&optional pos)
  (unless pos
    (setq pos (point-at-bol)))
  (when (pos-visible-in-window-p (point-min))
    (save-excursion
      (goto-char (window-start))
      (forward-line (/ (count-lines (window-start) (window-end)) 2))
      (<= pos (point-at-bol)))))

(defun bird-view-bottom-bounce (&optional pos)
  (unless pos
    (setq pos (point-at-bol)))
  (when (pos-visible-in-window-p (point-max))
    (save-excursion
      (goto-char (window-start))
      (forward-line (/ (count-lines (window-start) (window-end)) 2))
      (>= pos (point-at-bol)))))

(defun bird-mwheel-scroll-up (event)
  (interactive "e")
  (cond ((or (pos-visible-in-window-p (point-min))
             (and (pos-visible-in-window-p (point-max))
                  (bird-view-bottom-bounce)))
         (forward-line -2))
        (t (let ((mouse-wheel-scroll-amount '(2 ((shift) . 1) ((control) . nil))))
             (mwheel-scroll event))))
  (bird-view))

(defun bird-mwheel-scroll-down (event)
  (interactive "e")
  (cond ((or (pos-visible-in-window-p (point-max))
             (and (pos-visible-in-window-p (point-min))
                  (bird-view-top-bounce)))
         (forward-line 2))
        (t (let ((mouse-wheel-scroll-amount '(2 ((shift) . 1) ((control) . nil))))
             (mwheel-scroll event))))
  (bird-view))

(defun bird-cua-scroll-up (&optional arg)
  (interactive "P")
  (cua-scroll-up arg)
  (bird-view)
  (recenter))

(defun bird-cua-scroll-down (&optional arg)
  (interactive "P")
  (cua-scroll-down arg)
  (bird-view)
  (recenter))

(defun bird-next-line (&optional arg)
  (interactive "P")
  (next-line arg)
  (bird-view)
  (recenter))

(defun bird-previous-line (&optional arg)
  (interactive "P")
  (previous-line arg)
  (bird-view)
  (recenter))

(defun bird-view ()
  (if (overlayp bird-view-overlay)
      (let* ((last-point (overlay-get bird-view-overlay 'last-point))
             (offset (* (count-lines (point-at-bol) last-point)
                        (if (< (point-at-bol) last-point) -1 1)))
             (new-start (save-excursion
                          (goto-char (overlay-start bird-view-overlay))
                          (forward-line offset)
                          (point)))
             (new-end (save-excursion
                        (goto-char (overlay-end bird-view-overlay))
                        (forward-line offset)
                        (point))))
        (when (<= new-start (point-min))
          (setq new-end (save-excursion
                          (goto-char (point-min))
                          (forward-line (window-body-height))
                          (point-at-bol))
                new-start (point-min)))
        (when (>= new-end (point-max))
          (setq new-start (save-excursion
                            (goto-char (point-max))
                            (forward-line (* (window-body-height) -1))
                            (point-at-bol))
                new-end (point-max)))
        (setq last-point (save-excursion
                           (goto-char new-start)
                           (forward-line (/ (window-body-height) 2))
                           (point-at-bol)))
        (unless (or (and (<= (overlay-start bird-view-overlay) (point-min)) (< offset 0))
                    (and (>= (overlay-end bird-view-overlay) (point-max)) (> offset 0)))
          (move-overlay bird-view-overlay new-start new-end)
          (overlay-put bird-view-overlay 'last-point last-point)))
    (let ((view-start (save-excursion
                        (forward-line (* (/ (window-body-height) 2) -1))
                        (point-at-bol)))
          (view-end (save-excursion
                      (forward-line (/ (window-body-height) 2))
                      (point-at-bol))))
      (when (<= view-start (point-min))
        (setq view-start (point-min)
              view-end (save-excursion
                         (goto-char (point-min))
                         (forward-line (window-body-height))
                         (point-at-bol))))
      (when (>= view-end (point-max))
        (setq view-start (save-excursion
                           (goto-char (point-max))
                           (forward-line (* (window-body-height) -1))
                           (point-at-bol))
              view-end (point-max)))
      (setq bird-view-overlay (make-overlay view-start view-end))
      (let ((ov-bg (color-darken-name (face-attribute 'default :background) 10)))
        (overlay-put bird-view-overlay 'face `((:background ,ov-bg)))
        (overlay-put bird-view-overlay 'last-point (save-excursion
                                                     (goto-char (overlay-start bird-view-overlay))
                                                     (forward-line (/ (count-lines (overlay-start bird-view-overlay) (overlay-end bird-view-overlay)) 2))
                                                     (point-at-bol)))))))

(define-minor-mode bird-mode
  "Birds view perspective for your code"
  :lighter " Bird"
  :global nil
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "<mouse-1>") 'bird-mouse-set-point)
            (define-key map (kbd "S-<mouse-1>") 'bird-mouse-set-point)
            (define-key map (kbd "<mouse-3>") 'bird-restore-point)
            (define-key map (kbd "S-<mouse-3>") 'bird-restore-point)

            (define-key map (kbd "<SPC>") 'bird-kbd-set-point)
            (define-key map (kbd "<RET>") 'bird-kbd-set-point)
            (define-key map (kbd "<escape>") 'bird-restore-point)
            (define-key map (kbd "q") 'bird-restore-point)
            (define-key map (kbd "C-g") 'bird-restore-point)

            (define-key map (kbd "<mouse-4>") 'bird-mwheel-scroll-up)
            (define-key map (kbd "S-<mouse-4>") 'bird-mwheel-scroll-up)
            (define-key map (kbd "C-<mouse-4>") 'bird-mwheel-scroll-up)
            (define-key map (kbd "<mouse-5>") 'bird-mwheel-scroll-down)
            (define-key map (kbd "S-<mouse-5>") 'bird-mwheel-scroll-down)
            (define-key map (kbd "C-<mouse-5>") 'bird-mwheel-scroll-down)

            (define-key map (kbd "<prior>") 'bird-cua-scroll-down)
            (define-key map (kbd "S-<prior>") 'bird-cua-scroll-down)
            (define-key map (kbd "<next>") 'bird-cua-scroll-up)
            (define-key map (kbd "S-<next>") 'bird-cua-scroll-up)

            (define-key map (kbd "<down>") 'bird-next-line)
            (define-key map (kbd "S-<down>") 'bird-next-line)
            (define-key map (kbd "<up>") 'bird-previous-line)
            (define-key map (kbd "S-<up>") 'bird-previous-line)

            (define-key map (kbd "C-+") 'text-scale-adjust)
            (define-key map (kbd "C--") 'text-scale-adjust)
            map)
  (if (not bird-mode)
      (progn
        (setq bird-scale text-scale-mode-amount)
        (when bird-view-overlay
          (delete-overlay bird-view-overlay)
          (setq bird-view-overlay nil))
        (text-scale-set 0)
        (scroll-lock-mode 0))
    (setq bird-point (point))
    (bird-view)
    (text-scale-set bird-scale)
    (recenter)
    (scroll-lock-mode t)
    ))

(provide 'bird-mode)
