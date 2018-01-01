#lang s-exp stamps/lang 

(define-shape P
  (pentagon [b 1])
  (pentagon [s .95])
  
  (P [r -36]
     [y .75] [x -.245]
     [b .1] [h 5])
  (P [r 36]
     [y .75] [x -.245]
     [b -.1] [h -5])
)

(define-shape scene
  (P [r -9]
     [alpha -.7]
     [b .5]
     [sat .7]
     [hue 20]))

(maximum-render-cycles 7000)
(start-shape scene)