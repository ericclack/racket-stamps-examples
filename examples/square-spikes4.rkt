#lang s-exp stamps/lang 

; ratio of base of triangle to height
(define st 0.1)
; angle of triangle edge relative to 90 deg
; (radians->degrees (atan st)) seems an approximation
(define a 4.2)
; scale of the sub-tris
(define sc .49)
; distance of left and right from main tri
(define d 1)

(define-shape T
  (triangle [s st 1])
  ; right sub 1 on the triangle
  (T [r 90]
     [y .15]
     [x .15]
     [s sc]
     [r (- a)]
     )
  ; left sub 1 on the triangle
  (T [r -90]
     [y .15]
     [x -.15]
     [s sc]
     [r a]
     )
  ; left and right sub either side of main tri
  (T [s sc]
     [x d]
     [y -.3]
     [brightness -.3]
     [z-order -1]
     )
  (T [s sc]
     [x (- d)]
     [y -.3]
     [brightness -.3]
     [z-order -1]
     )
  )


(define-shape scene
  (T [brightness 1])
  )

(background '(250 1 .1))
(maximum-render-cycles 50000)
(start-shape scene)