P = 4
H = 8
user_numbers = Array.new
sum_of_numbers = 0
product_of_numbers = 1
count_of_numbers = 0

def get_user_input
    puts "Enter number:"
    num = gets.chomp.to_i
end

user_input = get_user_input
while user_input != P && user_input != H
    user_numbers << user_input
    user_input = get_user_input
end

user_numbers.each do |n|
    if n < P
        sum_of_numbers += n
    
    elsif n > H
        product_of_numbers *= n
    
    elsif n.between?(P, H)
        count_of_numbers += 1
    end
end

puts "The sum of numbers lower than P is #{sum_of_numbers}!"
puts "The product of numbers higher than H is #{product_of_numbers}!"
puts "The count of numbers between P and H is #{count_of_numbers}!"
