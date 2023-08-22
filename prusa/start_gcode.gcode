; from https://gist.github.com/SilentEchoGM/395e3d2cfe2370a6c75338d50aef20e0
G91 ; use relative positioning
G0 Z5; move Z up 5mm prior to homing

M117 Heating bed and hot end... ; Message
M140 S[first_layer_bed_temperature] ; set bed temp
M104 S80 ; set hot end to a relatively low temp to save time after levelling
M190 S[first_layer_bed_temperature] ; wait for bed temp

M117 Waiting for bed expansion ; Message
G4 S60 ; wait 1 minute for the bed to expand

G90 ; use absolute positioning
M83 ; extruder relative mode

M117 Homing... ; Message
G28 ; home all
M117 Levelling... ; Message
G29 ; auto bed level

G92 E0 ; reset extruder
M117 Heating hot end ; Message
M104 S[first_layer_temperature] ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp

M117 Starting pring ; Message
G1 Z2 F240
G1 X2 Y10 F3000
G1 Z0.28 F240
G92 E0.0
G1 Y190 E15.0 F1500.0 ; intro line
G1 X2.3 F5000
G1 Y10 E30 F1200.0 ; intro line
G92 E0.0
