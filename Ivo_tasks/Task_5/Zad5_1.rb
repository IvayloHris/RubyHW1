
dictionary = { 
	"Bulgaria" => ["Vratsa", "Sofia", "Plovediv"],
	"Ukraine" => ["Rivne", "Lviv", "Kharkov"],
	"Greece" =>  ["Asprovalta", "Athens", "Kavala"] 
 }


puts "Please write a valid city name."
name = gets.chomp.to_s.capitalize

country = dictionary.find {
	|key, value|
	value.include?(name)
	}.first
	
puts "The city of #{name} is located in #{country} "

