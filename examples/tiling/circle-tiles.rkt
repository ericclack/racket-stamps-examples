#lang s-exp stamps/lang 

(define-shape C
  (circle [b 1])
  (circle [s .95])
  
  (C [r -60]
     [y .5]
     )
  (C [r 60]
     [y .5]
     )
)

(define-shape scene
  (C 
     [alpha -.8]
     [b .2]))

(maximum-render-cycles 1000)
(start-shape scene)