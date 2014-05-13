;;; バックアップファイルを作らない
(setq backup-inhibited t)
;;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
;;; 補完機能
;(partial-completion-mode 1)
;;; スクロールを一行ずつにする
(setq scroll-step 1)
;;; モードラインに情報を表示
(display-time)
(line-number-mode 1)
(column-number-mode 1)
;;; 現在の関数名をモードラインに表示
(which-function-mode 1)
;; 対応する括弧をハイライトする
(show-paren-mode 1)
;; リージョンを色付きにする
(transient-mark-mode 1)
;; 指定行にジャンプする
(global-set-key "\C-xj" 'goto-line)
;; C-w
(defvar ctl-w-map (make-keymap)
  "keymap for kill or copy region")
(fset 'ctl-w-prefix ctl-w-map)
(define-key global-map "\C-w"  'ctl-w-prefix)
;; リージョンをコピー
(define-key global-map "\C-w\C-w"    'copy-region-as-kill)
;; リージョンを削除
(define-key global-map "\C-w\C-k"    'kill-region)
;; リージョンをコメント/アンコメント
(define-key global-map "\C-w\C-c" 'comment-or-uncomment-region)
;; リージョンをインデント
(define-key global-map "\C-w\C-i" 'indent-region)
;; 保存する前に末尾の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; 末尾の空白に色をつける
(when (boundp 'show-trailing-whitespace)
  (setq-default show-trailing-whitespace t))
