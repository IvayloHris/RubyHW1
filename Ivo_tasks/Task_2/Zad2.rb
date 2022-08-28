a = 0
b = 1
br = 0
br1 = 0

puts "Please input P and then H to do the calculations!"

p = gets.chomp.to_i
h = gets.chomp.to_i

puts "Please input as much numbers as you want and press 'enter'. The P and H used in the calculations are #{p} and #{h}"
input_arr = gets.chomp.split.map(&:to_i)

input_arr.each { |item|
	if item == p || item == h
		break
	end
    if item<p
		a = item+a
	end
	
	if item>h
		b = item*b
		br1 = br1+1
	end
	
	if item>p && item<h
		br = br+1
	end
}

if br1 == 0
	b = 0
end

puts "The sum of the numbers lower than #{p} is: #{a}"
puts "The product of the numbers higher than #{h} is: #{b}"
puts "The number of the numbers between #{p} and #{h} is: #{br}"

