;;; init-mini.el --- Minimal Emacs Configuration

;;; Commentary:

;; Minimal Emacs configuration without any packages.

;;; Code:

;; Config

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Startup

(setq inhibit-startup-screen t)

(defun display-startup-echo-area-message ()
  "Orverride this function to show init info in the echo area while startup."
  (progn (setq package-count 0
               time (emacs-init-time))
         (when (bound-and-true-p package-alist)
           (setq package-count (length package-activated-list)))
         (if (zerop package-count)
             (setq info (format "Emacs started in %s" time))
           (setq info (format "%d packages loaded in %s" package-count time)))
         (message info)))

(defun font-available-p (font-name)
  (find-font (font-spec :name font-name)))

;; Interface

(setq fira-code '(font . "Fira Code"))
(if (and (not (memq fira-code default-frame-alist))
         (font-available-p "Fira Code"))
    (progn 
      (push fira-code default-frame-alist)
      (set-frame-font "Fira Code-12"))
  (progn
    (message "Fira Code not available")))

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq use-file-dialog nil
      use-dialog-box nil
      window-divider-default-bottom-width 1
      window-divider-default-right-width 1)

(load-theme 'wombat t)

(setq-default mode-line-format " %b (L%l : C%c) [%p / %I] [%m]")

;; Completion

(fido-mode)

;; Buffer

(setq backup-inhibited t
      auto-save-default nil)

(global-display-line-numbers-mode)

(setq-default tab-width 4
              indent-tabs-mode nil)
(electric-indent-mode)

(electric-pair-mode)

(provide 'init-mini)
;;; init-mini.el ends here
