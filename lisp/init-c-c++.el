;;; init-c-c++.el --- C/C++ Configuration

;;; Commentary:

;; Sets indent style.

;;; Code:

(setq c-default-style "bsd"
      c-basic-offset 4)

(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

(provide 'init-c-c++)
;;; init-c-c++.el ends here
