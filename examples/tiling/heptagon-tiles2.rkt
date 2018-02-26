#lang s-exp stamps/lang 

(define-shape heptagon
  ((polygon 7)))

(define-shape OH
  (heptagon [b 1])
  (heptagon [s .95])
)

(define-shape OP
  (pentagon [b 1])
  (pentagon [s .95])
)

(define-shape H
  (OH)
  (OP
   [s .7]
   [y .8]
   [x .65]
   [r (/ 360 7 4)])
  
  (H
     [r (/ 360 7 2)]
     [y .86]
     [x .2]
     )
)

(define-shape scene
  (H
     [alpha -.5]
     [b .3]))

(maximum-render-cycles 300)
(start-shape scene)