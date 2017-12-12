#lang s-exp stamps/lang 

(define (rand size deg wobble)
  (+ size
     (* wobble (sin (degrees->radians
                 (* deg wobble))))))

(define qual 4)

(define-shape (wcircle size wobble)
  ((loop ([deg (* 360 qual)])
         (square [r (/ deg qual)]
                 [x (rand size (/ deg qual) wobble)]
                 [y (rand 0 (* deg 10) 2)]
                 ))))

(define-shape scene
  ((loop ([i 10])
         ((wcircle (ri 40 100) (ri 5 20))
          [alpha -0.5]
          [rotate (rr 0 180)]
          [hue (rr 30 120)]
          [sat 1]
          [brightness 1])
         )))

(background '(0 0 0))
(maximum-render-cycles 50000)
(start-shape scene)