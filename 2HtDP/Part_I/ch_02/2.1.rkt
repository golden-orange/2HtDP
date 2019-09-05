;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2.1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; calculate volume of cube
; number -> number
(define (cvolume x)
  (* x x x))

; calculate surface of cube
; number -> number
; enter 4, expect 96
(define (csurface x)
  (* (sqr x) 6))


; return the first letter of a non-empty string
; string number -> string
; enter "hello" 0, expect "h"
;; revised: second variable unnecessary
;;(define (string-first x y)
(define (string-first x)
  (if
   (null? x)
   "empty string"
   (string-ith x)))


; return the last string from a non-empty string
; string number -> string
; enter "hello" 4, expect "o"
;; revised: second variable unnecessary
;;(define (string-first x y)(define (string-last x y)
(define (string-last x)
  (string-ith x
              (- (string-length x) 1)))

; return the area of an image
; image -> number
; enter (rectangle 20 30 "solid""red"), expect 60
(define (image-area x)
  (* (image-width x) (image-height x)))





  


