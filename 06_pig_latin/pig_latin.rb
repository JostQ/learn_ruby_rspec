def translate (string)
	tab = string.split
	voyelles = ["a","e","i","o","u","y", "A", "E", "I", "U", "O", "Y"]
    ponctuations = /[,;.:!?]/
	tab.length.times do |i|
		ponct = ""
		while true
			if /[A-Z]/.match(tab[i]) && !voyelles.include?(tab[i].chr) && !ponctuations.match(tab[i])
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
            elsif /[A-Z]/.match(tab[i]) && !voyelles.include?(tab[i].chr) && ponctuations.match(tab[i])
                ponct = tab[i].slice(-1,1)
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
			elsif !voyelles.include?(tab[i].chr) && !ponctuations.match(tab[i])
				if tab[i].slice(0..1) == "qu"
					tab[i] << "qu"
					tab[i] = tab[i].slice(2..-1)
				else
					tab[i] << tab[i].chr
					tab[i] = tab[i].slice(1..-1)
				end
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
            elsif ponctuations.match(tab[i])
                ponct = tab[i].slice(-1,1)
                tab[i]= tab[i].slice(0..-2)
			else
				break
			end
		end
		if !ponctuations.match(tab[i])
			tab[i] << "ay"
		end
        if ponct != ""
            tab[i] << ponct
        end
	end
	return tab.join(" ")
end
