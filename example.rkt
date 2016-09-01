#lang racket

(require "libnotify.rkt"
         pict)

(define note
  (new notification%
       [summary "Hello World!"]
       [body "This is a test message"]
       [icon (pict->bitmap (colorize (disk 40) "blue"))]
       [timeout 2]
       [urgency 'low]
       [category "presence"]))

(define racket-icon
  (new notification%
       [summary "Racket"]
       ;; [icon (collection-file-path "plt-32x32.png" "icons")]
       [icon (collection-file-path "shadowsocks-qt5.png" "~/test")]
       [urgency 'critical]))

(send note show)
(send racket-icon show)
