#lang s-exp stamps/lang 

(define-shape Oct1
  ((polygon 8) [r 22.5])
  ((polygon 3) [y .63] [r -90] [s .45])
  ((polygon 4) [y -.69] [r 45] [s .54])
  ((polygon 5) [x .76] [r 180] [s .65])
  ((polygon 6) [x -.82] [r 30] [s .75])
  )

(define-shape Oct2
  ((polygon 8) [r 22.5])
  ((polygon 7) [y .9] [r -90] [s .87])
  ((polygon 9) [y -1.03] [r 10] [s 1.1])
  ((polygon 10) [x 1.11] [r 18] [s 1.25])
  ((polygon 11) [x -1.15] [r 0] [s 1.35])
  )

(define-shape scene
  (Oct2
     [alpha -.5]
     [b .3]))

(maximum-render-cycles 6000)
(start-shape scene)