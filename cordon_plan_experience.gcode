; Initialisation et positionnement
G28  ; Retour à la position d'origine
G92 X0 Y0 Z0
G1 Z5 ;paramétrage de l'axe Z à 15 mm 
G1 X-50 Y-90 
G92 X0 Y0 Z0 E0
G1 Z0.8
G1 Y10
G1 X0 
 
G1  X70 F200 E400 F1142
G1 X100 F800
G4 P2000 

G92 E0

G1 X0 Y40  
G1 X70  F200 E800 F2285
G1 X0 F800
G4 P2000 

G92 E0

G1 Y80 Z0.2
G1 X100  F200 E800 F2285
G1 X100 F800
G4 P2000 

G92 E0

G1 X0 Y120 Z0.8
G1 X70 F600 E400 F3428
G1 X0 F800
G4 P2000 


