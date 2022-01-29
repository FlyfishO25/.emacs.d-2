;;; init-buffer.el --- Buffer Configuration

;;; Commentary:

;; Disables backup and auto save, display line numbers, setups
;; rainbow-delimiters and smartparens, and configs indentation.

;;; Code:

(setq backup-inhibited t
      auto-save-default nil)

(global-display-line-numbers-mode)

(setq-default tab-width 4
              indent-tabs-mode nil)
(electric-indent-mode)

(require-package 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode)

(provide 'init-buffer)
;;; init-bufffer.el ends here
