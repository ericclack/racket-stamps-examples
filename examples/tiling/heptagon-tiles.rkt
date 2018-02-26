#lang s-exp stamps/lang 

(define-shape heptagon
  ((polygon 7)))

(define-shape H
  (heptagon [b 1])
  (heptagon [s .95])
  
  (H 
     [r (/ 360 7 2)]
     [y .86]
     [x .19]
     )
  (H [r (+ 180 (/ 360 7))]
     [y .86]
     [x .19]
     )
)

(define-shape scene
  (H
     [alpha -.5]
     [b .3]))

(maximum-render-cycles 5000)
(start-shape scene)