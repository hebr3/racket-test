#lang racket
(require web-server/servlet
         web-server/servlet-env)
 
(define (start req)
  (response/xexpr
   `(html (head (title "Hello world!"))
          (body (p "Hey out there!")))))
 
(serve/servlet start
               #:port 8000
               #:listen-ip #f
               #:servlet-path "/"
               #:command-line? #t
               #:stateless? #t)