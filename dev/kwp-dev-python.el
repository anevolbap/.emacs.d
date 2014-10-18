;;; kwp-dev-python --- python configuation for kwp-emacs

;;; Code:

(add-hook 'python-mode-hook 'run-dev-hook)
(require 'python)

;; ----------------------------------------
;; virtualenvwrapper

(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(setq venv-location "~/.virtual_envs/")

(add-hook 'python-mode-hook (lambda ()
                              (hack-local-variables)
                              (venv-workon "default")))

;; ----------------------------------------
;; jedi completion

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; ----------------------------------------
;; add hooks for python mode startup
(add-hook 'python-mode-hook '(lambda () (autopair-mode)))

(provide 'kwp-dev-python)

;;; kwp-dev-python.el ends here
