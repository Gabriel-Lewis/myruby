
def hours_in_a_year(years)
	days = years.to_i * 365
	hours = days * 24

	print(hours.to_s)
end

puts("How many years?")

years = gets()

hours_in_a_year(years)