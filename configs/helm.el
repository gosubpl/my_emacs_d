(packages-conditional-install '(recentf helm helm-projectile))

(require 'recentf)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode +1)

(global-set-key (kbd "C-c F") 'helm-projectile-grep)
(key-chord-define-global "gm" 'helm-projectile-grep)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-mini)
(key-chord-define-global "fm" 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(add-hook 'eshell-mode-hook
          #'(lambda ()
              (eshell-cmpl-initialize)
              (define-key eshell-mode-map [remap pcomplete] 'helm-esh-pcomplete)
              (define-key eshell-mode-map (kbd "M-p") 'helm-eshell-history)))