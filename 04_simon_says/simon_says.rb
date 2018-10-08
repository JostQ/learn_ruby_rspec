def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string,a=2)
	return [string]*a*' '
end

def start_of_word(string,a)
	return string.slice(0,a)
end

def first_word(string)
	return string.split.first
end

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