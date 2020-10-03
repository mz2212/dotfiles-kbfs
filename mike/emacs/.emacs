(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(alacritty-dark))
 '(custom-safe-themes
   '("5fafc95447c920886bbc0bcdb742bd0fef557c573d685e8eee209e03e8cb470a" default))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 120 :width normal)))))
;; Adjust the backup file so emacs isn't leaving "~files" all over the place
(setq make-backup-files nil)
;; Always follow symlinks. Just gotta be the odd one out, huh emacs?
(setq vc-follow-symlinks t)
;; Disable soft wrapping. Dunno why it's the default to do so...
(setq-default truncate-lines 1)

;; Transparency stuff
(set-frame-parameter (selected-frame) 'alpha '(97 . 63))
(add-to-list 'default-frame-alist '(alpha . (97 . 63)))

;; begin el-get stuff
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
;; end el-get stuff
