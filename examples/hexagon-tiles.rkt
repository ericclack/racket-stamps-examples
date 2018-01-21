#lang s-exp stamps/lang 

(define-shape H
  (hexagon [b 1])
  (hexagon [s .95])
  
  (H [r -60]
     [y .338]
     )
  (H [r 60]
     [y .338]
     )
)

(define-shape scene
  (H 
     [alpha -.8]
     [b .5]))

(maximum-render-cycles 500)
(start-shape scene)