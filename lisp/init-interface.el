;;; init-interface.el --- Interface Configuration

;;; Commentary:

;; Sets font and disables some useless widgets.  Setups modeline, theme, and
;; which-key, a key binding cheat sheat.

(setq fira-code '(font . "Fira Code"))
(unless (memq fira-code default-frame-alist)
  (push fira-code default-frame-alist))

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq use-file-dialog nil
      use-dialog-box nil
      window-divider-default-bottom-width 1
      window-divider-default-right-width 1)

(require-packages '(gruvbox-theme which-key))
(load-theme 'gruvbox-dark-soft t)
(which-key-mode)

;;(setq-default mode-line-format " %b (L%l : C%c) [%p / %I] [%m]")

(provide 'init-interface)
;;; init-interface.el ends here
