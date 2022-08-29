check = 0

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
	puts "Please input side c's size."
	c = gets.chomp.to_f
	
	if a+b > c
		check = check + 1
	end
	if a+c > b
		check = check + 1
	end
	if b+c > a
		check = check + 1
	end
	
	if check >= 3 
		s = (a+b+c)/2
		area = (s*(s-a)*(s-b)*(s-c)) ** 0.5
		puts "The area is: #{area}"
	end
	if check < 3
		puts "Invalid triangle size"
	end
	
elsif x == 'CIRCLE'
	puts "Please input radius size."
	a = gets.chomp.to_f
	puts "The area is: #{3.141592653 * (a**2)}"

else 
	puts "Not a valid shape"
end
