;;; init-programming.el --- Programming Configuration

;;; Commentary:

;; Setups flycheck, a syntax checker, and tree-sitter, a tree-based syntax
;; highlighter.

;;; Code:

(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require-packages '(lsp-mode lsp-ui flycheck))
(add-hook 'prog-mode-hook 'flycheck-mode)

;;(require-packages '(tree-sitter tree-sitter-langs))
;;(add-hook 'prog-mode-hook 'tree-sitter-mode)
;;(add-hook 'prog-mode-hook 'tree-sitter-hl-mode)

(provide 'init-programming)
;;; init-programming.el ends here
