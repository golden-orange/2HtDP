;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1.1 -|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; exercise 1
; imagine x, y are the coordinates of a Cartesian point
; write expression that computes distance from this point to the origin
; points 3, 4 = 5

(define (distance-to-origin x y)
  (sqrt
   (+
    (sqr x)(sqr y))))

(define prefix "hello")
(define suffix "world")

(define (hello-world x y)
  (string-append prefix "_" suffix))

(define str "helloworld")
(define i 5)
;; (define (hello-world-again str i))


(define (delete-string x y)
  (string-length
   (string-ith str i)))



  
