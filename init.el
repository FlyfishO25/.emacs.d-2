;;; init.el --- Load the full configuration

;;; Commentary:

;; Bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

(setq config-dir (expand-file-name "lisp" user-emacs-directory))
(unless (memq config-dir load-path)
  (push config-dir load-path))

(require 'init-config)
(require 'init-proxy)
(require 'init-package-el)
(require 'init-startup)
(require 'init-interface)
(require 'init-completion)
(require 'init-buffer)
(require 'init-programming)
(require 'init-c-c++)

(provide 'init)
;;; init.el ends here
