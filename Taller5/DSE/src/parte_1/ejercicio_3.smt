; Ejercicio 3
; COMPLETAR
(declare-const a1 Real)
(declare-const a2 Real)
(declare-const a3 Real)
(assert (= a1 (mod 16 2)))   ; mod
(assert (= a2 (div 16 4)))   ;  division
(assert (= a3 (rem 16 5)))   ;remainder
(check-sat)
(get-model)