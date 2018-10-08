#Cette méthode met au format HH:MM:SS un nombre de secondes mis en paramètres.
def time_string(a)
	return Time.at(a).utc.strftime("%H:%M:%S")
end
