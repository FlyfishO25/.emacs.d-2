;;; init-package-el.el --- Package.el Configuration

;;; Commentary:

;; Adds the MELPA repository and load some helper functions.

;;; Code:

(require 'package)
(setq melpa '("melpa" . "https://melpa.org/packages/"))
(unless (memq melpa package-archives)
   (push melpa package-archives))

(defun require-package (package)
  "Install PACKAGE unless already installed."
  (unless (package-installed-p package)
    (progn (package-refresh-contents)
           (package-install package))))

(defun require-packages (packages)
  "Install PACKAGES unless already installed."
  (mapc 'require-package packages))

(provide 'init-package-el)
;;; init-package-el.el ends here
