#La méthode echo affiche une string.
def echo(string)
	return string
end

#La méthode shout affiche une string en majuscules.
def shout(string)
	return string.upcase
end

#La méthode repeat retourne X fois une chaine avec un espace les séparants.
def repeat(string,a=2)
	return [string]*a*' '
end

#Cette fonction renvoie les X première lettres d'une chaine de caractères.
def start_of_word(string,a)
	return string.slice(0,a)
end

#Cette fonction renvoie le premier mot d'une chaine de caractères.
def first_word(string)
	return string.split.first
end

#Cette méthode met en majuscule les premières lettres de tous les mots d'une chaine de caractères
#Sauf si ce sont de petits mots
def titleize(string)
	string = string.capitalize
    exclusion = ["and", "or", "the", "to", "the", "a", "but"]
    tab = string.split
    tab.length.times do |i|
    	if !exclusion.include?(tab[i])
    		tab[i] = tab[i].capitalize
    	end
    end
    return tab.join(' ')
end