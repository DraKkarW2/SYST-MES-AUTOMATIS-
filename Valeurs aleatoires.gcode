G28
G92 E0
G1 Z10 F200
G1 X50 Y15 F2000
T0 ; je n'ai pas tellement compris mais en gros c'est un preset je crois d'après la doc à chercher !!!
M92 E400 ;Défini les pas de l’axe E à 400 pas/tour de vis
G1 Z7 F200 ;Redescente à Z=0 à 200 mm/mn
G92 X0 Y0 Z0 ;La position actuelle est origine des axes X,Y et Z
; ------------------------------------ Cordon 1 e=0.4, h=0, Vx=200 pour le plan d'exp c'est la ligne 1 normalement et la on commence vraiment-----------------------------------; 
G1 Z25 F2000 ; élever la buse à Z20 pour le retour après avoir réalisé un premier cordon (essai 0) 
G1 X0 F2000 ; se repositionner au début de la ligne 
G1 Y10 Z0.5 F2000; se décaler de l’axe des Y pour réaliser un nouveau cordon et adapter le Z 
M92 E4000 
G1 E0.5 X70 F100 
G1 X140 F100
G1 Z50 