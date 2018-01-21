#lang s-exp stamps/lang 

(define-shape circle
  (lines [alpha -.9]
         [sat 1]
         [brightness .5]))

(define-shape lines
  (square [s 100 5])
  (lines [r (rr 0 5)]))

(define-shape scene
  (circle [h 200])
  (circle [t 36 0]
          [h 300])
  (circle [t -36 0]
          [h 250])
)

(maximum-render-cycles 1000)
(start-shape scene)