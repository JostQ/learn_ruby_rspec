#La fonction ftoc a pour paramètre une valeur en degré fahrenheit et retourne une valeur en degré celcius
def ftoc(fahrenheit)
	return ((fahrenheit-32)/1.8).round
end

def ctof(celcius)
	return (celcius*1.8+32)
end