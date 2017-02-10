;;
;;    KEY BINDINGS SETTINGS
;;
(prelude-require-packages '(
                            counsel
                            swiper
                            iedit
                            auto-yasnippet
                            ))

;;recent files
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;backward kill word
(global-set-key (kbd "C-w") 'backward-kill-word)

;;find function files
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


;;swiper key bindings
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-c M-x") 'counsel-M-x)
(global-set-key (kbd "C-c C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;;open init file
(global-set-key (kbd "<f2>") 'open-my-init-file)


;;org-agenda binding
(global-set-key (kbd "C-c a") 'org-agenda)

;;indent region or buffer
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;;complete str
(global-set-key (kbd "s-/") 'hippie-expand)

;;dired mode
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;web mode
(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

;;occur dwin
(global-set-key (kbd "M-s o") 'occur-dwim)

;;imenu
(global-set-key (kbd "M-s i") 'counsel-imenu)

;;expand-region select region
(global-set-key (kbd "C-=") 'er/expand-region)

;;iedit multi-line edit
(global-set-key (kbd "M-s e") 'iedit-mode)


;;make C-n and C-p to select company candicates
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))






(provide 'personal-keybindings)
