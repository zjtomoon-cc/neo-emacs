;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq rg-exec-path                   "/opt/homebrew/bin/rg"                                   ;; rg            exec path
      fd-exec-path                   "/opt/homebrew/bin/fd"                                   ;; fd            exec path
      dot-exec-path                  "/opt/homebrew/bin/dot"                                  ;; dot           exec path
      pdflatex-exec-path             "/Library/TeX/texbin/pdflatex"                           ;; pdflatex      exec path
      lsp-maven-path                 "~/.m2/settings.xml"                                     ;; maven setting path
      org-directory                  "~/org/"                                                 ;; org           root path
      org-roam-directory             "~/org/org-roam"                                         ;; org roam      root path
      lsp-java-java-path             (concat (getenv "JAVA_HOME") "/bin/java")                ;; java11        exec path
      node-bin-dir                   "~/soft/node-v16.14.0/bin"                               ;; node home
      user-private-dir               "~/org/org-roam/emacs/command/doom/config/"                    ;; user private dir
      display-line-numbers-type      nil                                                      ;; show line number 'relative
      rime-user-data-dir             "~/Library/Rime/"                                        ;; rime config input method setting
      rime-librime-root              (concat doom-user-dir "neoemacs/rime-macos/dist")        ;; emacs-rime/blob/master/INSTALLATION.org
      rime-emacs-module-header-root  "/opt/homebrew/opt/emacs-plus@29/include"              ;; for emacs rime, brew do not needed
      emacs-module-root              "/Applications/Emacs.app/Contents/Resources/include"     ;; emcas exec path
      lsp-java-jdt-download-url      "http://1.117.167.195/download/jdt-language-server-1.7.0-202112161541.tar.gz"
)

;; default core setting
(add-to-list 'load-path          doom-user-dir  )
(add-to-list 'load-path          (concat doom-user-dir "neoemacs"))   ;; default setting
(add-to-list 'load-path          user-private-dir                 )
(add-to-list 'exec-path          pdflatex-exec-path               )
(add-to-list 'exec-path          rg-exec-path                     )
(add-to-list 'exec-path          node-bin-dir                     )
(add-to-list 'exec-path          "/opt/homebrew/bin/d2"           )
(add-to-list 'exec-path          "/Users/van/.m2/go/bin"          )
(setq org-roam-graph-executable  dot-exec-path
      lsp-java-java-path         lsp-java-java-path
      counsel-fzf-cmd            (concat fd-exec-path " --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,target,classes,out,.local,class} -c never --hidden --follow %s .")
      lsp-java-format-settings-url               (expand-file-name (concat doom-user-dir "neoemacs/eclipse-codestyle.xml"))
      lsp-java-configuration-maven-user-settings (expand-file-name lsp-maven-path                            ))

(setq default-frame-alist                        '((top . 40) (left . 250) (height . 39) (width . 100))
      undo-tree-history-directory-alist          '(("." . "~/.emacs.d/undo"))
      dired-dwim-target t
      frame-title-format                         " "
      auto-save-visited-mode                     nil
      auto-save-default                          nil
      neo-window-width                           35
      ;; neo-theme (if (display-graphic-p) 'icons 'arrow)
      treemacs--width-is-locked                  nil
      display-time-default-load-average          nil
      doom-modeline-height                       10
      doom-modeline-bar-width                    2
      doom-modeline-modal-icon                   nil
      doom-modeline-icon                         nil
      doom-modeline-major-mode-icon              nil
      doom-modeline-buffer-encoding              t
      doom-modeline-lsp                          nil
      doom-modeline-modal                        t
      doom-modeline-vcs-max-length               200
      doom-modeline-buffer-file-name-style       'buffer-name
      frame-resize-pixelwise                     nil
      evil-emacs-state-tag                       "E"
      evil-insert-state-tag                      "INSERT"
      evil-motion-state-tag                      "MOTION"
      evil-normal-state-tag                      "NORMAL"
      evil-operator-state-tag                    "OPERATOR"
      evil-visual-state-tag                      "VISUAL"
      evil-replace-state-tag                     "REPLACE"
      evil-want-Y-yank-to-eol                    t
      doom-modeline-continuous-word-count-modes '(java-mode)
      doom-modeline-enable-word-count            4
      company-box-doc-enable                     nil
      company-tooltip-limit                      7
      company-tooltip-offset-display             'scrollbar
      company-frontends                          '(company-pseudo-tooltip-frontend company-echo-metadata-frontend)
      company-format-margin-function             'company-text-icons-margin
      company-text-icons-format                  " %s "
      company-text-icons-add-background          t
      company-text-face-extra-attributes         '(:weight bold :slant italic)
      company-dabbrev-ignore-case                nil
      company-tooltip-flip-when-above            t
      company-show-quick-access                  nil
      vterm-kill-buffer-on-exit                  t
      neo-window-fixed-size                      nil
      plantuml-jar-path                          ( expand-file-name (concat doom-user-dir "neoemacs/plantuml.jar"))
      plantuml-default-exec-mode                 'jar
      lombok-jar-path                            ( expand-file-name (concat doom-user-dir "neoemacs/lombok.jar"))
      org-confirm-babel-evaluate                 nil
      org-roam-v2-ack                            t
      org-agenda-files                           (list (concat org-roam-directory "/agenda/GTD.org"))
      org-image-actual-width                     '(300)
      org-id-track-globally                      t ;; M-x org-id-update-id-locations , org-roam-update-org-id-locations
      org-html-preamble-format                   '(("en" "<div id=\"preamble\" class=\"status\"><p class=\"author\">Made with ✍ by %a</p></div>"))
      org-roam-capture-templates                 '(("d" "default" plain "%?"
                                  :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+subtitle: \n#+author: vanniuner\n#+SETUPFILE: ~/.doom.d/org-head.setup")
                                  :unnarrowed t))
      org-html-table-caption-above               nil
      read-process-output-max                    (* 1024 1024)           ;; 1mb
      ejc-result-table-impl                      'ejc-result-mode
      gts-translate-list                         '(("en" "zh")))

;; (display-time)
(setq package-archives '(( "gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"   )
                         ( "org-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"   )
                         ( "melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/" )))
(package-initialize)
(after! warnings (add-to-list 'warning-suppress-types '(yasnippet backquote-change tree-sitter org org-loaddefs)))
(setq byte-compile-warnings '(cl-functions))

;; almost package
;; (require      'disable-mouse      )
(use-package! go-translate                )
(use-package! init-font                   )
(use-package! init-benchmarking           )
(use-package! db-work                     )
(use-package! magit               :defer t)
(use-package! yaml-mode           :defer t)
(use-package! expand-region       :defer t)
(use-package! restclient-jq       :defer t)
(use-package! jq-mode             :defer t)
(use-package! zygospore           :defer t)
(use-package! conf-evil-clipboard :defer t)
(use-package! string-inflection   :defer t)
(use-package! general             :defer t)
(use-package! dotsk               :defer t)
(use-package! ob-sql-mode         :defer t)
(use-package! ejc-sql             :defer t
  :commands ejc-sql-mode ejc-connect      )

;; (add-hook 'java-mode-hook 'lsp)
;; (add-hook 'java-mode-hook 'tree-sitter-hl-mode)
;; (add-hook 'java-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'java-mode-hook 'vimish-fold-mode)
(add-hook 'java-mode-hook
       (setq
        lsp-idle-delay                             0.1
        lsp-eldoc-enable-hover                     t
        lsp-java-format-comments-enabled           nil
        lsp-java-save-actions-organize-imports     nil
        lsp-java-autobuild-enabled                 t
        lsp-inhibit-message                        t
        lsp-java-completion-guess-method-arguments t
        lsp-completion-show-kind                   nil
        lsp-completion-sort-initial-results        t
        lsp-completion-show-detail                 nil
        lsp-completion-enable-additional-text-edit t
        lsp-java-progress-reports-enabled          nil
        lsp-completion-show-label-description      nil
        lsp-modeline-diagnostics-enable            t
        lsp-modeline-diagnostics-scope             :workspace
        lsp-modeline-code-actions-enable           nil
        lsp-enable-file-watchers                   nil
        lsp-lens-enable                            t))
(setq-default indent-tabs-mode nil)

(set-company-backend! 'prog-mode
  '(:separate company-capf company-yasnippet company-dabbrev company-ispell))

;; almost key set
(map! :nve "; g"    'evil-last-non-blank                       )
(map! :nve "; a"    'evil-first-non-blank                      )
(map! :ne "m"       'evil-avy-goto-char                        )
(map! :ne "f"       'evil-avy-goto-char                        )
(map! :ne "SPC l"   'evil-window-right                         )
(map! :ne "C-j"     'evil-scroll-down                          )
(map! :ne "C-k"     'evil-scroll-up                            )
(map! :ne "C-n"     'evil-scroll-down                          )
(map! :ne "SPC z"   'counsel-fzf                               )
(map! :ne "SPC v v" 'projectile-run-vterm                      )
(map! :ne "SPC v p" 'vterm-send-stop                           )
(map! :ne "SPC v s" 'vterm-send-start                          )
(map! :ne "SPC v c" 'counsel-rg                                )
(map! :ne "SPC v r" 'lsp-rename                                )
(map! :ne "SPC v l" 'lsp-java-assign-statement-to-local        )
(map! :ne "M-j"     'drag-stuff-down                           )
(map! :ne "M-k"     'drag-stuff-up                             )
(map! :ne "; w"     'save-buffer                               )
(map! :ne "; b"     'switch-to-buffer                          )
(map! :ne "; d"     'zygospore-toggle-delete-other-windows     )
(map! :ve "; d"     'zygospore-toggle-delete-other-windows     )
(map! :ne "; f"     'neotree-find                              )
(map! :ne "; h"     'neotree-toggle                            )
(map! :ne "; i"     'lsp-java-organize-imports                 )
(map! :ne "; o"     'neotree-projectile-action                 )
(map! :ne "SPC e r" 'neotree-goto-resources-dir                )
(map! :ne "; s"     'lsp-workspace-restart                     )
(map! :ne "; l"     'org-toggle-narrow-to-subtree              )
(map! :ne "; j"     '+workspace/swap-left                      )
(map! :ne "; ;"     'hide-mode-line-mode                       )
(map! :ne "SPC e c" 'ejc-connect-ivy                           )
(map! :n "SPC e p"  'goto-result-detail-prev                   )
(map! :n "SPC e n"  'goto-result-detail-next                   )
(map! :n "SPC e e"  'goto-result-detail                        )
(map! :ne "; t"     'gts-do-translate                          )
(map! :ve "; t"     'gts-do-translate                          )
(map! :ne ", m"     'lsp-java-add-unimplemented-methods        )
(map! :nve ", f r"  'lsp-format-region                         )
(map! :ne ", f b"   'lsp-format-buffer                         )
(map! :ne "; q"     'quit-window                               )
(map! :ve "; q"     'quit-window                               )
(map! :nve "; e"    'er/expand-region                          )
(map! :nv "; x"     'amx                                       )
(map! :nv "s-1"     '+workspace/switch-to-0                    )
(map! :nv "s-2"     '+workspace/switch-to-1                    )
(map! :nv "s-3"     '+workspace/switch-to-2                    )
(map! :nv "s-4"     '+workspace/switch-to-3                    )
(map! :nv "s-5"     '+workspace/switch-to-5                    )
(map! :n "K"        '+workspace/switch-left                    )
(map! :n "L"        '+workspace/switch-right                   )
(map! :ne "; r"     'string-inflection-java-style-cycle        )
(map! :nve "; c"    'comment-line                              )
(map! :n "C-."      'next-buffer                               )
(map! :ne "SPC c u" 'lsp-java-open-super-implementation        )
(map! :ne "SPC c l" 'lsp-java-assign-statement-to-local        )
(map! :ne "; v"     'vc-refresh-state                          )
(map! :ie "C-i"     'counsel-yank-pop                          )
(map! :n "SPC t n"  '+workspace/new                            )
(map! :n "SPC r r"  'quickrun-shell                            )
(map! :ne "SPC i n" 'marco-java-new                            )
(map! :ne "SPC i t" 'marco-insert-java-return                  )
(map! :ne "SPC d d" 'kill-other-buffer                         )
(map! :ne "SPC d q" 'ejc-table-queryvis                        )

;; 断词设置，设置以后断词更长
(global-set-key (kbd "<RET>") 'evil-ret                        )
(global-set-key (kbd "C-;"  ) 'toggle-input-method             )
(global-set-key (kbd "C-."  ) 'next-buffer                     )
(global-set-key (kbd "C-,"  ) 'previous-buffer                 )
(general-def 'insert "C-h"    'delete-backward-char            )
(general-def 'insert vterm-mode-map "C-h" 'vterm-send-C-h      )
(keyboard-translate ?\C-h ?\C-?)

;; use project root
(setq counsel-fzf-dir-function
(lambda ()
  (let ((d (locate-dominating-file default-directory ".git")))
    (if (or (null d)
      (equal (expand-file-name d)
        (expand-file-name "~/")))
  default-directory d))))

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
         ;; rime-predicate-after-alphabet-char-p
         rime-predicate-current-uppercase-letter-p
         ;; rime-predicate-space-after-ascii-p
         rime-predicate-space-after-cc-p)
      gts-default-translator   (gts-translator
       :picker (gts-prompt-picker)
       :engines (list (gts-bing-engine))
       :render (gts-buffer-render)))


;; translate
;; (defun go-translate ()
;;   (interactive)
;;   (gts-translate (gts-translator
;;                   :picker  (gts-noprompt-picker :texter (gts-current-or-selection-texter) :single t)
;;                   :engines (gts-google-rpc-engine)
;;                   :render  (gts-buffer-render))))


(defun k/sql-mode-hook () (ejc-sql-mode t))
(add-hook 'sql-mode-hook 'k/sql-mode-hook)
;; ejc-connect ivy
(defun ejc-connect-ivy ()
  (interactive)
  (let* ((conn-list        (mapcar 'car ejc-connections)            )
         (conn-statistics  (ejc-load-conn-statistics)               )
         (conn-list-sorted (-sort (lambda (c1 c2)
          (> (or (lax-plist-get conn-statistics c1) 0)
             (or (lax-plist-get conn-statistics c2) 0))) conn-list) ))
    (ivy-read "DataBase connection name: " conn-list-sorted
              :keymap    ivy-minibuffer-map
              :preselect (car conn-list-sorted)
              :action    #'ejc-connect)))

(add-hook 'ejc-sql-connected-hook
          (lambda ()
            (ejc-set-column-width-limit 150)
            (ejc-set-fetch-size 120)
            (ejc-set-use-unicode t)))

;; git diff line in modeline
(defadvice vc-git-mode-line-string (after plus-minus (file) compile activate)
  "Show the information of git diff on modeline."
(setq ad-return-value
(concat (propertize ad-return-value 'face '(:foreground "green" :weight light))
        " "
        (let ((plus-minus (vc-git--run-command-string file "diff" "--numstat" "--")))
                (if (and plus-minus
                (string-match "^\\([0-9]+\\)\t\\([0-9]+\\)\t" plus-minus)) ""
                (propertize "" 'face '(:foreground "green3" :weight bold)))) "")))

;; Define a function to connect to a server
;; (defun some-serv ()
;;   (lambda ()
;;   (interactive)
;;   (erc :server "irc.libera.chat"
;;        :port   "6697")))

(use-package! websocket
    :defer t
    :after org-roam)
(use-package! org-roam-ui
    :after org-roam ;; or :after org
    :defer t
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start t))
(add-hook 'org-mode-hook '+org/close-all-folds)

;; install mactex https://www.tug.org/mactex/
(with-eval-after-load 'ox-latex
 ;; http://orgmode.org/worg/org-faq.html#using-xelatex-for-pdf-export
 ;; latexmk runs pdflatex/xelatex (whatever is specified) multiple times
 ;; automatically to resolve the cross-references.
 (setq org-latex-pdf-process '("latexmk -xelatex -quiet -shell-escape -f %f"))
 (add-to-list 'org-latex-classes
               '("elegantpaper"
                 "\\documentclass[lang=cn]{elegantpaper}
                 [NO-DEFAULT-PACKAGES]
                 [PACKAGES]
                 [EXTRA]"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (setq org-latex-src-block-backend 'listings)
  (add-to-list 'org-latex-packages-alist '("" "minted"))
  (add-to-list 'org-latex-packages-alist '("" "listings"))
  (add-to-list 'org-latex-packages-alist '("" "color")))

(setenv "XMLLINT_INDENT" "    ")
(use-package xml-format
  :demand t
  :defer t
  :after nxml-mode)

(use-package recentf
  ;; :ensure nil
  ;; lazy load recentf
  :defer t
  :init
  (add-hook 'after-init-hook #'recentf-mode)
  (setq recentf-max-saved-items 200)
  :config
  (add-to-list 'recentf-exclude (expand-file-name package-user-dir))
  (add-to-list 'recentf-exclude "\\.emacs\\.d/\\.local/etc/workspaces/autosave"))

(use-package bookmark+
  :defer t
  :after bookmark
  :init (setq-default bookmark-save-flag 1)
        (setq bookmark-default-file (concat org-roam-directory "/emacs/command/doom/config/bookmark")))

;; html image base64
(defun org-html--format-image-old (source attributes info)
  (org-html-close-tag
   "img"
   (org-html--make-attribute-string
    (org-combine-plists
     (list :src source
           :alt (if (string-match-p
                     (concat "^" org-preview-latex-image-directory) source)
                    (org-html-encode-plain-text
                     (org-find-text-property-in-string 'org-latex-src source))
                  (file-name-nondirectory source)))
     (if (string= "svg" (file-name-extension source))
         (org-combine-plists '(:class "org-svg") attributes '(:fallback nil))
       attributes)))
   info))
(defun org-org-html--format-image (source attributes info)
  ;; doc
  (if (string-match "http" source)
    (org-html--format-image-old source attributes info)
    (format "<img src=\"data:image/%s+xml;base64,%s\"%s />"
      (or (file-name-extension source) "")
      (base64-encode-string
       (with-temp-buffer
        (insert-file-contents-literally source)
        (buffer-string)))
      (file-name-nondirectory source))))
(advice-add #'org-html--format-image :override #'org-org-html--format-image)

(use-package! awesome-tray
  :config
  (setq awesome-tray-git-show-status t
        awesome-tray-date-format "%H:%M"
        awesome-tray-file-path-truncate-dirname-levels 10
        awesome-tray-file-path-full-dirname-levels 10))
(defun my-awesome-tray-nil-info () (concat "" ""))
(defun projectile-project-root-single ()
    (if (> (length (delete "" (split-string (projectile-project-root) "/" ))) 3)
        (string-join (nthcdr 3 (delete "" (split-string (projectile-project-root) "/" ))) "/")
            (elt (delete "" (split-string (projectile-project-root) "/" ))
            (- (length (delete "" (split-string (projectile-project-root) "/" ))) 1))))
(setq awesome-tray-module-alist
  '(
    ("file-path" . (projectile-project-root-single awesome-tray-module-file-path-face))
    ("date" . (awesome-tray-module-date-info awesome-tray-module-date-face))
    ("battery"   . (my-awesome-tray-nil-info awesome-tray-module-battery-face))
    ("mode-name" . (my-awesome-tray-nil-info awesome-tray-module-battery-face))
    ("location"  . (my-awesome-tray-nil-info awesome-tray-module-battery-face))
    ("belong"    . (my-awesome-tray-nil-info awesome-tray-module-battery-face))))
(awesome-tray-enable)

(use-package org-appear
  :defer t
  :hook (org-mode . org-appear-mode)
  :config
  (setq org-appear-autolinks t)
  (setq org-appear-autosubmarkers t)
  (setq org-appear-autoentities t)
  (setq org-appear-autokeywords t)
  (setq org-appear-inside-latex t))

(use-package shrface
  :defer t
  :config
  (shrface-basic)
  (shrface-trial)
  (shrface-default-keybindings) ; setup default keybindings
  (setq shrface-href-versatile t))

(use-package eww
  :defer t
  :init
  (add-hook 'eww-after-render-hook #'shrface-mode)
  :config
  (require 'shrface))

(setq frame-title-format '("%b"))

;; insert one space char between chinese and english automatically. I like 中文 more.
(add-to-list 'load-path "/Users/van/.doom.d/neoemacs/wraplish")
(require 'wraplish)
(dolist (hook (list 'markdown-mode-hook))
  (add-hook hook #'(lambda () (wraplish-mode 1))))

(yas-global-mode 1)
