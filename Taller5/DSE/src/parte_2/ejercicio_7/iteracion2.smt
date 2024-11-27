;c1_0 and c1_1
;C1_0= (0 < n)
;C1_1= (1 < n)
;C1_2= (2 < n)


(declare-const n Int)
(assert (< 0 n))
(assert (< 1 n))


(check-sat)
(get-model)