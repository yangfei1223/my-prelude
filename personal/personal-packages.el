;;my personal packages and configs

(prelude-require-packages '(
							use-package
                            monokai-theme
                            solarized-theme
                            hungry-delete
                            counsel
                            swiper
                            iedit
                            popwin
                            auto-yasnippet
                            2048-game
                            ))

;;load theme
;;(load-theme 'monokai t)    ;;monokai
;;(load-theme 'solarized-dark t)    ;;solarized

;;config for hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)


;;config for swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)


;;config for popwin
(require 'popwin)
(popwin-mode t)


;;yasnippet
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)




(provide 'personal-packages)



;;personal-packages end here
