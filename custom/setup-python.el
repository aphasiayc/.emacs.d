(use-package elpy
  :ensure t
  :disabled
  :init
  (with-eval-after-load 'python
    (elpy-enable)
    (elpy-use-ipython)
    (delete 'elpy-module-highlight-indentation elpy-modules)))

(use-package py-autopep8)

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(use-package ein
  :ensure t
  :commands (ein:notebooklist-open))

(provide 'setup-python)
