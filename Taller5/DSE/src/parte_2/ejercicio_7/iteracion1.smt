;c1_0
;C1_0= (0 < n)
;C1_1= (1 < n)
;C1_2= (2 < n)
(declare-const n Int)
(assert (< 0 n))
(check-sat)
(get-model)