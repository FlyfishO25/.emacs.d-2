;;; init-startup.el --- Startup Configuration

;;; Commentary:

;; Disable startup screen and show init info in the echo area.

;;; Code:

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

(provide 'init-startup)
;;; init-startup.el ends here
