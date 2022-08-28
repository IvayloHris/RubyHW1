i = 0
j = 0

require 'csv'
table = CSV.parse(File.read("cities.csv"), headers: false)

puts "Please write a valid city name."
name = gets.chomp.to_s

until table [i][j] == name
	i = i+1
end

puts "The city of #{name} is located in #{table[i][j+1]} and the population of it is #{table[i][j+2]}"

