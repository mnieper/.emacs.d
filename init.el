;;; init.el --- init.el file for Emacs

;; Copyright (C) 2015-2016 Marc Nieper-Wißkirchen

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/site-lisp")

(load "~/.emacs.d/org.el")

;; Asm Mode
(setq asm-comment-char ?#)

;; Paredit
(add-hook 'scheme-mode-hook 'enable-paredit-mode)

;; Outline Mode
(add-hook 'scheme-mode-hook 'outline-minor-mode)

(require 'cc-mode)
(require 'font-lock)

(global-font-lock-mode 1)

(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;; AUCTeX

(setq-default TeX-master nil)

;; scheme-mode

(setq scheme-program-name "chibi-scheme -mchibi.repl -e(repl)")

(add-to-list 'auto-mode-alist '("\\.sld\\'" . scheme-mode))

(put 'when 'scheme-indent-function 'defun)
(put 'unless 'scheme-indent-function 'defun)
(put 'let-cc 'scheme-indent-function 'defun)
(put 'let-values* 'scheme-indent-function 1)
(put 'and-let* 'scheme-indent-function 1)
(put 'parameterize 'scheme-indent-function 1)
(put 'guard 'scheme-indent-function 1)
(put 'for 'scheme-indent-function 1)
(put 'for* 'scheme-indent-function 1)
(put 'syntax-rules 'scheme-indent-function 'defun) ; should be
						; scheme-let-indent

(font-lock-add-keywords 'scheme-mode
			'(("(\\(when\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(unless\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(parameterize\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(guard\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(let-values\\*\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(define-values\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(and-let\\*\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(include\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(define-library\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(define-values\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(define-record-type\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(let-cc\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(for\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(for*\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(case-lambda\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(include\\)\\>" 1 font-lock-keyword-face)))
;; Local Variables:
;; mode: emacs-lisp
;; End:
