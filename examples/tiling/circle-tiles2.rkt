#lang s-exp stamps/lang 

(define-shape C
  (circle [b 1])
  (circle [s .95])
  (C-children))

(define-shape C-children
  [1 =>
     (C [r -60]
        [y .4]
        [x -.25]
        )
     (C [r 60]
        [y .4]
        [x -.25]
        )]
  [1 =>
     (C [r -60]
        [y .4]
        [x -.25]
        )]
  [1 =>
     (C [r 60]
        [y .4]
        [x -.25]
        )]
)

(define-shape scene
  (C 
     [alpha -.8]
     [b .3]))

(maximum-render-cycles 1000)
(start-shape scene)