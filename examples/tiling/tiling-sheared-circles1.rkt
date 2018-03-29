#lang s-exp stamps/lang

(define-shape line-of-circles
  (circle [shear (rr -.25 .25)])
  (line-of-circles [x .93]
                   [h 15])
)

(define-shape grid
  (line-of-circles [sat .4] [b .4])
  (grid [y .93]
        [hue 5]))

(maximum-render-cycles 1000)
(background '(0 0 .9))
(bounding '(-14.4 -11 -0.5 -0.3))
(start-shape grid)
