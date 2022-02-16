;;===================================== KEYBINDINGS =================================================
(global-unset-key (kbd "C-q"))
(global-set-key (kbd "C-q") 'move-beginning-of-line)
(global-unset-key (kbd "C-e"))
(global-set-key (kbd "C-e") 'move-end-of-line)

(windmove-default-keybindings)

(global-unset-key (kbd "C-."))
(global-set-key (kbd "C-.") 'next-buffer)
(global-unset-key (kbd "C-,"))
(global-set-key (kbd "C-,") 'previous-buffer)

(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-unset-key (kbd "M-z"))
(global-set-key (kbd "M-z") 'undo-tree-redo)

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


;; (global-unset-key (kbd "M-i"))
;; (global-set-key (kbd "M-i") 'previous-line)

;; (global-unset-key (kbd "M-k"))
;; (global-set-key (kbd "M-k") 'next-line)

;; (global-unset-key (kbd "M-l"))
;; (global-set-key (kbd "M-l") 'right-char)

;; (global-unset-key (kbd "M-j"))
;; (global-set-key (kbd "M-j") 'left-char)


;; (global-unset-key (kbd "C-i"))
;; (global-set-key (kbd "C-i") 'previous-line)

;; (global-unset-key (kbd "C-k"))
;; (global-set-key (kbd "C-k") 'next-line)

;; (global-unset-key (kbd "C-l"))
;; (global-set-key (kbd "C-l") 'right-char)

;; (global-unset-key (kbd "C-j"))
;; (global-set-key (kbd "C-j") 'left-char)
