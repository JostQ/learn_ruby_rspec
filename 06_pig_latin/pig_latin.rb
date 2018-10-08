def translate (string)
#On commence par créer un tableau contenant chaque mot de la phrase.
	tab = string.split
#Pour nos tests, nous allons utiliser deux méthodes différentes : 
#La première avec un tableau,
	voyelles = ["a","e","i","o","u","y", "A", "E", "I", "U", "O", "Y"]
#La seconde avec des REGEX.
    ponctuations = /[,;.:!?]/
#Cette boucle permet de parcourir le tableau contenant les mots de la phrase.
	tab.length.times do |i|
#On initialise la variable ponct, pour pouvoir détecter lorsqu'elle est modifiée.
		ponct = ""
#On crée une boucle qui tournera tant qu'on trouvera des mots commençant par des consonnes.
		while true
#Test si le mot commence par une consonne majuscule et ne contient pas de ponctuation.
			if /^[A-Z]/.match(tab[i]) && !voyelles.include?(tab[i].chr) && !ponctuations.match(tab[i])
#Cas particulier pour les mots commençant par "qu", les deux lettres sont envoyées en fin de mot.
				if /^Qu/.match(tab[i])
					#On met le mot en minuscule
					tab[i] = tab[i].downcase
					#On insert "qu" à la fin 
					tab[i] << "qu"
					#On sélectionne le mot sauf les 2 premiers caractères soit le "qu" du début
					tab[i] = tab[i].slice(2..-1)
					#On remet le premier caractère en majuscule
					tab[i] = tab[i].capitalize
#Si le mot ne commence pas par "qu", on supprime la consonne au début et on l'ajoute à la fin.
				else
					tab[i] = tab[i].downcase
					#On insert le premier caractère du mot à la fin
					tab[i] << tab[i].chr
					#On sélectionne le mot sauf la première lettre
					tab[i] = tab[i].slice(1..-1)
					tab[i] = tab[i].capitalize
				end
#Même chose qu'au dessus, pour les mots contenant de la ponctuation.
            elsif /^[A-Z]/.match(tab[i]) && !voyelles.include?(tab[i].chr) && ponctuations.match(tab[i])
            	#On assigne à ponct la ponctuation du mot
                ponct = tab[i].slice(-1,1)
                #On sélectionne le mot sans la ponctuation
				tab[i]= tab[i].slice(0..-2)
                if /^Qu/.match(tab[i])
					tab[i] = tab[i].downcase
					tab[i] << "qu"
					tab[i] = tab[i].slice(2..-1)
					tab[i] = tab[i].capitalize
				else
					tab[i] = tab[i].downcase
					tab[i] << tab[i].chr
					tab[i] = tab[i].slice(1..-1)
					tab[i] = tab[i].capitalize
				end
#On test si le mot commence par une consonne minuscule et ne contient pas de poncutation.
			elsif !voyelles.include?(tab[i].chr) && !ponctuations.match(tab[i])
				if tab[i].slice(0..1) == "qu"
					tab[i] << "qu"
					tab[i] = tab[i].slice(2..-1)
				else
					tab[i] << tab[i].chr
					tab[i] = tab[i].slice(1..-1)
				end
#Encore une fois, même chose qu'au dessus, mais sans ponctuation.
			elsif !voyelles.include?(tab[i].chr) && ponctuations.match(tab[i])
				ponct = tab[i].slice(-1,1)
				tab[i]= tab[i].slice(0..-2)
				if tab[i].slice(0..1) == "qu"
					tab[i] << "qu"
					tab[i] = tab[i].slice(2..-1)
				else
					tab[i] << tab[i].chr
					tab[i] = tab[i].slice(1..-1)
				end
#Si un mot commence par une voyelle et termine par de la ponctuation,
#On supprime la ponctuation en fin de mot après l'avoir rangée dans une variable.
            elsif ponctuations.match(tab[i])
                ponct = tab[i].slice(-1,1)
                tab[i]= tab[i].slice(0..-2)
			else
				break #On sort de notre boucle infinie.
			end
		end
#On ajoute "ay" à la fin de nos mots.
		if !ponctuations.match(tab[i])
			tab[i] << "ay"
		end
#Si la variable ponct n'est pas vide, c'est qu'on a stocké une signe dedans, 
#donc on l'ajoute à la fin du mot.
        if ponct != ""
            tab[i] << ponct
        end
	end
#Yay ! On retourne le total de tout ça.
	return tab.join(" ")
end
#On est vraiment désolés pour la longueur de cette méthode.
#Nous avons pensé à la diviser en plusieurs méthodes.
#Mais nous la pensons plus lisible comme ça.
#Merci d'avoir suivit mes merveilleux commentaires jusque là.
#Cadeau : https://youtu.be/dQw4w9WgXcQ