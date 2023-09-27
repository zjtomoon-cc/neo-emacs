;;; module/alpha/config.el -*- lexical-binding: t; -*-

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(defun set-frame-alpha (arg &optional active)
  (interactive "nEnter alpha value (1-100): \np")
  (let* ((elt (assoc 'alpha default-frame-alist))
         (old (frame-parameter nil 'alpha))
         (new (cond ((atom old)     `(,arg ,arg))
                    ((eql 1 active) `(,arg ,(cadr old)))
                    (t              `(,(car old) ,arg)))))
    (if elt (setcdr elt new) (push `(alpha ,@new) default-frame-alist))
    (set-frame-parameter nil 'alpha new)))
(global-set-key (kbd "C-c t") 'set-frame-alpha)

(setq frame-title-format nil)
(set-frame-alpha 99)

(setq kaolin-themes-underline nil)
(defun synchronize-theme ()
  (setq hour (string-to-number (substring (current-time-string) 11 13)))
  (if (member hour (number-sequence 0 0))
    (setq   now '(kaolin-light))
    (setq   now '(kaolin-bubblegum)))
  (if (eq now custom-enabled-themes)
    (print (current-time-string))
    (setq custom-enabled-themes now)
    (if (member hour (number-sequence 0 0))
      (load-theme 'kaolin-light t)
      (load-theme 'kaolin-bubblegum t))))
;; (run-with-timer 0 3600 'synchronize-theme)
(load-theme 'doom-one t)
