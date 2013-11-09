(package-initialize)

(setq-default truncate-lines 1)

(blink-cursor-mode 0)

(setq-default indent-tabs-mode t)

(setq-default  tab-width 2) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq js-indent-level 2)

(setq-default tab-width 2)

(setq ring-bell-function 'ignore)

(global-set-key (kbd "C-c g") 'goto-line)
(global-set-key (kbd "C-c b") 'bury-buffer)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)


(setq-default indent-tabs-mode t)

(setq-default  tab-width 2) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq js-indent-level 2)


(add-to-list 'load-path "/usr/local/go/misc/emacs")
(require 'go-mode-load)

(require 'company-go)
(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-minimum-prefix-length 0)               ; autocomplete right after '.'
(setq company-idle-delay .3)                         ; shorter delay before autocompletion popup
(setq company-echo-delay 0)                          ; removes annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
(add-hook 'css-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-css))
                          (company-mode)))

(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "steelblue" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))


(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)

(defun force-backup-of-buffer ()
    (let ((buffer-backed-up nil))
      (backup-buffer)))

(add-hook 'before-save-hook  'force-backup-of-buffer)

(setq split-height-threshold nil)
(setq split-width-threshold nil)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(rvm-use "ruby-1.9.3-p392" "forex_web") 

;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/rails-minor-mode"))
;; (require 'rails)
(load-theme 'zenburn t)
(exec-path-from-shell-initialize)

(global-linum-mode 1)
(put 'upcase-region 'disabled nil)
