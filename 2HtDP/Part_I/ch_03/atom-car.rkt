(require 2htdp/image)
(require 2htdp/universe)

;; constants, physical
; car
(define WHEEL-RADIUS 5)

; background
(define WORLD-WIDTH 400)
(define WORLD-HEIGHT 50)

;; constants, graphical
; car
(define HOOD (square 20 "solid""red"))
(define WHEEL (circle WHEEL-RADIUS "solid""black"))
(define SPACE (rectangle (* WHEEL-RADIUS 5) 50 "solid""white"))
(define WHEELS (beside WHEEL SPACE WHEEL))
(define BODY (rectangle (* WHEEL-RADIUS 10) 10 "solid""red"))
(define CHASSIS (above HOOD BODY))

; tree
(define TREE
  (overlay/align "center" "top"
                 (circle 15 "solid""green")
                 (rectangle 5 50 "solid" "brown")))

; tree
(define Y-TREE
  (- WORLD-HEIGHT (/ (image-height TREE) 2)))

; combine graphical constants into car
(define CAR
         (overlay/xy
          CHASSIS
          3 10
          WHEELS))


(define BACKGROUND (empty-scene WORLD-WIDTH WORLD-HEIGHT))


(define Y-CAR (- WORLD-HEIGHT (/ (image-height CAR) 4)))



;;;;;;;;;;;;;;;;;;
;; I don't understand how to draw the car after it is put together...
;; How do I draw the car by adding a var to WHEEL-RADIUS constant?
;; ANSWER: PLACE (place-image CAR 50 Y-CAR BACKGROUND) INSIDE A FUNCTION THAT
;; CONSUMES IT AND RETURNS THE IMAGE "CAR"
;;;;;;;;;;;;;;;;;;

;place image into the scene (draw car and scene)
(define (render x)
  (place-image
    CAR
    x Y-CAR
   BACKGROUND))

;moves the car 3 pixels per clock tick
(define (tock ws)
  (+ ws 1))

;redraws image where user clicks mouse within BACKGROUND
(define (click ws x y button-down)
    (place-image CAR x Y-CAR BACKGROUND))


;end the movie when the car reaches the far right border of background


;create main function to launch
(define (main x)
  (big-bang x
    [on-tick tock]
    [to-draw render]
    [on-mouse click]))
