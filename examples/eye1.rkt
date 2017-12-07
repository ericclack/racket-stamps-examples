#lang s-exp stamps/lang 

; Copyright Eric Clack 2017. This work is licensed under a Creative Commons
; Attribution-ShareAlike 4.0 International License.

(define-shape iris
  (lines [alpha -.8]
         [sat 1]
         [brightness .6]))

(define-shape lines
  (square [s 100 5])
  (lines [r (rr 0 5)]))

(define-shape pupil
  (circle [s 30]))

(define-shape scene
  (iris [h 190])
  (pupil
   ;[z 1]
   )
)

(maximum-render-cycles 300)
(start-shape scene)