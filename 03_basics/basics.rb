#Cette méthode dit qui a la plus grosse
def who_is_bigger(a,b,c)
	if a==nil||b==nil||c==nil
		return "nil detected"
	elsif a>b&&a>c
		return "a is bigger"
	elsif b>a&&b>c
		return "b is bigger"
	elsif c>b&&c>a
		return "c is bigger"
	end
end

#Cette méthode inverse l'ordre d'une string, la met en majuscules, et supprime L T et A
def reverse_upcase_noLTA(string)
	return string.upcase.reverse.delete "LTA"
end

#Cette méthode renvoie true si une case d'un tableau contient 42. False sinon.
def array_42(tab)
	return tab.include?(42)
end

#Cette méthode renvoie un tableau concaténé, trié, multiplié par deux, sans ses multiples de 3, et avec des chocapics.
def magic_array(tab)
	return tab.flatten.sort.map {|value| value*2}.delete_if { |value| value%3 == 0}.uniq
end