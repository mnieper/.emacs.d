;;; init.el --- init.el file for Emacs

;; Copyright (C) 2015-2016 Marc Nieper-Wißkirchen

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/site-lisp")

(load "~/.emacs.d/whitespace.el")
(load "~/.emacs.d/org.el")
(load "~/.emacs.d/scheme.el")

;;; Outline mode

;; Add key bindings for Org-style outline cycling
(add-hook 'outline-minor-mode-hook
  (lambda ()
    (define-key outline-minor-mode-map [(control tab)] 'org-cycle)
    (define-key outline-minor-mode-map [(shift tab)] 'org-global-cycle)))

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
(put 'with-continuation-mark 'scheme-indent-function 2)
(put 'call-with-immediate-continuation-mark 'scheme-indent-function 1)

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
			  ("(\\(with-continuation-mark\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(call-with-immediate-continuation-mark\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(case-lambda\\)\\>" 1 font-lock-keyword-face)
			  ("(\\(include\\)\\>" 1 font-lock-keyword-face)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(org-export-allow-bind-keywords t)
 '(safe-local-variable-values
   (quote
    ((eval progn
	   (put
	    (quote annotation)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote with-syntax)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote test-group)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote test-error)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote match)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote set-record-type-printer!)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote $with-standard-syntax)
	    (quote scheme-indent-function)
	    0)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($with-standard-syntax\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(with-syntax\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(expression-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(vector-for-each\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote annotate)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote with-syntax)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote test-group)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote test-error)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote match)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote set-record-type-printer!)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote $with-standard-syntax)
	    (quote scheme-indent-function)
	    0)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($with-standard-syntax\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(with-syntax\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(expression-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(vector-for-each\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval font-lock-add-keywords nil
	   (quote
	    (("\\(define-global!\\)\\>" 1 font-lock-keyword-face)
	     ("\\(define-core!\\)\\>" 1 font-lock-keyword-face)
	     ("\\(define-primitive!\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords nil
	   (quote
	    (("\\(define-global!\\)\\>" 1 font-lock-keyword-face)
	     ("\\(define-primitive!\\)\\>" 1 font-lock-keyword-face))))
     (eval progn
	   (put
	    (quote with-syntax)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote test-group)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote test-error)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote match)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote set-record-type-printer!)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote $with-standard-syntax)
	    (quote scheme-indent-function)
	    0)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($with-standard-syntax\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(with-syntax\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(expression-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(vector-for-each\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote test-group)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote test-error)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote expression-match)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote $with-standard-syntax)
	    (quote scheme-indent-function)
	    0)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($with-standard-syntax\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(expression-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(vector-for-each\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote $with-standard-syntax)
	    (quote scheme-indent-function)
	    0)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($with-standard-syntax\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(vector-for-each\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(vector-for-each\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(vector-for-each\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval font-lock-add-keywords nil
	   (quote
	    (("(\\(test-compile\\)\\>" 1 font-lock-keyword-face))))
     (eval progn
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval font-lock-add-keywords nil
	   (quote
	    (("(\\(test-expand\\)\\>" 1 font-lock-keyword-face))))
     (eval progn
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote syntax-parameterize)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(define-syntax-parameter\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-parameterize\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote meta)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(pair-fold-right\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-call-with-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote global)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-call-with-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote syntax-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords nil
				   (quote
				    (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
				     ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(syntax-match\\)\\>" 1 font-lock-keyword-face)
				     ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-call-with-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords
	    (quote scheme)
	    (quote
	     (("(\\($top-level\\)\\>" 1 font-lock-keyword-face)
	      ("(\\($define-module\\)\\>" 1 font-lock-keyword-face)
	      ("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
	      ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval progn
	   (put
	    (quote syntax-call-with-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $top-level)
	    (quote scheme-indent-function)
	    1)
	   (put
	    (quote $define-module)
	    (quote scheme-indent-function)
	    2)
	   (font-lock-add-keywords
	    (quote scheme)
	    (quote
	     (("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
	      ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(test-expand\\)\\>" 1 font-lock-keyword-face))))
     (eval progn
	   (put
	    (quote syntax-call-with-match)
	    (quote scheme-indent-function)
	    2)
	   (put
	    (quote letrec*)
	    (quote scheme-indent-function)
	    1)
	   (font-lock-add-keywords
	    (quote scheme)
	    (quote
	     (("(\\(call-with-values\\)\\>" 1 font-lock-keyword-face)
	      ("(\\(letrec\\*\\)\\>" 1 font-lock-keyword-face)))))
     (TeX-command-extra-options . "-shell-escape")
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(em-syntax-rules\\)\\>" 1 font-lock-keyword-face))))
     (TeX-command-extra-options . "-shell-escape")
     (TeX-master . "skript")
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(call-with-syntactic-continuation\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(call-with-cps-transform\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(call-with-cps-transform*\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(call-with-syntactic-continuation\\)\\>" 1 font-lock-keyword-face))))
     (TeX-master . t)
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(receive\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
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
