;c1_0 and not c2_0 and c1_1 and c2_1 and c1_2 and c2_2
;C1_0= (0 < 3)
;C2_0= (5 + k==0)
;C1_1= (1 < 3)
;C2_1= (1 + k==0)
;C1_2= (2 < 3)
;C2_2= (3 + k==0)
;C1_3= (3 < 3)

(declare-const k Real)
(assert (< 0 3))
(assert (not (=(+ 5.0 k) 0.0)))
(assert (< 1 3))
(assert (=(+ 1.0 k) 0.0))
(assert (< 2 3))
(assert (=(+ 3.0 k) 0.0))

(check-sat)
(get-model)