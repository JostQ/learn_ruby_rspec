#Cette méthode renvoie les deux variables mises en paramètres
def add(a,b)
	return a+b
end

#Cette fonction soustrait les deux variables mises en paramètres
def subtract(a,b)
	return a-b
end

#Cette fonction additionne toutes les cases d'un tableau
def sum(tab)
	total = 0
	tab.each do |i|
		total += i
	end
	return total
end

#Cette fonction retourne la multiplication des 2 variables passées en paramètres
def multiply(a,b)
	return a*b
end

#Cette fonction retourne une variable puissance une autre
def power(a,b)
	return a**b
end

#Cette fonction renvoie la factorielle d'un nombre
def factorial(a)
	if a==0
		return 1
	else
		return (1..a).inject(:*)
	end
end