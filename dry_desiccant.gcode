; EXECUTABLE_BLOCK_START

; Inspired by https://forum.bambulab.com/t/filament-drying-feature-on-p1s/20947/31

; g-code for Filament Drying Process
; Total runtime: 4 hours (16 x 900 seconds = 14400 seconds)

; Home all axes
G28 X Y Z

; Move Z axis to proper height
G1 Z65 F600

M73.2   R1.0 ; Reset left time magnitude

; Set bed temperature (60°C)
M140 S60 ;set bed temp

; Start AUX fan at 70% (179/255)
M106 P2 S179

M190 S60 ;wait for bed temp

; waiting 4 hours
G4 S14400

; Shutdown sequence
M140 S0 ; Turn off bed heating
M107 P2 ; Turn off AUX fan

; Move Z axis to safe height
G1 Z200 F600

M73.2   R1.0 ;Reset left time magnitude
M73 P100 R0
; EXECUTABLE_BLOCK_END