(use-package json-mode
  :init
  (add-hook 'json-mode-hook 'flycheck-mode))

(use-package bison-mode
  :init
  (add-hook 'bison-mode-hook 'flycheck-mode))

(use-package yaml-mode
  :init
  (add-hook 'yaml-mode-hook 'flycheck-mode))

(provide 'setup-format)
