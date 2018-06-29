
;; 初始化
(package-initialize)
(set-language-environment "UTF-8")

;; 设置标题栏,我的设置为Welcome to Emacs world! 
(setq frame-title-format "世界无敌第一帅！") 

;; org mode
(global-set-key (kbd "C-c a") 'org-agenda)

;; (setq org-agenda-files (list "~/projects/"))
(setq org-agenda-files (file-expand-wildcards "~/projects/*.org"))

;;org capture
(global-set-key (kbd "C-c r") 'org-capture)

;; 字体设置
;; Setting English Font
;; (set-face-attribute 'default nil :font "Inconsolata 12")
 (set-face-attribute 'default nil :font "Consolas 12")
;; (set-face-attribute 'default nil :font "Monaco 12")
;;(set-face-attribute 'default nil :font "DejaVu Sans Mono 12")

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "Microsoft Yahei"
                                       :size 12)))
(setq line-spacing 1.1)
									   
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(global-display-line-numbers-mode t)
 '(org-agenda-files nil)
 '(org-capture-templates
   (quote
    (("t" "TODO" entry
      (file+headline "~/projects/Inbox.org" "Inbox")
      "* TODO %?")
     ("j" "Journal" entry
      (file+olp+datetree "~/DIARY.org")
      ""))))
 '(tool-bar-mode nil))
	  
