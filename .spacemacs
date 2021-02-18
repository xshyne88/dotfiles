;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     (osx :variables osx-command-as       'hyper
          osx-option-as        'meta
          osx-control-as       'control
          osx-function-as      nil
          osx-right-command-as 'left
          osx-right-option-as  'left
          osx-right-control-as 'left
          osx-swap-option-and-command nil)
     vimscript
     yaml
     ruby-on-rails
     (ruby :variables ruby-test-runner 'rspec)
     (ruby :variables ruby-enable-enh-ruby-mode t)
     (ruby :variables ruby-version-manager 'rvm)
     typescript
     helm
     html
     auto-completion
     ;; markdown
     erlang
     javascript
     lsp
     (go :variables go-backend 'go-mode)
     elixir
     (elixir :variables elixir-backend 'lsp elixir-ls-path "/Users/chasephilips/Downloads/elixir-ls-1.11")
     ;; (go :variables go-backend 'lsp)
     (go :variables go-tab-width 2)
     ;; (go :variables go-format-before-save t)
     (go :variables godoc-at-point-function 'godoc-gogetdoc)
     auto-completion
     better-defaults
     emacs-lisp
     git
     org
     emacs-lisp
     react
     rust
     themes-megapack
     (treemacs
      :variables
      treemacs-use-follow-mode t
      treemacs-use-filewatch-mode t
      treemacs-use-collapsed-directories 3)
     (shell :variables
            shell-default-shell 'ansi-term
            shell-default-height 30
            shell-default-term-shell "/bin/zsh"
            shell-default-position 'bottom)
     syntax-checking
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(add-node-modules-path prettier-js lsp-mode)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(company-tern flycheck-mix)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 2))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         kaolin-ocean
                         spacegray
                         sanityinc-tomorrow-eighties
                         hemisu-dark
                         wombat
                         ;; solarized-dark
                         ujelly
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("SourceCode Pro"
   ;; dotspacemacs-default-font '("Meslo LG S DZ for Powerline"
   dotspacemacs-default-font '("Comic Sans MS"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq-default git-magit-status-fullscreen t)
  (setq-default git-enable-magit-svn-plugin t)
  ;; (global-git-commit-mode t)
;; Enable eslint checker for web-mode
;; Enable flycheck globally
)

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (dolist (command '(yank yank-pop))
    (eval `(defadvice ,command (after indent-region activate)
	           (if (and (not current-prefix-arg)
		                  (derived-mode-p 'prog-mode))
	               (let ((mark-even-if-inactive transient-mark-mode))
		               (indent-region (region-beginning) (region-end) nil))))))

  ;; (spacemacs/toggle-transparency)

  (add-hook 'elixir-mode-hook
            (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

  ;; (defun eslint-fix-file ()
  ;;   (interactive)
  ;;   (message "eslint --fixing the file" (buffer-file-name))
  ;;   (shell-command (concat "eslint --fix " (buffer-file-name))))

  ;; (defun eslint-fix-file-and-revert ()
  ;;   (interactive)
  ;;   (eslint-fix-file)
 ;;   (revert-buffer t t))

  ;; (add-hook 'js2-mode-hook
  ;;           (lambda ()
  ;;             (add-hook 'after-save-hook #'eslint-fix-file-and-revert)))

  (use-package lsp-mode
    :commands lsp
    :ensure t
    :diminish lsp-mode
    :hook
    (elixir-mode . lsp)
    :init
    (add-to-list 'exec-path "/Users/chasephilips/Downloads/elixir-ls-1.11"))
  (setq lsp-file-watch-threshold 50000
)
  (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint json-jsonlist)))

  (setq-default
   standard-indent 2
   tab-width 2
   indent-tabs-mode nil
   js-indent-level 2
   js2-basic-offset 2
   js2-strict-semi-warning nil
   js2-missing-semi-one-line-override nil
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-indent-style 2
   )
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)

  (add-to-list 'projectile-globally-ignored-directories "yarn.lock")
  (add-to-list 'projectile-globally-ignored-directories "package_json.lock")
  (add-to-list 'projectile-globally-ignored-directories "node_modules")

  (add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode)) ;; auto-enable for .js/.jsx files
  (add-to-list 'auto-mode-alist '("\\.jsx?$" . js2-mode)) ;; auto-enable for .js/.jsx files

  (spacemacs/toggle-indent-guide-globally-on)

  (add-hook 'go-mode 'clean-aindent-mode-hook)

  (clean-aindent-mode -1)

  (global-linum-mode)
  (define-key evil-normal-state-map (kbd "s-d") 'evil-scroll-down)
  (define-key evil-normal-state-map (kbd "s-u") 'evil-scroll-up)
  (global-set-key (kbd "C-=") 'spacemacs/zoom-frm-in)
  (global-set-key (kbd "C--") 'spacemacs/zoom-frm-out)
  (global-set-key (kbd "C-0") 'zoom-frm-unzoom)
  (global-set-key (kbd "M-j") 'hippie-expand)
  (global-set-key (kbd "H-I") 'alchemist-iex-project-run)
  (global-set-key (kbd "H-i") 'alchemist-iex)
  )
(add-hook 'after-init-hook #'global-flycheck-mode)
;; (flycheck-add-mode 'javascript-eslint 'web-mode)

(defun web-mode-init-prettier-hook ()
  (add-node-modules-path)
  (prettier-js-mode))

(add-hook 'web-mode-hook  'web-mode-init-prettier-hook)
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#002451" "#ff9da4" "#d1f1a9" "#ffeead" "#bbdaff" "#ebbbff" "#99ffff" "#ffffff"))
 '(beacon-color "#ff9da4")
 ;; '(custom-enabled-themes '(sanityinc-solarized-dark))
 ;; '(custom-safe-themes
   ;; '("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "d71f6c718dab453b625c407adc50479867a557668d5c21599a1ebea204d9e4f3" "d0e57771a8b61d0166fb2dde379772c6fcaf35d17f68a7f5b9a148357a6219ac" "b44f201f67425ece29e34972be12917189cac2bac90e3e35d3160bce211d3199" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "8885761700542f5d0ea63436874bf3f9e279211707d4b1ca9ed6f53522f21934" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "8a97050c9dd0af1cd8c3290b061f4b6032ccf2044ddc4d3c2c39e516239b2463" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "585942bb24cab2d4b2f74977ac3ba6ddbd888e3776b9d2f993c5704aa8bb4739" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "2f4f50d98073c01038b518066840638455657dc91dd1a225286d573926f36914" "a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" "3fa65d60abd566321f93d1354f91dedae8ab795bb688a421c69e2e0f7fa3c9bc" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" "63af2870d82065ce90d4c34054aa0a0e524824e9865af9f90f3d6987e61d756a" "cdb4ffdecc682978da78700a461cdc77456c3a6df1c1803ae2dd55c59fa703e3" "4e5e58e42f6f37920b95a8502f488928b3dab9b6cc03d864e38101ce36ecb968" "d600c677f1777c1e4bfb066529b5b73c0179d0499dd4ffa3f599a0fb0cfbd501" "de9fa4b3614611bed2fe75e105bd0d37542924b977299736f158dd4d7343c666" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "d7383f47263f7969baf3856ab8b3df649eb77eafdff0c5731bee2ad18e0faed2" "fad9c3dbfd4a889499f6921f54f68de8857e6846a0398e89887dbe5f26b591c0" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "341b2570a9bbfc1817074e3fad96a7eff06a75d8e2362c76a2c348d0e0877f31" "621595cbf6c622556432e881945dda779528e48bb57107b65d428e61a8bb7955" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "2f57ee6507f30d3228cdddadd0150e7b2fd85dd7c818c2d6485888c7249c37e8" "8d805143f2c71cfad5207155234089729bb742a1cb67b7f60357fdd952044315" default))
 '(diary-entry-marker 'font-lock-variable-name-face)
 '(emms-mode-line-icon-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };"))
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-color "#003f8e" t)
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(gnus-logo-colors '("#528d8d" "#c0c0c0"))
 '(gnus-mode-line-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };"))
 '(package-selected-packages
   '(helm-rg solarized-color-blend-theme lsp-mode zones lsp-elixir flycheck-elixir eslint-fix protobuf-mode go-imports gotest heimsu-dark-theme flymd reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl prettier-js add-node-modules-path tide typescript-mode vimrc-mode dactyl-mode yaml-mode zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme spacegray-theme xterm-color web-mode web-beautify unfill toml-mode tagedit smeargle slim-mode shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv racer pug-mode projectile-rails rake inflections orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download ob-elixir mwim multi-term mmm-mode minitest markdown-toc magit-gitflow magit-popup livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc htmlize helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode go-guru go-eldoc gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy flycheck-rust flycheck-pos-tip pos-tip flycheck-mix flycheck-credo flycheck feature-mode evil-magit magit transient git-commit with-editor eshell-z eshell-prompt-extras esh-help erlang enh-ruby-mode emmet-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-go go-mode coffee-mode chruby cargo markdown-mode rust-mode bundler inf-ruby auto-yasnippet yasnippet alchemist company elixir-mode ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9")))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
;; (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(default ((t (:family "Monaco" :foundry "nil" :slant normal :weight normal :height 180 :width normal)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#002451" "#ff9da4" "#d1f1a9" "#ffeead" "#bbdaff" "#ebbbff" "#99ffff" "#ffffff"))
 '(beacon-color "#ff9da4")
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   '("c9415c9f5a5ed67914d1d64a0ea7d743ef93516f1f2c8501bc5ffb87af2066d3" "620b9018d9504f79344c8ef3983ea4e83d209b46920f425240889d582be35881" "7e5d400035eea68343be6830f3de7b8ce5e75f7ac7b8337b5df492d023ee8483" "78c01e1b7f3dc9e47bdd48f74dc98dc1a345c291f83b68ac8a1b40191f24d658" "4e9e56ec06ede9857c876fea2c44b75dd360cd29a7fe927b706c45f804f7beff" "a4395e069de3314001de4e139d6a3b1a83dcf9c3fdc68ee7b13eef6c2cba4ae3" "d9a28a009cda74d1d53b1fbd050f31af7a1a105aa2d53738e9aa2515908cac4c" "27a1dd6378f3782a593cc83e108a35c2b93e5ecc3bd9057313e1d88462701fcd" "8efa3d21b3fa1ac084798fae4e89848ec26ae5c724b9417caf4922f4b2e31c2a" "b47eca77c785108ab443aea40fbabb2af3e13a3ac8a8537975dee099b866a0f0" "dc8ad8b5833ae06e373cc3d64be28e67e6c3d084ea5f0e9e77225b3badbec661" "7680e0d0fe93475fcdc514ae4df428245ab30c57114a753701e4fc09a15c949b" "24cb0b5666e1e17fb6a378c413682f57fe176775eda015eb0a98d65fbb64b127" "7922b14d8971cce37ddb5e487dbc18da5444c47f766178e5a4e72f90437c0711" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "ff4d091b20e9e6cb43954e4eeae1c3b334e28b5923747c7bd5d2720f2a67e272" "7236acec527d58086ad2f1be6a904facc9ca8bf81ed1c19098012d596201b3f1" "8f54cfa3f010d83d782fbcdc3a34cdc9dfe23c8515d87ba22d410c033160ad7e" "fa96a61e4eca5f339ad7f1f3442cb5a83696f6a45d9fe2a7bf3b75fc6912bb91" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "3a9f65e0004068ecf4cf31f4e68ba49af56993c20258f3a49e06638c825fbfb6" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "d71f6c718dab453b625c407adc50479867a557668d5c21599a1ebea204d9e4f3" "d0e57771a8b61d0166fb2dde379772c6fcaf35d17f68a7f5b9a148357a6219ac" "b44f201f67425ece29e34972be12917189cac2bac90e3e35d3160bce211d3199" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "8885761700542f5d0ea63436874bf3f9e279211707d4b1ca9ed6f53522f21934" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "8a97050c9dd0af1cd8c3290b061f4b6032ccf2044ddc4d3c2c39e516239b2463" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "585942bb24cab2d4b2f74977ac3ba6ddbd888e3776b9d2f993c5704aa8bb4739" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "2f4f50d98073c01038b518066840638455657dc91dd1a225286d573926f36914" "a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" "3fa65d60abd566321f93d1354f91dedae8ab795bb688a421c69e2e0f7fa3c9bc" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" "63af2870d82065ce90d4c34054aa0a0e524824e9865af9f90f3d6987e61d756a" "cdb4ffdecc682978da78700a461cdc77456c3a6df1c1803ae2dd55c59fa703e3" "4e5e58e42f6f37920b95a8502f488928b3dab9b6cc03d864e38101ce36ecb968" "d600c677f1777c1e4bfb066529b5b73c0179d0499dd4ffa3f599a0fb0cfbd501" "de9fa4b3614611bed2fe75e105bd0d37542924b977299736f158dd4d7343c666" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "d7383f47263f7969baf3856ab8b3df649eb77eafdff0c5731bee2ad18e0faed2" "fad9c3dbfd4a889499f6921f54f68de8857e6846a0398e89887dbe5f26b591c0" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "341b2570a9bbfc1817074e3fad96a7eff06a75d8e2362c76a2c348d0e0877f31" "621595cbf6c622556432e881945dda779528e48bb57107b65d428e61a8bb7955" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "2f57ee6507f30d3228cdddadd0150e7b2fd85dd7c818c2d6485888c7249c37e8" "8d805143f2c71cfad5207155234089729bb742a1cb67b7f60357fdd952044315" default))
 '(diary-entry-marker 'font-lock-variable-name-face)
 '(emms-mode-line-icon-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };"))
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-color "#003f8e" t)
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(gnus-logo-colors '("#528d8d" "#c0c0c0") t)
 '(gnus-mode-line-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };") t)
 '(helm-completion-style 'emacs)
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-symbol-colors
   '("#3b6b40f432d7" "#07b9463d4d37" "#47a3341f358a" "#1d873c4056d5" "#2d87441c3362" "#43b7362e3199" "#061e418059d7"))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#073642" . 0)
     ("#5b7300" . 20)
     ("#007d76" . 30)
     ("#0061a8" . 50)
     ("#866300" . 60)
     ("#992700" . 70)
     ("#a00559" . 85)
     ("#073642" . 100)))
 '(hl-bg-colors
   '("#866300" "#992700" "#a7020a" "#a00559" "#243e9b" "#0061a8" "#007d76" "#5b7300"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(lsp-ui-doc-border "#93a1a1")
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#5b7300" "#b3c34d" "#0061a8" "#2aa198" "#d33682" "#6c71c4"))
 '(package-selected-packages
   '(helm-rg solarized-color-blend-theme lsp-mode zones lsp-elixir flycheck-elixir eslint-fix protobuf-mode go-imports gotest heimsu-dark-theme flymd reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl prettier-js add-node-modules-path tide typescript-mode vimrc-mode dactyl-mode yaml-mode zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme spacegray-theme xterm-color web-mode web-beautify unfill toml-mode tagedit smeargle slim-mode shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv racer pug-mode projectile-rails rake inflections orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download ob-elixir mwim multi-term mmm-mode minitest markdown-toc magit-gitflow magit-popup livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc htmlize helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode go-guru go-eldoc gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy flycheck-rust flycheck-pos-tip pos-tip flycheck-mix flycheck-credo flycheck feature-mode evil-magit magit transient git-commit with-editor eshell-z eshell-prompt-extras esh-help erlang enh-ruby-mode emmet-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-go go-mode coffee-mode chruby cargo markdown-mode rust-mode bundler inf-ruby auto-yasnippet yasnippet alchemist company elixir-mode ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#a7020a" "#dc322f" "#5b7300" "#859900" "#866300" "#b58900" "#0061a8" "#268bd2" "#a00559" "#d33682" "#007d76" "#2aa198" "#839496" "#657b83"))
 '(window-divider-mode nil)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)
