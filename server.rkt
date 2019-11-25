#lang web-server
(require web-server/servlet-env)
 
(define (start req)
  (start
   (send/suspend
    (lambda (k-url)
      (response/xexpr
       `(html (body (a ([href ,k-url]) "Hello world!"))))))))
 
(serve/servlet start #:stateless? #t
                     #:launch-browser? #f)