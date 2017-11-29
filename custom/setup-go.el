;; (add-to-list 'load-path "~/.emacs.d/loadlocal")
;; (update-file-autoloads "~/.emacs.d/loadlocal/go-mode.el" t "~/.emacs.d/loadlocal/go-mode-load.el")

(setq gofmt-command "goimports")
;; (require 'go-mode-load)

(use-package go-mode
  :init)

;; <F5> shortcut keybinding
(add-hook 'before-save-hook 'gofmt-before-save)

(defun go/run ()
  "Run current buffer"
  (interactive)
  (shell-command (concat "go test -cover")))

(add-hook 'go-mode-hook 'hs-minor-mode)

(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "<f5>") 'go/run)))

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(use-package company-go
  :init
  (add-to-list 'company-backends 'company-go))

(use-package flycheck-gometalinter
  :ensure t
  :config
  (progn
    (flycheck-gometalinter-setup)))
;; skips 'vendor' directories and sets GO15VENDOREXPERIMENT=1
(setq flycheck-gometalinter-vendor t)
;; only show errors
(setq flycheck-gometalinter-errors-only nil)
;; only run fast linters
(setq flycheck-gometalinter-fast t)
;; use in tests files
(setq flycheck-gometalinter-test t)
;; disable linters
(setq flycheck-gometalinter-disable-linters '("gotype" "gocyclo"))
;; Only enable selected linters
(setq flycheck-gometalinter-disable-all nil)
(setq flycheck-gometalinter-enable-linters '("golint"))
;; Set different deadline (default: 5s)
;; (setq flycheck-gometalinter-deadline "10s")

(provide 'setup-go)
