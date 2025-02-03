;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'custom_light)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(defun my-weebery-is-always-greater ()
  (let* ((banner '("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠒⠒⠢⢌⠳⡤⠑⡥⢿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣠⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠀⠱⠀⠘⠲⢧⢙⠛⠄⠠⠆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⢣⣴⠖⢀⡀⠀⠀⣌⠳⡆⠉⠁⠀⢤⡐⢄⠀⠀⠃⡇⢰⠰⠆⡘⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠶⣿⢷⣶⣿⣷⣦⣄⠉⠁⠉⠉⠉⠢⠀⠀⠀⠈⠁⠀⠁⠀⠀⠁⠁⠀⠘⠀⠁⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠀⠀⠀⠀⠀⠀⠠⡊⠁⠀⠉⢹⣿⣶⣄⢉⣁⠀⠀⠀⠶⠠⠌⠃⠀⠀⠒⠀⠀⠀⠀⠀⠰⠀⢤⡄⠀⠀⠸⠤⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠀⠀⠀⠀⢠⠴⠺⠁⠀⠀⠀⠘⠞⠛⠋⠊⠁⡠⠒⢀⠀⠀⠀⠀⢀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠈⠂⣠⣶⠀⠣⡉⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠀⠀⢀⣀⣠⠀⠀⠀⠀⠀⢀⣄⠀⠀⢀⠀⡊⠀⠀⠈⠀⠀⢠⣀⣀⣴⣾⣆⠀⠀⠀⠘⠀⠀⣡⡶⣄⠹⠃⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠀⠀⠀⡟⠀⠀⠀⠀⠐⠤⣀⢽⣶⡿⠋⣿⠓⠂⠀⠀⠀⣸⠀⠉⠻⢭⣫⠽⣷⠊⠐⠒⠀⠀⠻⡵⣣⢸⠀⠀⢠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⢀⡴⢋⠄⠀⠀⠀⠀⠀⣸⡅⢘⠼⠀⠈⣯⠒⠁⠀⠀⠀⠀⠁⠀⡤⠀⠀⠈⠀⣈⣁⠀⠀⡀⠀⠀⠉⠺⠄⠀⡞⠘⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠁⣴⣾⠀⠀⠀⠀⠀⢀⣽⣿⢸⠐⠀⠀⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠻⣣⣤⣤⣴⣬⢠⠀⠀⠡⣠⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
                   "⠀⠀⠰⣿⠊⠀⠀⠀⠀⠀⠀⣀⢻⡾⡆⠂⠀⠐⢛⣀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣷⣤⣀⡀⠀⠀⠀⠀⠉⢿⠋⠁⢸⠀⠀⠀⠀⠈⡏⠓⠢⣤⣀⡀⠀⠀⠀"
                   "⠀⠀⠀⣟⠔⠀⠀⠀⠀⠀⠀⠀⠀⣷⠃⡀⠀⠀⠋⠩⡂⠀⠀⠀⠀⢤⣾⣿⣿⣿⣿⣿⣿⣦⡤⣠⣴⣶⣾⣶⣶⣿⣇⠀⠀⢀⣶⡶⢀⡒⠰⡄⠉⠓⠶⠤"
                   "⠀⠀⣀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⡠⠀⠀⠀⠀⢱⠀⠀⠀⣠⠞⣿⠀⠀⠈⠉⠨⣿⣾⣷⡿⠛⣿⡿⢿⣏⣉⡀⠈⣱⣾⣷⣿⣾⠇⣰⡇⢠⡀⠀⠀"
                   "⠀⢀⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠟⠀⠀⢰⠂⠀⢸⡀⠠⠞⠁⠀⢿⠀⠀⠀⢶⠖⠉⢉⣩⠄⠀⣿⣴⣿⣿⣿⣿⣿⣯⡛⢿⠿⣃⣸⣿⣷⣿⠃⣶⡀"
                   "⣾⠇⠀⠀⠀⠀⣀⣠⣤⡤⣄⡤⠚⠛⠉⠉⠢⡔⢦⡄⠀⡇⠀⠀⠀⢠⣼⠀⠀⠜⠀⣠⣤⠉⠈⣻⡟⣿⣿⣿⣿⣿⣿⣿⣿⣍⠓⢮⡛⢿⣿⠟⣡⣾⣿⣿"
                   "⣁⡤⠤⠖⠒⣋⣉⣹⡿⠟⠋⠉⠉⠐⢄⢐⢠⣼⡞⢀⡰⠃⠀⠀⣼⣿⣯⡀⠀⠀⢼⠟⠉⣩⣿⠟⢻⣿⣿⣿⣿⣿⣿⣿⣿⣀⠤⠤⠉⠓⢖⡺⢿⣿⣿⣿"
                   "⡁⠀⠀⢀⣀⡴⠿⠥⠀⠠⢀⠀⢀⠔⣆⢹⣶⣿⡵⠋⠀⠀⠀⠀⣿⣿⣽⣿⣶⣆⠀⠒⠛⣻⣿⢆⣿⣿⣿⣿⡿⠛⢉⣩⠤⠤⠦⠤⠄⠀⠀⠈⠢⣍⡋⣥"
                   "⢶⣶⡞⣉⠀⠀⠀⠀⠀⢈⠀⡍⠒⣧⣸⣆⡏⣸⠁⠀⠀⠀⠀⣠⣿⣿⡅⠹⣿⣿⣿⣿⣿⡿⣿⡯⣏⠉⣿⡳⠻⠋⠛⠑⠒⠂⠒⠠⠀⠠⣤⣠⣄⣌⠑⢤"
                   "⠡⠀⠀⠀⠀⠀⠀⠀⡴⣁⠘⢴⣦⠸⣿⢿⣴⢧⣀⡤⣺⣿⢰⣿⡟⠆⠀⣀⣙⠻⣿⣟⡈⠰⣿⠁⠈⠳⣼⣠⣁⠀⠀⢳⡄⠀⠁⠀⡀⠀⠀⠀⠀⣀⣾⣶"
                   "⠀⠀⠀⠠⠂⣐⢄⠀⢙⣿⣆⣸⣿⣧⠏⣾⣷⣶⡟⠉⠉⣿⡟⠛⠉⠁⠀⠀⠀⠉⠻⡋⠀⠀⢨⣀⣀⣀⣹⣛⡿⠁⠀⢨⠀⠀⠀⠀⠁⠀⣀⣠⣴⣿⣿⣿"
                   "⠀⠀⠀⠀⠐⠛⢦⠹⣿⣿⣿⣿⡿⢻⣾⡁⢻⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢻⣿⠥⠴⢳⣶⢠⠁⢀⣴⣾⣷⣷⣾⣿⣿⣿⣿⣿⣿"
                   "⠞⠁⠀⠀⠀⣠⣿⣷⡸⣿⣿⠟⢀⡾⢹⡇⢸⣿⣿⣿⡇⠀⠀⠀⣀⠀⠀⠀⠐⠀⢚⠿⠟⣛⣛⣭⣤⣖⡀⡟⠛⠃⠁⠀⣴⢿⣭⣿⣦⣤⣭⣭⣭⡿⠿⠛"))
         (longest-line (apply #'max (mapcar #'length banner))))
    (put-text-property
     (point)
     (dolist (line banner (point))
       (insert (+doom-dashboard--center
                +doom-dashboard--width
                (concat line (make-string (max 0 (- longest-line (length line))) 32)))
               "\n"))
     'face 'doom-dashboard-banner)))

(setq +doom-dashboard-ascii-banner-fn #'my-weebery-is-always-greater)



(when (string-match "-[Mm]icrosoft" operating-system-release)
  ;; WSL: WSL1 has "-Microsoft", WSL2 has "-microsoft-standard"
 (defun wsl-copy-clip (&rest _args)
   "Copy current-kill to WSL clip.exe"
   (setq mytemp (make-temp-file "winclip"))
   (write-region (current-kill 0 t) nil mytemp)
   (shell-command (concat "clip.exe < " mytemp))
   (delete-file mytemp))

 (advice-add 'kill-new :after #'wsl-copy-clip))

(add-to-list 'auto-mode-alist '("\\.d\\'" . c-mode))

(defun my-d-mode-hook ()
  (font-lock-add-keywords nil
   '(("\\(@[a-zA-Z_][a-zA-Z0-9_]*\\)(" 1 font-lock-function-name-face))))

(add-hook 'c-mode-hook 'my-d-mode-hook)

(add-hook! 'c-mode-common-hook
  (setq c-basic-offset 4
        tab-width 4
        indent-tabs-mode nil))


(after! lsp-clangd
  (setq lsp-clients-clangd-args
        '("-j=3"
          "--background-index"
          "--clang-tidy"
          "--completion-style=detailed"
          "--header-insertion=never"
          "--header-insertion-decorators=0"))
  (set-lsp-priority! 'clangd 2))

(setq org-directory "/mnt/c/org/")

(require 'org-id)
(require 'time-stamp)
(defun add-comment-with-id (prefix &optional context)
  "Add a prefixed comment with a unique ID and optional context, and record it in Org mode."
  (let* ((comment-start "// ") ;; Explicitly set the comment style for C
         (content (or context (read-string (concat prefix ": "))))
         (id (org-id-new))
         (timestamp (format-time-string "%Y-%m-%d %H:%M:%S"))
         (source-file (or (buffer-file-name) "unknown"))
         (source-file-name (file-name-nondirectory source-file))
         (tag (format "@(dleiferives,%s): " id))
         (raw-comment-string (concat prefix " " tag content " ~#"))
         (org-file (expand-file-name "todos.org" org-directory))
         (comment-start-length (length comment-start)))
    ;; Insert the formatted comment in the source file based on code indentation
    (save-excursion
      (let ((indentation (save-excursion
                           (beginning-of-line)
                           (current-indentation))))
        (beginning-of-line)
        (open-line 1)
        (let* ((available-width (- fill-column comment-start-length indentation -2))
               (formatted-text (with-temp-buffer
                                 (insert raw-comment-string)
                                 (let ((fill-column available-width))
                                   (fill-region (point-min) (point-max)))
                                 (buffer-string)))
               (lines (delete-dups (split-string formatted-text "\n")))
               (first-line t))
          (while lines
            (let ((line (car lines)))
              (insert (make-string indentation ? ))
              (insert comment-start)
              (if first-line
                  (insert line)
                (insert (string-trim-left line)))
              (when (cdr lines)  ; Only add newline if not last line
                (newline))
              (setq lines (cdr lines)
                    first-line nil))))))
    ;; Add a corresponding TODO in the Org file
    (with-current-buffer (find-file-noselect org-file)
      (goto-char (point-max))
      (insert (format "\n* TODO %s\n  :PROPERTIES:\n  :ID:       %s\n  :TAG:      %s\n  :CREATED:  %s\n  :END:\n  [[file:%s][%s]]\n  %s"
                      content
                      id
                      tag
                      timestamp
                      source-file
                      source-file-name
                      content))
      (save-buffer))))



(defun find-todo-in-org ()
  "Find the corresponding TODO entry in Org mode from the current comment."
  (interactive)
  (let* ((line (thing-at-point 'line t))
         (id (and (string-match "@(dleiferives,\\([^)]*\\)):" line)
                  (match-string 1 line)))
         (org-file (expand-file-name "todos.org" org-directory)))
    (if id
        (progn
          (find-file org-file)
          (goto-char (point-min))
          (if (re-search-forward (format ":ID:       %s" id) nil t)
              (org-show-entry)
            (message "TODO entry not found for ID: %s" id)))
      (message "No valid ID found in the current comment."))))

(defun mark-todo-as-done-and-remove-comment ()
  "Mark the corresponding TODO in Org as done and remove the source comment block."
  (interactive)
  (let* ((line (thing-at-point 'line t))
         (id (and (string-match "@(dleiferives,\\([^)]*\\)):" line)
                  (match-string 1 line)))
         (org-file (expand-file-name "todos.org" org-directory)))
    (if id
        (progn
          ;; Locate and remove the exact comment block
          (save-excursion
            (beginning-of-line)
            (let ((start nil)
                  (end nil))
              ;; Find the start of the comment block
              (while (and (not start) (not (bobp)))
                (if (string-match (concat "@(dleiferives," id "):") (thing-at-point 'line t))
                    (setq start (point))
                  (forward-line -1)))
              (when start
                (goto-char start)
                ;; Find the end of the comment block
                (while (and (not end) (not (eobp)))
                  (if (string-match "~#$" (thing-at-point 'line t))
                      (setq end (line-end-position))
                    (forward-line 1)))
                ;; Remove the comment block
                (when end
                  (delete-region start (1+ end))
                  (message "Comment block removed.")))))
          ;; Mark TODO as DONE in Org mode
          (with-current-buffer (find-file-noselect org-file)
            (goto-char (point-min))
            (if (re-search-forward (format ":ID:       %s" id) nil t)
                (progn
                  (org-todo 'done)
                  (org-set-property "COMPLETED" (format-time-string "%Y-%m-%d %H:%M:%S"))
                  (save-buffer)
                  (message "Marked as done and removed associated comment block."))
              (message "TODO entry not found in Org file for ID: %s" id))))
      (message "No valid ID found in the current comment."))))

(defun update-org-entry-from-comment (id new-content)
  "Update an existing Org entry identified by ID with NEW-CONTENT."
  (let ((org-file (expand-file-name "todos.org" org-directory)))
    (with-current-buffer (find-file-noselect org-file)
      (goto-char (point-min))
      (if (re-search-forward (format ":ID:       %s" id) nil t)
          (progn
            (org-entry-put (point) "ITEM" new-content)
            (save-buffer))
        (message "No matching Org entry found for ID: %s" id)))))





(defun add-todo-comment () (interactive) (add-comment-with-id "TODO"))
(defun add-note-comment () (interactive) (add-comment-with-id "NOTE"))
(defun add-warn-comment () (interactive) (add-comment-with-id "WARN"))
(defun add-question-comment () (interactive) (add-comment-with-id "QUESTION"))
(defun add-answer-comment () (interactive) (add-comment-with-id "ANSWER"))
(defun add-idea-comment () (interactive) (add-comment-with-id "IDEA"))

(defun my-org-insert-todo-with-id ()
  "Insert a new TODO entry with a unique ID, timestamp, and properties.
   If not under a heading, create a new heading. Otherwise, add as a subheading."
  (interactive)
  (let* ((id (org-id-new))
         (timestamp (format-time-string "%Y-%m-%d %H:%M:%S"))
         (content (read-string "TODO: "))
         (tag (format "@(dleiferives,%s): " id)))
    (if (org-before-first-heading-p)
        (progn
          (org-insert-heading)
          (org-todo "TODO"))
      (org-insert-heading-respect-content)
      (org-do-demote)
      (org-todo "TODO"))
    (insert " " content)
    (org-end-of-subtree)
    (insert "\n:PROPERTIES:\n:ID:       " id
            "\n:TAG:      " tag
            "\n:CREATED:  " timestamp
            "\n:END:\n")
    (org-back-to-heading)
    (org-id-get-create)
    (org-end-of-subtree)))



(defun choose-todo-function ()
  "Choose between my-org-insert-todo-with-id and add-todo-comment based on major mode."
  (interactive)
  (if (eq major-mode 'org-mode)
      (my-org-insert-todo-with-id)
    (add-todo-comment)))

(defun choose-note-function ()
  "Choose between my-org-insert-todo-with-id and add-note-comment based on major mode."
  (interactive)
  (if (eq major-mode 'org-mode)
      (my-org-insert-todo-with-id)
    (add-note-comment)))

(defun choose-warn-function ()
  "Choose between my-org-insert-todo-with-id and add-warn-comment based on major mode."
  (interactive)
  (if (eq major-mode 'org-mode)
      (my-org-insert-todo-with-id)
    (add-warn-comment)))

(defun choose-question-function ()
  "Choose between my-org-insert-todo-with-id and add-question-comment based on major mode."
  (interactive)
  (if (eq major-mode 'org-mode)
      (my-org-insert-todo-with-id)
    (add-question-comment)))

(defun choose-answer-function ()
  "Choose between my-org-insert-todo-with-id and add-answer-comment based on major mode."
  (interactive)
  (if (eq major-mode 'org-mode)
      (my-org-insert-todo-with-id)
    (add-answer-comment)))

(defun choose-idea-function ()
  "Choose between my-org-insert-todo-with-id and add-idea-comment based on major mode."
  (interactive)
  (if (eq major-mode 'org-mode)
      (my-org-insert-todo-with-id)
    (add-idea-comment)))

(map! :leader
      (:prefix ("l" . "custom comments")
       :desc "Add TODO entry/comment" "t" #'choose-todo-function
       :desc "Add NOTE entry/comment" "n" #'choose-note-function
       :desc "Add WARN entry/comment" "w" #'choose-warn-function
       :desc "Add QUESTION entry/comment" "q" #'choose-question-function
       :desc "Add ANSWER entry/comment" "a" #'choose-answer-function
       :desc "Add IDEA entry/comment" "i" #'choose-idea-function
       :desc "Find TODO in Org" "l" #'find-todo-in-org
       :desc "Mark as DONE and remove comment" "d" #'mark-todo-as-done-and-remove-comment
       :desc "Update Org entry" "u" #'update-org-entry-from-comment))




(require 'dap-cpptools)

(setq doom-font (font-spec :family "CodeNewRoman Nerd Font Mono"))



(after! org (setq org-todo-keywords
      '((sequence "TODO(t)" "PROJ(p)" "LOOP(r)" "STRT(s)"  "HOLD(h)" "IDEA(i)" "|" "DONE(d)" "WONTDO(w)" "KILL(k)")
        (sequence "[ ](T)" "[-](S)" "[?](W)" "|" "[X](D)")
        (sequence "|" "OKAY(o)" "YES(y)" "NO(n)")
        (sequence "QUESTION(q)" "ANSWER(a)"))))

;;Store the original frame-title-format
(defvar original-frame-title-format frame-title-format)

(defun custom-frame-title-format-internals ()
  (if (buffer-file-name)
      (abbreviate-file-name (buffer-file-name))
    (or (and (boundp 'treemacs--current-workspace)
             (treemacs-workspace->name (treemacs-current-workspace)))
        (buffer-name))))

(defun custom-frame-title-format ()
  (concat (if (listp original-frame-title-format)
              (format-mode-line original-frame-title-format)
            original-frame-title-format)
          " - "
          (custom-frame-title-format-internals)))

;; Set the new frame-title-format
(after! doom-ui (setq frame-title-format '(:eval (custom-frame-title-format))))

(defun open-psi-file ()
  "Open file matching \\psi_<SOMETHING> pattern under cursor in /mnt/c/obsidian/psi."
  (interactive)
  (let* ((syntax-table (make-syntax-table))
         (word (with-syntax-table syntax-table
                 (modify-syntax-entry ?\\ "w")
                 (thing-at-point 'word t)))
         (match (and word (string-match "\\\\psi_\\(.+\\)" word))))
    (if match
        (let* ((file-pattern (match-string 1 word))
               (search-dir "/mnt/c/obsidian/psi")
               (command (format "rg --files -g '*%s*' %s" file-pattern search-dir))
               (result (shell-command-to-string command)))
          (if (not (string-empty-p result))
              (find-file (car (split-string result "\n" t)))
            (message "No matching file found for %s" file-pattern)))
      (message "No \\psi_<SOMETHING> pattern found under cursor"))))


(map! :leader
      :desc "Open psi file under cursor"
      "o p" #'open-psi-file)
