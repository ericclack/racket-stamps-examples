
#lang s-exp stamps/lang



(define-shape line-of-circles
  (circle [shear (rr -.3 .3)])
  (line-of-circles [x .95]
                   [h 15])
)

(define-shape grid
  (line-of-circles [sat .4] [b .5])
  (grid [y .95]
        [hue 5]))

(maximum-render-cycles 1000)
(background '(0 1 1))
(bounding '(-15 -12 0.50 0.50))
(start-shape grid)
