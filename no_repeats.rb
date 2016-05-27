# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats(year_start, year_end)
	year = year_start
	non_repeat_years = []
	while year <= year_end
		if no_repeat_year?(year)
			non_repeat_years.push(year)
		end
		year += 1
	end
	non_repeat_years
end

def no_repeat_year?(year)
	year_s = year.to_s
	year_array = year_s.split("")
	i = 0
	while i < year_array.length
		digit = year_array[i]
		if year_array[i + 1] == digit || year_array[i - 1] == digit
			return false
		end
		i += 1
	end
	return true
end
puts("\nTests for #no_repeats")
puts("===============================================")
    puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
    puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
    puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
puts("===============================================")
