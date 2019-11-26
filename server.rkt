#lang web-server
(require web-server/servlet-env)
 
(define (start req)
  (start
   (send/suspend
    (lambda (k-url)
      (response/xexpr
       `(html (head (title "Hello world!"))
          (body (p "Hey out there!"))))))))
 
(serve/servlet start
               #:port 8000
               #:servlet-path "/"
               ;#:stateless? #t
               ;#:command-line? #t
               )