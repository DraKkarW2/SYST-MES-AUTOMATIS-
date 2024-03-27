G1 X0 Y5 F4000;Retour à X=0 et avance à Y=5 (Vit rapide 4000mm/mn)
G1 Z0 F400;Descente à z=0 (La vitesse de 4000mm/mn est conservée)
G4 P1500 ;Attente de 1 s
G1 X3;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y10 Z3;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z0 F300;Redescente à Z=0 (Vitesse 300mm/mn)
G92 E0;Initialisation de l’axe E à 0 (Pour mouv. relatif de l’axe E)
G1 E0.4 X70 F400;Déplacement avec encollage à X=70 (Vitesse 200mm/mn)
G1 X140 ;Déplacement sans encollage à X=140
G1 Z5 F300  ;Montée à z=5 pour dégager la pièce(Vitesse max 300 mm/mn)
