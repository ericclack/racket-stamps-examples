#lang s-exp stamps/lang 

(define-shape H-outline
  ((loop ([i 6])
         (square [r (* i 60)]
                 [y .44]
                 [s .52 .02]))))

(define-shape H
  (hexagon [b 1]
           [sat -1])
  (hexagon)
  (H-outline [b 1]
             [sat -1]
             [alpha -.3])
  (H-children)
)

(define-shape H-children
  [10 =>
      (H [r -60]
         [y .352]
         )
      (H [r 60]
         [y .352]
         )]
  [10 =>
      (H [r -60]
         [y .352]
         )]
  [10 =>
      (H [r 60]
         [y .352]
         )]
)

(define-shape scene
  (H 
     [alpha -.8]
     [b .5]
     [sat 1]
     [hue 200]
     [r 30]))

(maximum-render-cycles 5000)
(start-shape scene)