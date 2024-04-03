; Initialisation et positionnement
G92 Z15 ;paramétrage de l'axe Z à 15 mm 
G28 X0 Y0 ; Retour à la position d'origine
G1 X0 Y5 F4000 ; Déplacement rapide à la position de départ
G1 Z0 F400 ; Descente à la hauteur d'application de colle
G4 P1500 ; Pause pour stabiliser

; Premier cordon (bas de la coque) avec coin arrondi en bas à droite
G1 X3 F300 ; Mouvement pour nettoyer/essuyer la buse
G1 X0 Y10 Z0.2 F300 ; Positionnement au début du cordon
G92 E0 ; Réinitialisation de l'extrudeur
G1 X10;
G1 E0.4 X65 F400 ; Déplacement avec encollage le long du bas jusqu'au coin arrondi
G3 X70 Y15 I0 J5 E0.45 F300 ; Coin arrondi en bas à droite
G1 X70 Y85 E0.4 F400 ; Côté droit

; Pause et changement de vitesse pour le coin supérieur droit
G4 P500 ; Pause courte
G1 X70 Y85 E0.4 F300 ; Ralentissement avant le coin supérieur droit
G3 X60 Y110 I-5 J0 E0.45 F300 ; Coin arrondi en haut à droite
G1 X10 Y90 E0.4 F300 ; Côté supérieur

; Troisième cordon (côté gauche) avec coin arrondi en haut à gauche
G1 X10 Y90 E0.4 F300 ; Approche du coin supérieur gauche
G3 X0 Y85 I0 J-5 E0.45 F300 ; Coin arrondi en haut à gauche
G1 X05 Y20 E0.4 F300 ; Côté gauche

; Quatrième cordon et fin de l'encollage avec coin arrondi final en bas à gauche
G1 X05 Y15 E0.4 F300 ; Approche du dernier coin
G3 X05 Y0 I5 J0 E0.45 F300 ; Coin arrondi en bas à gauche pour boucler le contour


; Nettoyage final et montée de la tête
G1 Z10 F1200 ; Remontée de la tête après encollage
G1 X3 F300 ; Déplacement pour nettoyer/essuyer la buse

; Signal de fin de travail
M300 S300 P1000 ; Jouer un son (si pris en charge)
M117 Travail Termine ; Afficher un message sur l'écran LCD (si pris en charge)

; Fin du programme
M104 S0 ; Éteindre la tête d'encollage (si chauffée)
M140 S0 ; Éteindre le plateau chauffant (si utilisé)
M84 ; Désactiver les moteurs 