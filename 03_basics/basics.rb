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

def reverse_upcase_noLTA(string)
	return string.upcase.reverse.delete "LTA"
end

def array_42(tab)
#	return tab.any? { |value| value == 42 }
	return tab.include?(42)
end

def magic_array(tab)
	return tab.flatten.sort.map {|value| value*2}.delete_if { |value| value%3 == 0}.uniq
end