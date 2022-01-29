;;; init-completion.el --- Completion Configuration

;;; Commentary:

;; Setups completion for minibuffer and code.

;;; Code:

(require-packages '(vertico orderless marginalia embark consult company))

(vertico-mode)
(setq completion-styles '(orderless))
(marginalia-mode)
(global-set-key (kbd "C-;") 'embark-act)
(setq prefix-help-command 'embark-prefix-help-command)
(global-set-key (kbd "C-s") 'consult-line)

(provide 'init-completion)
;;; init-completion.el ends here
