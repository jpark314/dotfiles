;; init.el -- personalized emacs init file
;; big help from Yingbo Max Wang

(setq use-package-always-ensure t)

;; ---------------
;; -- Pre-setup --
;; ---------------
;; Add Emacs package archive: MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; elpy archive
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(package-initialize) ;; You might already have this line

;; disable start-up message
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message "jpark314")

;; less frequent garbage collection
(setq gc-cons-threshold 10000000)        ;10MB

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d3d99bb1060089a8d833950bb0a2c29bea03a7349f367447f5eb96f4ef9827b7" "4528fb576178303ee89888e8126449341d463001cb38abe0015541eb798d8a23" default)))
 '(package-selected-packages
   (quote
    (flycheck-irony company-irony-c-headers irony-eldoc utop merlin tuareg geiser slime paredit rainbow-delimiters robe indent-tools ggtags dired+ tern auto-complete rjsx-mode js2-mode web-mode go-mode company-irony irony elpy use-package smooth-scrolling smart-mode-line neotree markdown-mode exec-path-from-shell))))

;; --------------------
;; -- Configurations --
;; --------------------
;; Emacs theme settings for running in GUI or terminal
;; (use-package solarized-theme
;;   :ensure t)
(if window-system
    ;;(load-theme 'wombat)
    ;;(load-theme 'solarized-dark)
    (load-theme 'zenburn)
  ;;(setq-default set-background-color "black")
  (add-to-list 'default-frame-alist '(background-color . "black")))

;; set tab width in fundamental-mode and c-mode
;;(setq default-tab-width 8)
;;(setq tab-width 8)
;;(setq-default c-basic-offset 4)

;; backup files
(setq backup-directory-alist '(("." . "~/.saves"))
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 10
      kept-old-versions 2
      version-control t)
;; smooth scrolling
;; keyboard
(setq scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)
;; mouse
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
;; (setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse t)       ; scroll window under mouse

;; Emacs window-mode customizations
(unless (eq system-type 'darwin)
  (menu-bar-mode -1))
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(add-to-list 'default-frame-alist
             '(vertical-scroll-bars . nil))
;;(linum-mode 1)
(global-linum-mode t)
;; linum-mode should not be enabled in docView mode to accelerate loading
(add-hook 'prog-mode-hook
	  (lambda () (linum-mode 1)))
(column-number-mode t)
(show-paren-mode 1)

;; Emacs font settings
;;(set-face-attribute 'default nil :height 140)
(if (eq system-type 'darwin)
    (progn
      (add-to-list 'default-frame-alist
		   '(font . "Monaco-12")))
  (add-to-list 'default-frame-alist
	       '(font . "Cousine-11")))
(setq-default line-spacing 0.1)

;; Emacs org-mode for LaTeX syntax highlighting
(eval-after-load 'org
  '(setf org-highlight-latex-and-related '(latex)))
(add-hook 'org-mode-hook (lambda () (set 'truncate-lines nil)))
(set 'org-src-preserve-indentation t)
;;(org-startup-truncated nil)
;;(set-default 'truncate-lines t)
;;(add-hook 'org-mode-hook (lambda () (toggle-truncate-lines 1)))

;; ido-mode
(require 'ido)
(ido-mode t)

;; set Emacs environment variables to be the same in shell
(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))
;; set PATH environment variable on Python packages for elpy
;;(setq exec-path (append exec-path '("/Users/Max/anaconda/bin")))

;; custom key bindings
(if (eq system-type 'darwin)
    (progn
      (global-set-key (kbd "s-[") (lambda () (interactive) (other-window -1)))
      (global-set-key (kbd "s-]") (lambda () (interactive) (other-window 1))))
  (progn
    (global-set-key (kbd "M-[") (lambda () (interactive) (other-window -1)))
    (global-set-key (kbd "M-]") (lambda () (interactive) (other-window 1)))))

;; Emacs mode-line customizations
(use-package smart-mode-line
  :ensure t)
(if window-system
    (sml/setup))

;; --------------
;; -- Packages --
;; --------------
;; smooth scrolling
;;(require 'smooth-scrolling)
(use-package smooth-scrolling
  :ensure t
  :config
  (setq smooth-scroll-margin 5)
  (smooth-scrolling-mode 1))

;; Enable Emacs mouse support in iTerm2
(when (eq system-type 'darwin)
  (unless window-system
    (require 'mouse)
    (xterm-mouse-mode t)
    (global-set-key [mouse-4] (lambda ()
				(interactive)
				(scroll-down 1)))
    (global-set-key [mouse-5] (lambda ()
				(interactive)
				(scroll-up 1)))
    (defun track-mouse (e))
    (setq mouse-sel-mode t)))

;; neotree
(add-to-list 'load-path "~/.emacs.d/elpa/neotree")
;;(require 'neotree)
(use-package neotree
  :ensure t
  :config
  (global-set-key [f8] 'neotree-toggle))

;; extensions to dired
(use-package dired+
  :ensure t
  :config
  ;; show file details by default
  (setq diredp-hide-details-initially-flag nil)
  (setq diredp-hide-details-propagate-flag nil))

;;; cc-mode: mode for editing c/c++/java/awk
(use-package cc-mode
  :defer t
  :mode ("\\.h\\'" . c++-mode)
  :init
  (setq-default c-basic-offset 4
                c-default-style "k&r")
  :config
  (c-set-offset 'innamespace [0])
  (use-package gdb-mi
    :defer t
    :init
    (setq gdb-many-windows t
          gdb-show-main t)))

;; GNU Global
;; generate tags with: gtags --gtagslabel=ctags  # or pygments
;; https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Btags/gtags
(use-package ggtags
  :bind (:map ggtags-global-mode-map
         ;; also kill buffer
         ("q" . quit-window-kill-buffer))
  :init
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
                (ggtags-mode 1)
                (setq-local eldoc-documentation-function
                            #'ggtags-eldoc-function)
                (setq-local imenu-create-index-function
                            #'ggtags-build-imenu-index))))
  :config
  (defun quit-window-kill-buffer ()
    (interactive)
    (quit-window t)))

;;; irony-mode, irony-eldoc, company-irony, flycheck-irony
;; always use clang as compiler: brew install llvm --with-clang
;; install-server compilation flags:
;; cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang -DCMAKE_INSTALL_PREFIX\=$HOME/.emacs.d/irony/ $HOME/.emacs.d/elpa/irony-{latest}/server && cmake --build . --use-stderr --config Release --target install
;; requires libclang
(use-package irony
  :defer t
  ;; irony `0.3.0' breaking changes, removed async API (supported by default)
  ;; now irony-completion-at-point uses async by default
  ;; :bind (:irony-mode-map
  ;;        ([remap completion-at-point] . irony-completion-at-point-async)
  ;;        ([remap complete-symbol] . irony-completion-at-point-async))
  :init
  ;; (add-hook 'c++-mode-hook 'irony-mode)
  ;; (add-hook 'c-mode-hook 'irony-mode)
  ;; LOAD IRONY MODE ON DEMAND WITH M-x irony-mode
  :config
  ;; make irony aware of .clang_complete or cmake
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  ;; company version >= `0.8.4' include these commands by default
  ;; (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

  (use-package irony-eldoc
    :defer t
    :init (add-hook 'irony-mode-hook 'irony-eldoc))
  (use-package company-irony
    :defer t
    :init (add-to-list 'company-backends 'company-irony))
  (use-package company-irony-c-headers
    :defer t
    :init (add-to-list 'company-backends 'company-irony-c-headers))
  (use-package flycheck-irony
    :defer t
    :init (add-hook 'flycheck-mode-hook 'flycheck-irony-setup))
  )

;; TODO : replace irony with rtags

;; indent tools
(use-package indent-tools
  :defer t
  :bind ("M-i" . indent-tools-hydra/body))

;;; Python
(use-package python
  :defer t
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python3" . python-mode)
  :init
  (setq-default python-indent-offset 4)
  :config
  (setq gud-pdb-command-name "python3 -m pdb")
  ;; problem with ipython 5+ prompt
  (setq python-shell-interpreter "ipython3"
        ;; ipython with readline: https://github.com/ipython/rlipython
        ;; pip3 install rlipython
        python-shell-interpreter-args "-i --TerminalIPythonApp.interactive_shell_class=rlipython.TerminalInteractiveShell"))

(use-package elpy
  :defer t
  :init
  ;; calling elpy-enable at init damages init time
  ;; instead load it once when a python buffer opens
  (with-eval-after-load 'python
    (elpy-enable))
  :config
  (setq elpy-rpc-python-command "python3")
  (setq elpy-rpc-backend "jedi")
  ;; prefer flycheck to flymake
  (remove-hook 'elpy-modules 'elpy-module-flymake)
  (elpy-use-ipython))

;;; Ruby
;;; CURRENT SETUP BROKEN
;; inf-ruby:  repl integration
;; M-x inf-ruby (or C-c C-s) to start ruby process
;; robe-mode: code navigation, completion
;; M-x robe-start (after inf-ruby is running)
;; then C-c C-l to load current ruby file
;; (add-hook 'ruby-mode-hook 'subword-mode)
(use-package ruby-mode
  :defer t
  :bind (:ruby-mode-map
         ("C-M-p" . backward-list)
         ("C-M-n" . forward-list))
  ;; :init (inf-ruby-console-auto)
  :config
  (add-hook 'ruby-mode-hook 'eldoc-mode))
(use-package robe
  :defer t
  :init (add-hook 'ruby-mode-hook 'robe-mode)
  ;; company-robe contained within robe package
  :config (add-to-list 'company-backends 'company-robe))

;;; Common Lisp
;; M-x slime
;; slime handles indent correctly
;; (setq lisp-indent-function 'common-lisp-indent-function)
(use-package rainbow-delimiters
  :defer t
  :init
  (add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'json-mode-hook 'rainbow-delimiters-mode))
(use-package paredit
  :defer t
  :init (add-hook 'lisp-mode-hook 'enable-paredit-mode)
  ;; M-s : paredit-splice-sexp
  )
(use-package slime
  :defer t
  :config
  (setq inferior-lisp-program (executable-find "sbcl"))
  ;; TODO : requires slime-company
  (setq slime-contribs '(slime-fancy slime-company)))
;; (slime-setup '(slime-fancy slime-company))

;;; Scheme
;; M-x run-geiser
(use-package geiser
  :defer t
  ;; :config (setq geiser-active-implementations '(racket))
  )

;;; OCaml
;; tuareg, merlin (minor mode)
;; install opam
(use-package tuareg
  ;; opam install tuareg
  :defer t)
(use-package merlin
  ;; opam install merlin
  :defer t
  :init (add-hook 'tuareg-mode-hook 'merlin-mode)
  ;; merlin-company added by merlin.el
  )
(use-package utop
  ;; opam install utop
  :defer t
  :config (setq utop-command "opam config exec -- utop -emacs"))

;;; Javascript & HTML & CSS
(use-package js2-mode
  :defer t
  :mode (("\\.js\\'" . js2-mode)
         ("\\.jsx\\'" . js2-jsx-mode))
  ;; :init (add-hook 'js2-mode-hook 'subword-mode)
  :config
  (setq js-indent-level 2)
  ;; requires tern: npm install -g tern
  ;; add ~/.tern-project to get tern working
  (add-hook 'js2-mode-hook 'tern-mode)
  ;; company-tern
  (use-package company-tern
    :defer t
    :init (add-to-list 'company-backends 'company-tern))
  ;; flycheck support for eslint
  ;; flycheck will automatically load eslint if .eslintrc exists
  ;; (flycheck-add-mode 'javascript-eslint 'js2-mode)
  ;; prefer flycheck warnings to js2-mode warnings
  (setq js2-mode-show-parse-errors nil
        js2-mode-show-strict-warnings nil))

;;; web-mode
(use-package web-mode
  :defer t
  :mode (("\\.html?\\'" . web-mode)
         ("\\.xml\\'" . web-mode)
         ("\\.css\\'" . web-mode)
         ("\\.scss\\'" . web-mode)
         ("\\.erb\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  ;; web dev extra
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-css-colorization t)
  ;; template engine detection (put engine:<engine> at top of file)
  (setq web-mode-enable-engine-detection t)
  ;; html entities
  (setq web-mode-enable-html-entities-fontification t)
  ;; highlight
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-current-column-highlight t)
  ;; keybinding within current tag
  (define-key web-mode-map (kbd "M-n") 'web-mode-tag-next)
  (define-key web-mode-map (kbd "M-p") 'web-mode-tag-previous))

;;; Markdown
(use-package markdown-mode
  :defer t
  :config
  (setq markdown-command
        "pandoc -f markdown -t html -s --mathjax --highlight-style=pygments"))
;; (add-hook 'markdown-mode-hook 'flyspell-mode)

;; -----------
;; -- Modes --
;; -----------
;; markdown-mode
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
	 ("\\.md\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; tuareg-mode for OCaml
;; NOTE: has to be pre-installed by opam

;; Python and elpy
;; NOTE: well-designed Lisp programs should not use with-eval-after-load
(with-eval-after-load 'python
  (elpy-enable))
;; (add-hook 'python-mode-hook 'elpy-enable)
(use-package elpy
  :ensure t
  :commands elpy-enable
  :config
  (setq elpy-rpc-backend "jedi"))

;; enable company-mode for code auto-completion interface
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

;; Install irony-mode on MELPA, for C/C++ auto-completion
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(use-package irony
  :ensure t
  :commands irony-mode
  :config
  ;; company-irony
  (use-package company-irony
    :ensure t
    ;; the following lines have to be run after package loads, not before
    :config
    (add-to-list 'company-backends 'company-irony)))

(use-package go-mode
  :ensure t)

;; web-mode for HTML front-end web development
(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)))

;; Modes for JavaScript IDE and React development in JSX
(use-package js2-mode
  :ensure t
  ;; install stable release from GNU ELPA
  :pin gnu
  :mode "\\.js\\'"
  :interpreter ("node" . js2-mode)
  :config
  (tern-mode t))
(use-package rjsx-mode
  :ensure t
  :mode ("components\\/.*\\.js\\'" . rjsx-mode)
  :config
  (tern-mode t))

;; tern-mode for JavaScript integration with Emacs
;; "auto-complete" is a required package of tern
(use-package auto-complete
  :ensure t)
;; Elisp built-in autoload interferes with ":commands" of use-package
;; so let use-package manage all packages, including offline modules
;;(add-to-list 'load-path "~/.emacs.d/tern/emacs")
;;(autoload 'tern-mode "tern.el" nil t)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
;;(add-hook 'js-mode-hook 'tern-mode)  ;;  an equivalent way

(use-package tern
  :load-path "tern/emacs"
  :commands tern-mode
  :config

  (use-package company-tern
    :ensure t
    :config
    (add-to-list 'company-backends 'company-tern)))

;; [Debugging backgrace]
;; (setq max-specpdl-size 5)  ; default is 1000, reduce the backtrace level
;; (setq debug-on-error t)    ; now you should get a backtrace

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Create a function that inserts a line
;; 'above' the current cursor position

(defun my/insert-line-before (times)
  "Inserts a newline(s) above the line containing
  the cursor."
  (interactive "p")
  (save-excursion
    (move-beginning-of-line 1)
    (newline times)))

(global-set-key (kbd "C-S-o")
  'my/insert-line-before)
