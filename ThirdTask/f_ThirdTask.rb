require "matrix"

puts "Enter first number in the matrix"
first_number = gets.chomp
puts "Enter second number in the matrix"
second_number = gets.chomp
puts "Enter third number in the matrix"
third_number = gets.chomp
puts "Enter fourth number in the matrix"
fourth_number = gets.chomp


full_matrix = Matrix[ [first_number.to_i, second_number.to_i], [third_number.to_i, fourth_number.to_i] ]
puts "Your matrix is #{full_matrix}"
full_matrix.each_with_index do |e, row, col|
    puts "#{e} is at position #{row} x #{col}"
end

row_one_count = full_matrix[0,0] + full_matrix[0,1]
row_two_count = full_matrix[1,0] + full_matrix[1,1]
column_one_count = full_matrix[0,0] + full_matrix[1,0]
column_two_count = full_matrix[0,1] + full_matrix[1,1]

new_matrix = Matrix[ [row_one_count.to_i, column_one_count.to_i], [row_two_count.to_i, column_two_count.to_i] ]

final_matrix = Matrix.vstack(full_matrix, new_matrix)
puts "Matrix after adding the sums of rows and columns #{final_matrix}"
final_matrix.each_with_index do |e, row, col|
    puts "#{e} is at postiong #{row} x #{col}"
end




