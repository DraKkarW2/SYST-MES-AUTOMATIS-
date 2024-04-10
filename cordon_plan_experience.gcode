<<<<<<< HEAD
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


=======
G28
G1 Z10 F200
G1 X45 Y15 F2000
T0 ; je n'ai pas tellement compris mais en gros c'est un preset je crois d'après la doc à chercher !!!
M92 E400 ;Défini les pas de l’axe E à 400 pas/tour de vis
G1 Z2.1 F200 ;Redescente à Z=0 à 200 mm/mn
G92 X0 Y0 Z2.1 ;La position actuelle est origine des axes X,Y et Z
	;------------------------------------ Cordon 0 | Purge = non exploitable pour le plan d'exp à changer mais c'est la ligne 0 normalement elle ne compte pas c'est du "calibrage"------------------------------------;
G1 X0 Y0 F4000	;Déplacement à X=0mm et Y=0mm à 4000 mm/mn
G1 Z2.1 F300;	Déplacement à Z=0mm à 300 mm/mn
G1 X5 ;Déplacement à X=5mm 
G92 E0 ;La position actuelle de E est origine 
G1 E0.5 X70 F200 ;Déplacement avec encollage à X=70 Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140 pour en gros essuyer la colle on va dire
G1 Z5 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn ici il faut nettoyer et vite j'ai mis une pause après
	; ------------------------------------ Cordon 1 e=0.4, h=0, Vx=200 pour le plan d'exp c'est la ligne 1 normalement et la on commence vraiment-----------------------------------;
G4 P1000 ;Attente de 1 s pour nettoyer et la c'est bonne chance sinon il faut augmenter on verra
G1 X0 Y10 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attendre encore  1 s pour voir s'il n'y a plus de goutte qui traine sinon re-nettoyer 
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y15 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.1 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.4 X70 F200 ;Déplacement avec encollage à X=70 ;Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn
	; ------------------------------------Cordon 2  e=0.4, h=0, Vx=600 -----------------------------------;
G4 P1000 ;Attente de 1 s pour nettoyer et la c'est bonne chance sinon il faut augmenter on verra
G1 X0 Y20 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attente de 1 s pour les gouttes de colle
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y25 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.1 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.4 X70 F600 ;Déplacement avec encollage à X=70 ;Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn
G4 P1000 ;Attente de 1 s pour nettoyer
	;------------------------------------ Cordon 3 e=0.4, h=0.6, Vx=200 -----------------------------------;
G1 X0 Y30 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attente de 1 s pour les gouttes de colle
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y35 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.7 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.4 X70 F200 ;Déplacement avec encollage à X=70 ;Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn
G4 P1000 ;Attente de 1 s pour nettoyer
	;------------------------------------ Cordon 4 e=0.4, h=0.6, Vx=600 ------------------------------------;
G1 X0 Y40 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attente de 1 s
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y45 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.7 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.4 X70 F600 ;Déplacement avec encollage à X=70 ;Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn
G4 P1000 ;Attente de 1 s pour nettoye
	;------------------------------------ Cordon 5 - e=0.8, h=0, Vx=200------------------------------------;
G1 X0 Y50 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attente de 1 s
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y55 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.1 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.8 X70 F200 ;Déplacement avec encollage à X=70 ;Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn
G4 P1000 ;Attente de 1 s pour nettoyer
	;------------------------------------ Cordon 6 - e=0.8, h=0, Vx=600 ------------------------------------;
G1 X0 Y60 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attente de 1 s
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y65 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.1 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.8 X70 F600 ;Déplacement avec encollage à X=70 ;Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn
G4 P1000 ;Attente de 1 s pour nettoyer
	;------------------------------------ Cordon 7 - e=0.8, h=0.6, Vx=200 ------------------------------------;
G1 X0 Y70 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attente de 1 s
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y75 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.7 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.8 X70 F200 ;Déplacement avec encollage à X=70 ;Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn
G4 P1000 ;Attente de 1 s pour nettoyer
	;------------------------------------ Cordon 8 - e=0.8, h=0.6, Vx=600 ------------------------------------;
G1 X0 Y80 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attente de 1 s
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y85 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.7 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.8 X70 F600 ;Déplacement avec encollage à X=70 ;Vitesse 200mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn
G4 P1000 ;Attente de 1 s pour nettoyer enfin c'est la fin donc on va l'enlever normalement si ont a pas 2 qi je crois ????????????;
>>>>>>> 54a5618c2c59a914341823365cb49502441b5328
