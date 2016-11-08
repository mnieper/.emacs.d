;;; org.el --- Settings required for Org-mode

;; Copyright (C) 2015-2016 Marc Nieper-Wißkirchen

(setq geiser-default-implementation 'guile)

(require 'ox-latex)
(require 'ox-beamer)

(add-to-list 'org-latex-packages-alist '("" "minted"))

(setq org-latex-listings t)
(setq org-latex-listings-options
      '(("basicstyle" "\\ttfamily")
	("columns" "fixed")
	("gobble" "2")
	("literate" "{<<}{<<}1 {>>}{>>}1")))
(add-to-list 'org-latex-packages-alist '("" "listings"))
(add-to-list 'org-latex-packages-alist '("" "color"))

(setq org-latex-listings 'minted)

(setq org-src-preserve-indentation t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (scheme . t)))
(setq org-confirm-babel-evaluate nil)

(setq org-latex-pdf-process
      '("pdflatex --shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex --shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex --shell-escape -interaction nonstopmode -output-directory %o %f"))

