(menu-bar-mode 1)
(tool-bar-mode 1)
(global-linum-mode 1)
(desktop-save-mode 1)
(electric-pair-mode 1)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;; use space to indent by default
;; (setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

(use-package flycheck
         :ensure t
         :init
         (global-flycheck-mode t))

;; theme
(use-package material-theme
  :init
  (load-theme 'material t))

;; company
(use-package company
  :init
  (global-company-mode 1)
  (delete 'company-semantic company-backends))

;; Package projejctile
(use-package projectile
  :init
  (projectile-global-mode)
  (setq projectile-enable-caching t))

;; Package zygospore
(use-package zygospore
  :bind (("C-x 1" . zygospore-toggle-delete-other-windows)
         ("RET" .   newline-and-indent)))

  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)
(windmove-default-keybindings)

(provide 'setup-general)
