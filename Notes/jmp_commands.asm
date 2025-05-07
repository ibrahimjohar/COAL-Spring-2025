;JE -> jump if equal
;JG/JNLE -> jump if greater/jump if not less than or equal
;JL/JNGE -> jump if lesser/jump if not greater than or equal
;JGE/JNL -> jump if greater or equal/jump if less
;JLE/JNG -> jump if less or equal/jump if not greater
;JNE -> jump if not equal

;JZ -> jump if zero         -> ZF = 1
;JNZ -> jump if not zero    -> ZF = 0
;JC -> jump if carry        -> CF = 1
;JNC -> jump if not carry   -> CF = 0
;JO -> jump if overflow     -> OF = 1 
;JNO -> jump if not overflow -> OF = 0
;JS -> jump if signed       -> SF = 1
;JNS -> jump if not signed  -> SF = 0
;JP -> jump if parity(even) -> PF = 1
;JNP -> jump if not parity  -> PF = 0
