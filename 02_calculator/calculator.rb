def add(a,b)
	return a+b
end

def subtract(a,b)
	return a-b
end

def sum(tab)
	total = 0
	tab.each do |i|
		total += i
	end
	return total
end

def multiply(a,b)
	return a*b
end

def power(a,b)
	return a**b
end

def factorial(a)
	if a==0
		return 1
	else
		return (1..a).inject(:*)
	end
end