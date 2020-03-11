; tpre2.g
; called before tool 2 is selected

;Unlock Coupler
M98 P"/macros/Coupler - Unlock"	; unlock Coupler

M564 S0 						; allow movement outside the normal limits

G1 X66.2 Y50 F50000				; move to location
G1 Y104 F50000					; move in
G1 Y119.0 F2500					; collect

M98 P"/macros/Coupler - Lock"	; close Coupler

;WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!
;if you are using non-standard length hotends ensure the bed is lowered enough BEFORE undocking the tool!
G91
G1 Z10 F1000
G90

G1 Y50 F4000					; move out

M208 Y49						; set Y max for this tool
M564 S1 						; apply the normal limits again
