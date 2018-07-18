(use-package autodisass-java-bytecode
  :ensure t
  :defer t)

(use-package google-c-style
  :defer t
  :ensure t
  :commands
  (google-set-c-style))

(use-package meghanada
  :ensure t
  :init
  (add-hook 'java-mode-hook
            (lambda ()
              (google-set-c-style)
              (google-make-newline-indent)
              (meghanada-mode t)
              (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)
            ))

  :config
  (use-package realgud
    :ensure t)
  (setq c-basic-offset 4
        indent-tabs-mode t))
  (setq meghanada-server-remote-debug t)
  (setq meghanada-javac-xlint "-Xlint:all,-processing")
)
