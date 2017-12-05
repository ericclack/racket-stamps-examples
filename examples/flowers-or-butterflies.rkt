#lang s-exp stamps/lang 

; Copyright Eric Clack 2017. This work is licensed under a Creative Commons
; Attribution-ShareAlike 4.0 International License.

(define (wobble w a)
  ;; vary width w by up to 20% using sin and a
  (+ w (* (* w .2) (sin (/ a 4)))))

(define-shape circle
  ((lines 0) [alpha -.9]
             [sat 1]
             [brightness 1]))

(define-shape (lines i)
  ; draw lines around rotated around centre point
  ; i is a simple counter for input into wobble
  (square [s (wobble 100 i) 5])
  ((lines (add1 i)) [r (rr 0 5)]))

(define-shape scene
  (circle [h 30])
  (scene [t (ri -160 160)]
         [h (ri 0 60)]))

(background '(0 0 0))
; change cycles to draw more or less circles
(maximum-render-cycles 10000)
(start-shape scene)