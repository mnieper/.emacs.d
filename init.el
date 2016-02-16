;;; init.el --- init.el file for Emacs

;; Copyright (C) 2015 Marc Nieper-Wißkirchen

(global-font-lock-mode 1)

(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

(setq scheme-program-name "chibi-scheme -mchibi.repl -e(repl)")

(add-to-list 'auto-mode-alist '("\\.sld\\'" . scheme-mode))

(put 'when 'scheme-indent-function 'defun)
(put 'unless 'scheme-indent-function 'defun)
(put 'let-cc 'scheme-indent-function 'defun)
(put 'let-values* 'scheme-indent-function 1)
(put 'and-let* 'scheme-indent-function 1)
(put 'parameterize 'scheme-indent-function 1)
(put 'for 'scheme-indent-function 1)
(put 'for* 'scheme-indent-function 1)

(font-lock-add-keywords 'scheme-mode
			'(("(\\(when\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(unless\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(parameterize\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(let-values\\*\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(and-let\\*\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(include\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(define-library\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(define-record-type\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(let-cc\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(for\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(for*\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(case-lambda\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(include\\)\\>" 1 font-lock-keyword-face)))
			  
;; Local Variables:
;; mode: emacs-lisp
;; End:
