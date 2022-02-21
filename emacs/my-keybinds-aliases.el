;;===================================== KEYBINDINGS =================================================

(define-key input-decode-map [?\C-i] [C-i])


(use-package prog-mode
  :ensure nil
  :bind ("C-q" . 'move-beginning-of-line)
  :bind ("C-e" . 'move-end-of-line)
  :bind ("C-." . 'next-buffer)
  :bind ("C-," . 'previous-buffer)
  :bind ("M-/" . 'delete-other-windows)
  :bind ("M-u" . 'compile)
  :bind ("M-m" . 'man)
  :bind ("M-s" . 'shell)
  :bind ("C-x f" . 'dired-ibuffer-sidebar-toggle)
  :bind ("C-x h" . 'hs-toggle-hiding)
  :bind ("C-x k" . 'kill-buffer-and-window)
  :bind ("C-w" . 'kill-line)
  :bind ("C-z" . 'kill-region)
  :bind ("M-z" . 'easy-kill)
  :bind ("<C-backspace>" . 'delete-forward-char)
  :bind ("M-q" . 'undo-tree-undo)
  :bind ("M-e" . 'undo-tree-redo)
  :bind ("M-w" . 'undo-tree-visualize)
  :bind ("M-i" . 'windmove-up)
  :bind ("M-k" . 'windmove-down)
  :bind ("M-l" . 'windmove-right)
  :bind ("M-j" . 'windmove-left)
  :bind ("<C-i>" . 'previous-line)
  :bind ("C-k" . 'next-line)
  :bind ("C-l" . 'right-char)
  :bind ("C-j" . 'left-char)
  )


 
(use-package ibuffer
  :ensure nil
  :bind ("M-i" . 'windmove-up)
  :bind ("M-k" . 'windmove-down)
  :bind ("M-l" . 'windmove-right)
  :bind ("M-j" . 'windmove-left)
  :bind ("<C-i>" . 'previous-line)
  :bind ("C-k" . 'next-line)
  :bind ("C-l" . 'right-char)
  :bind ("C-j" . 'left-char)
  :bind ("<C-return>" . 'ibuffer-visit-buffer-other-window)
  )


(use-package dired
  :ensure nil
  :bind ("M-i" . 'windmove-up)
  :bind ("M-k" . 'windmove-down)
  :bind ("M-l" . 'windmove-right)
  :bind ("M-j" . 'windmove-left)
  :bind ("<C-i>" . 'previous-line)
  :bind ("C-k" . 'next-line)
  :bind ("C-l" . 'right-char)
  :bind ("C-j" . 'left-char)
  :bind ("<C-return>" . 'dired-find-file)
  )



;;===================================== ALIASES =================================================

(defalias 'ti 'describe-text-properties)
(defalias 'ki 'describe-key-briefly)
(defalias 'ev 'eval-buffer)
(defalias 'sa 'mark-whole-buffer)

(defalias 'tch 'make-empty-file)
(defalias 'rn 'crux-rename-buffer-and-file)

(defalias 'cr 'comment-region)
(defalias 'uc 'uncomment-region)

(defalias 'top 'beginning-of-buffer)
(defalias 'gtl 'goto-line)
(defalias 'btm 'end-of-buffer)


(defalias 'pl 'list-packages)

(defalias 'dsh (lambda ()
                 "switch to dashboard"
                 (interactive)
                 (switch-to-buffer "*dashboard*")))


(provide 'my-keybinds-aliases)


