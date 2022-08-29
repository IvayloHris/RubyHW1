i = 0
j = 0

require 'csv'
table = CSV.parse(File.read("cities.csv"), headers: false)

dictionary = {}

until table[i][0] == nil
dictionary[table[i][0]] = table[i][1]

i = i+1
end

puts "Please write a valid city name."
name = gets.chomp.to_s

puts dictionary[name]

#puts "The city of #{name} is located in #{table[i][j+1]} and the population of it is #{table[i][j+2]}"

