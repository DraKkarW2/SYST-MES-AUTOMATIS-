G28
G1 Z10 F200
G1 X45 Y15 F2000
T0 ; je n'ai pas tellement compris mais en gros c'est un preset je crois d'après la doc à chercher !!!
M92 E400 ;Défini les pas de l’axe E à 400 pas/tour de vis
G1 Z2.1 F200 ;Redescente à Z=0 à 200 mm/mn
G92 X0 Y0 Z2.1 ;La position actuelle est origine des axes X,Y et Z
; ------------------------------------ Cordon 1 e=0.4, h=0, Vx=200 pour le plan d'exp c'est la ligne 1 normalement et la on commence vraiment-----------------------------------;
G4 P1000 ;Attente de 1 s pour nettoyer et la c'est bonne chance sinon il faut augmenter on verra
G1 X0 Y10 F4000 ;Retour à X=0 et avance à Y=5 Vit rapide 4000mm/mn
G1 Z2.1 ;Descente à z=0 La vitesse de 4000mm/mn est conservée
G4 P1000 ;Attendre encore  1 s pour voir s'il n'y a plus de goutte qui traine sinon re-nettoyer 
G1 X3 ;Déplacement à X=3 pour essuyer la pointe de l’aiguille 
G1 X0 Y15 Z10 ;Déplacement à X=0 et avance à Y=10 en position travail
G1 Z2.1 F300	;Montée à Z=0 Vitesse 300mm/mn
G92 E0	;Initialisation de l’axe E à 0 Pour mouv. relatif de l’axe E
G1 E0.4 X70 F50 ;Déplacement avec encollage à X=70 ;Vitesse 50mm/mn
G1 X140	;Déplacement sans encollage à X=140
G1 Z10 F300 ;Montée à z=5 pour dégager la pièce Vitesse max 300 mm/mn