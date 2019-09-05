;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define (boat x)
  (scale x
         (above/align "left"
          (triangle/sas 20 90 120 "solid""seagreen")
          (rectangle 2 15 "solid""silver")
          (rectangle 100 25 "solid""blue"))))

(define (tree x)
  (scale x
         (place-images
          (list
           (triangle 25 "solid""green")
           (triangle 45 "solid""green")
           (triangle 65 "solid""green")
           (triangle 95 "solid""green")
           (rectangle 10 60 "solid""brown"))
          (list
           (make-posn 150 155)
           (make-posn 150 170)
           (make-posn 150 190)
           (make-posn 150 210)
           (make-posn 150 240))
         (empty-scene 300 300))))

   