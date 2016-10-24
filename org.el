;;; org.el --- Settings required for Org-mode

;; Copyright (C) 2015-2016 Marc Nieper-Wißkirchen

(setq geiser-default-implementation 'guile)

(require 'ox-latex)
(require 'ox-beamer)

(setq org-latex-listings t)
(setq org-latex-listings-options
      '(("basicstyle" "\\ttfamily")
	("columns" "flexible")
	("literate" "{<<}{<<}1 {>>}{>>}1")))
(add-to-list 'org-latex-packages-alist '("" "listings"))
(add-to-list 'org-latex-packages-alist '("" "color"))

(setq org-src-preserve-indentation t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((scheme . t)))
(setq org-confirm-babel-evaluate nil)
