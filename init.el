;;; init.el --- init.el file for Emacs

;; Copyright (C) 2015-2016 Marc Nieper-Wißkirchen

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; Asm Mode
(setq asm-comment-char ?#)

;; Paredit
(add-hook 'scheme-mode-hook 'enable-paredit-mode)

;; Outline Mode
(add-hook 'scheme-mode-hook 'outline-minor-mode)

(require 'cc-mode)
(require 'font-lock)

(require 'ox-latex)
(setq org-latex-listings t)
(setq org-latex-listings-options
      '(("basicstyle" "\\ttfamily")
	("columns" "flexible")
	("literate" "{<<}{<<}1 {>>}{>>}1")))
(add-to-list 'org-latex-packages-alist '("" "listings"))
(add-to-list 'org-latex-packages-alist '("" "color"))
(require 'ox-beamer)
(setq org-src-preserve-indentation t)

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((eval setq org-src-preserve-indentation t)
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(define-syntactic-environment\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(define-auxiliary-syntax\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(define-transformer\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(define-syntactic-environment\\)\\>" 1 font-lock-keyword-face)
	     ("(\\(define-transformer\\)\\>" 1 font-lock-keyword-face))))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(define-syntactic-environment\\)\\>" 1 font-lock-keyword-face)))
	   ("(\\(define-transformer\\)\\>" 1 font-lock-keyword-face))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(define-syntactic-environment\\)\\>" 1 font-lock-keyword-face))))
     (eval put
	   (quote define-syntactic-environment)
	   (quote defun))
     (eval font-lock-add-keywords
	   (quote scheme-mode)
	   (quote
	    (("(\\(receive\\)\\>" 1 font-lock-keyword-face))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Local Variables:
;; mode: emacs-lisp
;; End:
