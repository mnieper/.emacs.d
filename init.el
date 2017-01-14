;;; init.el --- init.el file for Emacs

;; Copyright (C) 2015-2016 Marc Nieper-Wißkirchen

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/site-lisp")

(load "~/.emacs.d/org.el")
(load "~/.emacs.d/scheme.el")

;; Asm Mode
(setq asm-comment-char ?#)

(require 'cc-mode)
(require 'font-lock)

(global-font-lock-mode 1)

(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;; AUCTeX

(setq-default TeX-master nil)

;; scheme-mode

(put 'when 'scheme-indent-function 'defun)
(put 'unless 'scheme-indent-function 'defun)
(put 'let-cc 'scheme-indent-function 'defun)
(put 'let-values* 'scheme-indent-function 1)
(put 'and-let* 'scheme-indent-function 1)
(put 'parameterize 'scheme-indent-function 1)
(put 'guard 'scheme-indent-function 1)
(put 'for 'scheme-indent-function 1)
(put 'for* 'scheme-indent-function 1)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(match\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(match\\*\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(match\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(match*\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(match\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(ck-macro-transformer\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(scheme-define-syntax\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(scheme-syntax-rules\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(test-assert\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(test-eqv\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(test-group\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(test-equal\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(test-assert\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(test-eqv\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(test-equal\\)\\>" 1 font-lock-keyword-face))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; Local Variables:
;; mode: emacs-lisp
;; End:
