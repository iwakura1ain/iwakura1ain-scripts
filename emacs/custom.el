(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-global-modes nil)
 '(company-idle-delay 0)
 '(company-require-match nil)
 '(company-tabnine-always-trigger nil)
 '(company-tabnine-auto-balance nil)
 '(company-tabnine-auto-fallback t)
 '(company-tabnine-wait 0.35)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-flip-when-above t)
 '(company-tooltip-idle-delay 0.1)
 '(compilation-scroll-output 'first-error)
 '(confirm-kill-emacs 'y-or-n-p)
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" default))
 '(dashboard-item-generators
   '((recents . dashboard-insert-recents)
     (bookmarks . dashboard-insert-bookmarks)
     (projects . dashboard-insert-projects)
     (agenda . dashboard-insert-agenda)
     (registers . dashboard-insert-registers)))
 '(dashboard-item-shortcuts
   '((recents . "r")
     (bookmarks . "m")
     (projects . "p")
     (agenda . "a")
     (registers . "e")))
 '(dashboard-items '((recents . 8) (bookmarks . 5) (agenda . 5)))
 '(dashboard-set-file-icons t)
 '(dashboard-set-navigator t)
 '(dashboard-week-agenda nil)
 '(dired-always-read-filesystem t)
 '(dired-auto-revert-buffer t)
 '(dired-backup-overwrite t)
 '(eldoc-echo-area-use-multiline-p t)
 '(eldoc-idle-delay 0.0)
 '(eldoc-minor-mode-string "el")
 '(elpy-autodoc-delay 0.1)
 '(elpy-eldoc-show-current-function t)
 '(elpy-get-info-from-shell t)
 '(elpy-modules
   '(elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-django elpy-module-autodoc elpy-module-sane-defaults))
 '(elpy-syntax-check-command
   "/home/dks/.local/bin/flake8  --config=/home/dks/.config/flake8")
 '(flycheck-flake8rc "/home/dks/.config/flake8")
 '(flymake-no-changes-timeout 0.1)
 '(flymake-start-on-save-buffer t)
 '(fringe-mode nil nil (fringe))
 '(global-flycheck-mode t)
 '(gud-tooltip-mode t)
 '(ibuffer-use-other-window t)
 '(ido-default-buffer-method 'selected-window)
 '(indicate-buffer-boundaries
   '((t . right)
     (top . left)
     (bottom . left)
     (up . left)
     (down . left)))
 '(js2-idle-timer-delay 0.01)
 '(menu-bar-mode nil)
 '(my-contextual-help-mode t)
 '(next-line-add-newlines t)
 '(package-selected-packages
   '(tide company company-c-headers dashboard company-web dired-sidebar ac-html ac-html-csswatcher ac-js2 auto-complete django-snippets el-autoyas js-react-redux-yasnippets yasnippet-snippets flymake-eslint indium rjsx-mode lua-mode cython-mode flycheck-pycheckers jedi pyenv-mode elpy c-eldoc hl-prog-extra hl-block-mode emoji-fontset solaire-mode highlight-function-calls highlight-operators highlight-numbers yaml-mode web-mode lsp-ui lsp-mode json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters counsel swiper ivy exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number nlinum move-text magit projectile imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring anzu ag ace-window))
 '(prelude-guru nil)
 '(prelude-whitespace nil)
 '(python-check-command
   "/home/dks/.local/bin/flake8 --config=/home/dks/.config/flake8")
 '(python-indent-guess-indent-offset-verbose nil)
 '(python-skeleton-autoinsert t)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100000)
 '(scroll-margin 10)
 '(scroll-preserve-screen-position 1)
 '(show-smartparens-global-mode t)
 '(smartparens-global-mode t)
 '(sp-autodelete-closing-pair t)
 '(sp-autodelete-pair nil)
 '(tool-bar-mode nil)
 '(tool-bar-style 'text-image-horiz)
 '(tooltip-delay 0.1)
 '(web-mode-auto-close-style 2)
 '(web-mode-block-padding 0)
 '(web-mode-enable-auto-closing t)
 '(web-mode-enable-auto-expanding t)
 '(web-mode-enable-auto-opening nil)
 '(web-mode-enable-auto-pairing nil)
 '(web-mode-enable-block-face t)
 '(web-mode-enable-comment-interpolation t)
 '(web-mode-enable-current-element-highlight t)
 '(web-mode-enable-element-content-fontification t)
 '(web-mode-enable-element-tag-fontification t)
 '(web-mode-enable-engine-detection t)
 '(web-mode-enable-part-face t)
 '(web-mode-enable-sql-detection t)
 '(which-key-idle-delay 10.0)
 '(which-key-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-directory ((t (:foreground "turquoise2" :underline t :weight bold))))
 '(dired-header ((t (:foreground "tomato" :overline t :weight bold :height 1.2))))
 '(eldoc-highlight-function-argument ((t (:inherit bold))))
 '(error ((t (:foreground "red" :slant italic :weight ultra-bold))))
 '(flycheck-error ((t (:underline (:color "orange red" :style wave)))))
 '(flycheck-error-list-error-message ((t (:foreground "tomato"))))
 '(flycheck-error-list-highlight ((t (:foreground "tomato" :weight bold))))
 '(flycheck-warning ((t (:underline (:color "gold" :style wave)))))
 '(font-lock-builtin-face ((t (:foreground "indian red" :weight bold))))
 '(font-lock-comment-delimiter-face ((t (:foreground "green" :strike-through nil :weight semi-bold :height 1.3))))
 '(font-lock-comment-face ((t (:foreground "green" :slant oblique :height 0.9))))
 '(font-lock-constant-face ((t (:foreground "hot pink"))))
 '(font-lock-doc-face ((t (:foreground "lime green"))))
 '(font-lock-function-name-face ((t (:foreground "turquoise" :overline t :weight ultra-bold :height 1.4))))
 '(font-lock-keyword-face ((t (:foreground "turquoise3" :weight bold :height 1.1))))
 '(font-lock-preprocessor-face ((t (:foreground "deep sky blue" :slant italic))))
 '(font-lock-string-face ((t (:foreground "lime green" :slant italic))))
 '(font-lock-type-face ((t (:foreground "turquoise"))))
 '(font-lock-variable-name-face ((t (:foreground "salmon" :height 1.1))))
 '(font-lock-warning-face ((t (:foreground "gold" :weight bold))))
 '(highlight-function-calls-face ((t (:underline "foreground color"))))
 '(highlight-numbers-number ((t (:foreground "dark orange" :height 1.2))))
 '(highlight-operators-face ((t (:inherit nil :extend nil :stipple nil :foreground "tomato3" :box nil :slant normal :weight semi-bold :height 1.4))))
 '(js2-error ((t (:underline (:color "red" :style wave) :weight bold))))
 '(js2-external-variable ((t (:foreground "dark orange"))))
 '(js2-function-param ((t (:foreground "rosy brown"))))
 '(js2-warning ((t (:underline (:color "red" :style wave)))))
 '(sp-show-pair-match-face ((t (:background "gray29" :weight bold))))
 '(web-mode-css-selector-face ((t (:foreground "hot pink" :overline nil))))
 '(web-mode-current-element-highlight-face ((t (:foreground "cyan" :overline nil))))
 '(web-mode-doctype-face ((t (:foreground "salmon" :overline t :slant normal :weight bold :height 1.2))))
 '(web-mode-function-call-face ((t (:inherit nil :weight bold :height 1.0))))
 '(web-mode-html-attr-name-face ((t (:foreground "salmon"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "indian red" :weight ultra-bold :height 0.9 :width extra-expanded))))
 '(web-mode-html-tag-face ((t (:foreground "turquoise3" :weight bold :height 1.2))))
 '(web-mode-script-face ((t (:inherit nil))))
 '(web-mode-style-face ((t (:inherit nil))))
 '(web-mode-underline-face ((t (:underline nil :weight normal))))
 '(yas-field-highlight-face ((t (:background "gray34")))))


;;===================================== CUSTOM HOOKS  =================================================
(add-hook 'global-mode-hook 'global-whitespace-mode nil)
(add-hook 'prog-mode-hook 'highlight-numbers-mode)
(add-hook 'prog-mode-hook 'highlight-operators-mode)
(add-hook 'prog-mode-hook 'highlight-function-calls-mode)

(add-hook 'prog-mode-hook 'eldoc-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)

(add-hook 'prog-mode-hook 'company-mode)
(provide 'company)


;;===================================== PACKAGE CONFIGURATION =================================================
(load "/home/dks/.emacs.d/personal/my-configs.el")


;;===================================== KEYBINDINGS =================================================
(load "/home/dks/.emacs.d/personal/my-keybinds.el")







