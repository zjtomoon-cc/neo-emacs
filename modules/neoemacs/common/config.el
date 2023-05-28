;;; neoemacs/common/config.el -*- lexical-binding: t; -*-
(blink-cursor-mode   0             )
(tool-bar-mode       0             )
(menu-bar-mode       0             )
(scroll-bar-mode     0             )
(yas-global-mode     1             )
(set-default 'truncate-lines nil   )
(setq-default treemacs-width 175   )
(setq-default indent-tabs-mode nil )

(custom-set-variables '(x-select-enable-clipboard t))

(after! warnings (add-to-list 'warning-suppress-types '(yasnippet backquote-change tree-sitter org org-loaddefs)))
(setq byte-compile-warnings '(cl-functions)
      display-time-default-load-average nil
      emacs-module-root "/Applications/Emacs.app/Contents/Resources/include")

;;doom welcome
;; (defun doom-dashboard-widget-banner ()
;;   "For neoemacs ascii logo."
;;  (let ((point (point)))
;;    (mapc (lambda (line)
;;            (insert (propertize (+doom-dashboard--center +doom-dashboard--width line)
;;                                'face 'doom-dashboard-banner) " ")
;;            (insert "\n"))
;;   '("|¯¯\\|¯¯|/¯x¯¯\\ /¯¯¯¯¯\\ /¯x¯¯\\|¯¯\\/¯¯¯| /¯¯¯¯|/¯¯¯¯\\ /¯¯¯¯¯/ "
;;     "|     '| (\\__/|| x   || (\\__/|      '|/    !||(\\__/|\\ __¯¯¯\\"
;;     "|__|\\__|\\____\\ \\_____/ \\____\\|._|\\/||/__/¯|_|\\____\\ /______/"
;;     "                                                         v1.3.1      "
;;     "                                                                     "))))
(defun doom-dashboard-widget-footer () "For empty element." (insert ""))
(setq fancy-splash-image (concat doom-private-dir "logo.png"))

;; gc setting
(defmacro k-time (&rest body) `(let ((time (current-time))) ,@body (float-time (time-since time))))
(defvar k-gc-timer (run-with-idle-timer 15 t 'garbage-collect  ))
(remove-hook 'doom-first-buffer-hook #'global-hl-line-mode)

;; about scroll bars setting
(defun my/disable-scroll-bars (frame)
  (modify-frame-parameters frame
                           '((vertical-scroll-bars . nil)
                             (horizontal-scroll-bars . nil))))
(defun popup-handler (app-name window-title x y w h)
  (set-frame-position (selected-frame) (+ x 800) (+ y (+ h 600)))
  (unless (zerop w)
    (set-frame-size (selected-frame) 800 200 t))
)
(add-hook 'ea-popup-hook 'popup-handler)
(add-hook 'after-make-frame-functions 'my/disable-scroll-bars)


(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; lsp face

(custom-set-faces `(lsp-face-highlight-read ((t (:inherit highlight )))))

;; (custom-set-faces `(lsp-face-highlight-textual ((t (:background nil )))))
;; (custom-set-faces `(lsp-face-highlight-read
;;   ((t (:background nil :weight bold :underline nil)))))
;; (custom-set-faces `(lsp-face-highlight-write
;;   ((t (:background nil :weight bold :underline nil)))))
;; (custom-set-faces `(tide-hl-identifier-face
;;   ((t (:background nil)))))
;; (custom-set-faces `(avy-lead-face   ((t (:foreground "#00dfff" :background nil :weight normal)))))
;; (custom-set-faces `(avy-lead-face-0 ((t (:foreground "#2b8db3" :background nil :weight normal)))))
;; (custom-set-faces `(avy-lead-face-1 ((t (:foreground "#104E8B" :background nil :weight normal)))))
;; (custom-set-faces `(avy-lead-face-2 ((t (:foreground "#104E8B" :background nil :weight normal)))))

;; (custom-set-faces `(avy-lead-face   ((t (:foreground "#D21312" :background nil :weight bold)))))
;; (custom-set-faces `(avy-lead-face-0 ((t (:foreground "#F15A59" :background nil :weight bold)))))
;; (custom-set-faces `(avy-lead-face-1 ((t (:foreground "#ED2B2A" :background nil :weight normal)))))
;; (custom-set-faces `(avy-lead-face-2 ((t (:foreground "#FFF6C3" :background nil :weight normal)))))

(custom-set-faces `(line-number
  ((t (:inherit 'default  :slant normal)))))
(custom-set-faces `(line-number-current-line
  ((t (:inherit 'default  :slant normal)))))

;; make emacs auto save buffer
(custom-set-variables
  '(auto-save-visited-mode t))
(setq auto-save-visited-interval 5)
(setq auto-save-visited-predicate
        (lambda () (or (eq major-mode 'java-mode)
                       (eq major-mode 'org-mode))))

;; when close windows close neotree neither
(defun zygospore-toggle-delete-other-windows@around (fn)
  (if (> (count-windows) 1) (neotree-hide))
  (funcall fn))
(advice-add 'zygospore-toggle-delete-other-windows
  :around 'zygospore-toggle-delete-other-windows@around)
