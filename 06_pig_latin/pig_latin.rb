def translate (string)
	tab = string.split
	voyelles = ["a","e","i","o","u","y", "A", "E", "I", "U", "O", "Y"]
	ponctuations = [",", ".", ";", ":", "!", "?"]
	ponct = ""
	puts string
	tab.length.times do |i|
		ponct = nil
		while true
			puts tab[i]
			if /[A-Z]/.match(tab[i]) && !voyelles.include?(tab[i].chr)
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
			elsif !voyelles.include?(tab[i].chr) && !ponctuations.include?(tab[i])
				if tab[i].slice(0..1) == "qu"
					tab[i] << "qu"
					tab[i] = tab[i].slice(2..-1)
				else
					tab[i] << tab[i].chr
					tab[i] = tab[i].slice(1..-1)
				end
			elsif !voyelles.include?(tab[i].chr) && ponctuations.include?(tab[i])
				ponct = tab[i].slice(-1,1)
				tab[i]= tab[i].slice(0..-2)
				if tab[i].slice(0..1) == "qu"
					tab[i] << "qu"
					tab[i] = tab[i].slice(2..-1)
				else
					tab[i] << tab[i].chr
					tab[i] = tab[i].slice(1..-1)
				end

			else
				break
			end
		end
		if !ponctuations.include?(tab[i])
			tab[i] << "ay"
		end
		if ponct != nil
			tab[i] << ponct
		end
	end
	return tab.join(" ")
end

puts translate("je suis une, Quarotte jjaune Et rrrouge jean nez mar.")