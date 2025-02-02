(define (plus1 a b)
    (display a)
    (display b)
    (newline )
    (if (= a 0)
        b
        (inc (plus1 (dec a) b))))

(define (plus2 a b)
    (display a)
    (display b)
    (newline )
    (if (= a 0)
        b
        (plus2 (dec a) (inc b))))

(define (dec n) (- n 1))

(define (inc n) (+ n 1))