;;; scheme.el --- Emacs settings for R7RS

(setq scheme-program-name "chibi-scheme -mchibi.repl -e(repl)")
(add-to-list 'auto-mode-alist '("\\.sld\\'" . scheme-mode))

(add-hook 'scheme-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook 'outline-minor-mode)
(add-hook 'scheme-mode-hook (lambda ()
			      (put 'syntax-rules 'scheme-indent-function 'defun)
			      (setq comment-start-skip
				    ";+[ \t>]*")))

(setq geiser-default-implementation 'guile)
