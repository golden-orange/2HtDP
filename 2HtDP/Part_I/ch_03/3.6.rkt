;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3.6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)


;; PHYSICAL CONSTANTS
; for use in empty-scene
(define WIDTH-OF-WORLD 200)
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))

;; GRAPHICAL CONSTANTS
; WHEEL
(define WHEEL
  (circle WHEEL-RADIUS "solid""black"))

(define CHASSIS
  (rectangle WHEEL-RADIUS WHEEL-RADIUS "solid""red"))

(define BOTH-WHEELS
  (beside WHEEL CHASSIS WHEEL))

(define (mycar BOTH-WHEELS))

;; main
;(define (main ws)
;  (big-bang ws
;   [on-tick tock]
;   [to-draw render]))


  
  
