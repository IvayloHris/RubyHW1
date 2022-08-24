def is_prime(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true
end

puts ("Please input a valid number from 0 to 1000.")
a = gets.chomp.to_i

if a<0 || a>1000
	puts "Not a valid number from 0 to 1000"
else 
	puts is_prime(a)
end