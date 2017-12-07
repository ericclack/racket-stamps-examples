#lang s-exp stamps/lang 

(define (rand size deg wobble)
;  (ri w (/ w 2)))
  (+ size
     (* wobble (sin (degrees->radians
                 (* deg wobble))))))

(define-shape (circle size wobble)
  ((loop ([deg 360])
         (square [r deg]
                 [x (rand size deg wobble)]))))

(define-shape scene
  ((circle (ri 40 80) (ri 5 11))
   [alpha -0.7]
   [rotate (rr 0 180)])
  (scene))

(maximum-render-cycles 50000)
(start-shape scene)