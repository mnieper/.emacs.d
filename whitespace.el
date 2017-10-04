(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
