;;===================================== KEYBINDINGS =================================================

(defun my-keybindings ()
  (global-unset-key (kbd "C-q"))
  (global-set-key (kbd "C-q") 'move-beginning-of-line)
  (global-unset-key (kbd "C-e"))
  (global-set-key (kbd "C-e") 'move-end-of-line)

  (windmove-default-keybindings)

  (global-unset-key (kbd "C-."))
  (global-set-key (kbd "C-.") 'next-buffer)
  (global-unset-key (kbd "C-,"))
  (global-set-key (kbd "C-,") 'previous-buffer)

  (global-unset-key (kbd "M-/"))
  (global-set-key (kbd "M-/") 'delete-other-windows)

  (global-unset-key (kbd "M-u"))
  (global-set-key (kbd "M-u") 'compile)

  (global-unset-key (kbd "M-m"))
  (global-set-key (kbd "M-m") 'man)

  (global-unset-key (kbd "M-s"))
  (global-set-key (kbd "M-s") 'shell)

  (global-unset-key (kbd "C-x f"))
  (global-set-key (kbd "C-x f") 'dired-sidebar-toggle-with-current-directory)

  (global-unset-key (kbd "C-x h"))
  (global-set-key (kbd "C-x h") 'hs-toggle-hiding)

  (global-unset-key (kbd "C-x k"))
  (global-set-key (kbd "C-x k") 'kill-buffer-and-window)

  (define-key input-decode-map [?\C-i] [C-i])
  (global-unset-key (kbd "<C-i>"))
  (global-set-key (kbd "<C-i>") 'previous-line)

  (global-unset-key (kbd "C-k"))
  (global-set-key (kbd "C-k") 'next-line)

  (global-unset-key (kbd "C-l"))
  (global-set-key (kbd "C-l") 'right-char)

  (global-unset-key (kbd "C-j"))
  (global-set-key (kbd "C-j") 'left-char)

  (global-unset-key (kbd "C-w"))
  (global-set-key (kbd "C-w") 'kill-line)

  (global-unset-key (kbd "C-z"))
  (global-set-key (kbd "C-z") 'kill-region)
  
  (global-unset-key (kbd "M-z"))
  (global-set-key (kbd "M-z") 'easy-kill)

  (global-unset-key (kbd "M-q"))
  (global-set-key (kbd "M-q") 'undo-tree-undo)

  (global-unset-key (kbd "M-w"))
  (global-set-key (kbd "M-w") 'undo-tree-visualize)
  
  (global-unset-key (kbd "M-e"))
  (global-set-key (kbd "M-e") 'undo-tree-redo)

  (global-unset-key (kbd "M-i"))
  (global-set-key (kbd "M-i") 'windmove-up)

  (global-unset-key (kbd "M-k"))
  (global-set-key (kbd "M-k") 'windmove-down)

  (global-unset-key (kbd "M-j"))
  (global-set-key (kbd "M-j") 'windmove-left)

  (global-unset-key (kbd "M-l"))
  (global-set-key (kbd "M-l") 'windmove-right)

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






