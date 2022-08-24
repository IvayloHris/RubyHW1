puts "Do you want the area of a rectangle, triangle or circle?"
x = gets.chomp
if x.upcase! == 'RECTANGLE'
	puts "Please input side a's size."
	a = gets.chomp.to_f
	puts "Please input side b's size."
	b = gets.chomp.to_f
	puts "The area is: #{a*b}"
	
elsif x == 'TRIANGLE'
	puts "Please input side a's size."
	a = gets.chomp.to_f
	puts "Please input side b's size."
	b = gets.chomp.to_f
	puts "The area is: #{(a*b)/2}"
	
elsif x == 'CIRCLE'
	puts "Please input radius size."
	a = gets.chomp.to_f
	puts "The area is: #{3.141592653 * (a**2)}"

else 
	puts "Not a valid shape"
end