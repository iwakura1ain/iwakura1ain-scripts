;;===================================== PACKAGE CONFIGURATION =================================================

;;c eldoc hooks
;;(autoload 'tal-mode "tal-mode" "A major mode for editing TAL files." t nil)
;;(setq c-eldoc-includes "`pkg-config gtk+-2.0 --cflags` -I./ -I../ ")
;;(load "c-eldoc")

(add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
(add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)

(defvar c-eldoc-cpp-command "/usr/bin/cpp ")
(defvar c-eldoc-cpp-macro-arguments "-dP -w -P")
(defvar c-eldoc-cpp-normal-arguments "-w -P")
(defvar c-eldoc-includes "`pkg-config gtk+-2.0 --cflags` -I./ -I../ ")


;;js rjsx-mode + ac-js2-company for js only
(add-hook 'js2-mode-hook 'ac-js2-mode)
;;rjsx-mode configuration
(add-to-list 'auto-mode-alist '("\\.js?\\'" . rjsx-mode))


;;web-mode hook for html + css + js
(add-hook 'web-mode-hook (company-mode -1))
(add-hook 'web-mode-hook 'auto-complete-mode)


;;tide-mode for typescript
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)



;;format config options 
;;https://github.com/Microsoft/TypeScript/blob/v3.3.1/src/server/protocol.ts#L2858-L2890
(setq tide-format-options '(:insertSpaceAfterFunctionKeywordForAnonymousFunctions t
                             :placeOpenBraceOnNewLineForFunctions nil))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)


;;enable python elpy, pyenv
(elpy-enable)

(setq python-flymake-command '("/home/dks/.local/bin/flake8" "--config=/home/dks/.config/flake8" "-"))
(setq python-check-command "/home/dks/.local/bin/flake8  --config=/home/dks/.config/flake8")
(setq elpy-syntax-check-command python-check-command)


;;web-mode for web development
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.xml?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json?\\'" . web-mode))


;(eval-after-load 'flycheck
;  '(flycheck-add-mode 'html-tidy 'web-mode))


;;yasnippet configuration
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)


;;company backend configuration
;web mode
(add-to-list 'company-backends 'company-web-html)
(add-to-list 'company-backends 'company-web-jade)
(add-to-list 'company-backends 'company-web-slim)


;tabnine AI autocomplete
;(require 'company-tabnine)
;(add-to-list 'company-backends 'company-tabnine)


;auto-complete configuration
;(global-auto-complete-mode nil)


;;dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))


;;dired auto update
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)
(global-auto-revert-mode 1)


;;js2 indent styles
(setq js2-bounce-indent-p t)


;;??
(setq font-lock-maximum-decoration t)

