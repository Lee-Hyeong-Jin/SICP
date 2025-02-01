(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

(define (improve guess x)
    (f (g x guess) (double guess)))

(define (double x)
    (* 2 x))

(define (g x y)
    (/ x (square y)))

(define (f x y)
    (/ (+ x y) 3))

(define (cube x) 
    (* x x x))

(define (good-enough? guess x)
    (< (abs (- (/ (cube guess) x) 1)) 0.000000001))

(define (sqrt-3 x)
    (sqrt-iter 1.0 x))