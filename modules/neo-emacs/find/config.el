(setq consult-project-function (lambda (_) (locate-dominating-file "." ".git")))

(map! :ne "SPC z"   'consult-find       )
(map! :ne "SPC v c" 'consult-git-grep    )
(map! :ie "C-i"     'consult-yank-pop   )

;; disable short-cut, C-; need chage file here
;; ~/.emacs.d/modules/completion/vertico/config.el

(map! :after dired
      :map dired-mode-map
      :ne "J" nil)
(map! :after dired
      :map dired-mode-map
      :ne "J" #'+workspace/switch-left)
(map! :after dired
      :map dired-mode-map
      :ne "c" nil)
(map! :after dired
      :map dired-mode-map
      :ne "c" #'dired-create-empty-file)
