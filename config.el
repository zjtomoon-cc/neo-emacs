;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq default-frame-alist                        '((top . 88) (left . 450) (height . 32) (width . 122))
      undo-tree-history-directory-alist          '(("." . "~/.emacs.d/undo"))
      user-private-dir                           "~/org/org-roam/emacs/command/doom/config/" ;; load your privacy config
      dired-dwim-target                          t
      neo-window-width                           45
      neo-window-fixed-size                      nil
      frame-resize-pixelwise                     nil
      display-line-numbers-type                  'nil                   ;; show line number 'relative
      evil-want-Y-yank-to-eol                    t
      read-process-output-max                    (* 1024 1024))

(add-to-list 'load-path          user-private-dir                 )
(add-to-list 'load-path          (concat doom-user-dir "neoemacs"))

(setq package-archives '(( "gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"   )
                         ( "org-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"   )
                         ( "melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/" )))
(package-initialize)

;; load package
;; (use-package! init-benchmarking              )    ;; load by local, startup and require times
(use-package! db-work                        )    ;; load by local, privacy config account or pwd here
(use-package! magit               :defer t   )    ;; load by doom, load config defer
(use-package! yaml-mode           :defer t   )    ;; load by doom, format yaml code with correct indentation
(use-package! expand-region       :defer t   )    ;; load by doom, for select region more intelligent
(use-package! restclient-jq       :defer t   )    ;; load by local, http client
(use-package! jq-mode             :defer t   )    ;; load by doom, for parse json object
(use-package! zygospore           :defer t   )    ;; load by doom, toggle window close or open
(use-package! conf-evil-clipboard :defer t   )    ;; load by local, system and evil clipboard
(use-package! string-inflection   :defer t   )    ;; load by local, underscore -> UPCASE -> CamelCase -> lowerCamelCase
(use-package! general             :defer t   )    ;; load by doom, evil package key binding

;; almost key set
(map! :nv "; x"               'amx                                   )
(map! :nve "; g"              'evil-last-non-blank                   )
(map! :nve "; a"              'evil-first-non-blank                  )
(map! :ne "f"                 'evil-avy-goto-char                    )
(map! :ne "C-j"               'evil-scroll-down                      )
(map! :ne "C-k"               'evil-scroll-up                        )
(map! :n "L"                  'evil-join                             )
(map! :ne "SPC f w"           'ace-window                            )
(map! :nve "; e"              'er/expand-region                      )
(map! :ne "M-j"               'drag-stuff-down                       )
(map! :ne "M-k"               'drag-stuff-up                         )
(map! :ne "; w"               'save-buffer                           )
(map! :ne "; b"               'switch-to-buffer                      )
(map! :ne "; d"               'zygospore-toggle-delete-other-windows )
(map! :ve "; d"               'zygospore-toggle-delete-other-windows )
(map! :ne "; q"               'quit-window                           )
(map! :ve "; q"               'quit-window                           )
(map! :ne "; f"               'neotree-find                          )
(map! :ne "; h"               'neotree-toggle                        )
(map! :ne "; o"               'neotree-projectile-action             )
(map! :ne "SPC e r"           'neotree-goto-resources-dir            )
(map! :n "SPC t n"            '+workspace/new                        )
(map! :n "K"                  '+workspace/switch-right               )
(map! :n "J"                  '+workspace/switch-left                )
(global-set-key (kbd "<RET>") 'evil-ret                              )
(global-set-key (kbd "C-."  ) 'next-buffer                           )
(global-set-key (kbd "C-,"  ) 'previous-buffer                       )
(general-def 'insert "C-h"    'delete-backward-char                  )
(keyboard-translate ?\C-h ?\C-?                                      )

;; (load-theme 'kaolin-light t) ;; set theme
(load-theme 'kaolin-bubblegum t) ;; set theme
