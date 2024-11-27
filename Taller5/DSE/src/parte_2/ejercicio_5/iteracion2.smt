; not C1 : not (a <= 0 or b <= 0 or c <= 0)
; not C2 : a + b > c and a + c > b and b + c > a
; not C3 : not (a == b and b == c)
(declare-const a Int)
(declare-const b Int)
(declare-const c Int)
(assert (> a 0))
(assert (> b 0))
(assert (> c 0))
(assert (> (+ a b) c))
(assert (> (+ a c) b))
(assert (> (+ b c) a))
(assert (not (and (= a b) (= b c))))
(check-sat)
(get-model)