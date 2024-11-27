;c1_0 and not c2_0 and c1_1 and not c2_1 and not c1_2
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
(assert (not (=(+ 1.0 k) 0.0)))
(assert (not(< 2 3)))

(check-sat)
(get-model)