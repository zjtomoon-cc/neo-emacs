;;; neoemacs/rime/config.el -*- lexical-binding: t; -*-

(setq rime-user-data-dir             "~/Library/Rime/"                                        ;; rime config input method setting
      rime-librime-root              (concat doom-user-dir "neoemacs/rime-macos/dist")        ;; emacs-rime/blob/master/INSTALLATION.org
      rime-emacs-module-header-root  "/opt/homebrew/opt/emacs-mac/include"              ;; for emacs rime, brew do not needed
)
;; just install emacs first https://rime.im
(use-package! rime
  :defer t
  :config
  (setq rime-show-candidate 'minibuffer)
  :custom
  (rime-emacs-module-header-root emacs-module-root)
  (default-input-method "rime"))
(setq mode-line-mule-info   '((:eval (rime-lighter)))
      rime-inline-ascii-trigger 'shift-l
      rime-disable-predicates '(
         rime-predicate-current-uppercase-letter-p
         rime-predicate-space-after-cc-p))


;; 输入法切换按键
(global-set-key (kbd "C-;"  ) 'toggle-input-method             )
