#lang s-exp stamps/lang 

(define (w i m d a)
  ; simple sin wave
  (* m (- a
          (abs
           (sin (degrees->radians (* d i)))))))

(define (w2 i m d a)
  ; sin wave + a smaller sine wave
  (+ (w i m d a)
     (w (* i 1.1) (/ m 5) (* d 5) 0)))

(define (w3 i m d a)
  ; sin wave + a smaller sine wave
  ; + a much bigger one
  (+ (w i m d a)
     (w (* i 1.1) (/ m 5) (* d 5) 0)
     (w (* i 1.3) m (/ d 3) (/ a 3))))

(define-shape (H o)
  ((loop ([a 500])
         (square [x a]
                 [s 1.5 (w3 (+ a o) 80 1 1.6)]
                 [y .5]
                 )))
  ((H (+ o (ri 50 300)))
   [s 1 .8]
   [y -2]
   [b .15])
  )

(define-shape I
  (square [s 500 170]
          [t .5 -.5]
          [sat 0] [b 1]
          [z-order 1]))

(define-shape scene
  ((H 0)
   [hue 220]
   [saturation 0.5])
  (I)
)

(bounding '(-500 -170 0 20))
(background '(200 1 1))
(maximum-render-cycles 10000)
(start-shape scene)