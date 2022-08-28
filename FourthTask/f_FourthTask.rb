require 'matrix'

puts "Enter first number in the matrix"
first_number = gets.chomp
puts "Enter second number in the matrix"
second_number = gets.chomp
puts "Enter third number in the matrix"
third_number = gets.chomp
puts "Enter fourth number in the matrix"
fourth_number = gets.chomp

new_matrix = Matrix[ [first_number.to_i, second_number.to_i], [third_number.to_i, fourth_number.to_i] ]
puts "Your matrix is #{new_matrix}"
new_matrix.each_with_index do |e, row, col|
    puts "#{e} is at position #{row} x #{col}"
end
max = new_matrix.max

puts "The biggest number in your matrix is #{max}" 