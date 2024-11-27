;not c1_0
;C1_0= (0 < 3)
;C2_0= (5 + k==0)
;C1_1= (1 < 3)
;C2_1= (1 + k==0)
;C1_2= (2 < 3)
;C2_2= (3 + k==0)
;C1_3= (3 < 3)

(declare-const k Real)
(assert (not(< 0 3)))



(check-sat)
(get-model)