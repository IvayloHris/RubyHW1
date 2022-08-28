require "matrix"

puts "Enter first number in the matrix"
first_number = gets.chomp.to_i
puts "Enter second number in the matrix"
second_number = gets.chomp.to_i
puts "Enter third number in the matrix"
third_number = gets.chomp.to_i
puts "Enter fourth number in the matrix"
fourth_number = gets.chomp.to_i


user_matrix = Matrix[ [first_number, second_number], [third_number, fourth_number] ]
puts "Your matrix is #{user_matrix}"
user_matrix.each_with_index do |e, row, col|
    puts "#{e} is at position #{row} x #{col}"
end

row_one_count = user_matrix[0,0] + user_matrix[0,1]
row_two_count = user_matrix[1,0] + user_matrix[1,1]
column_one_count = user_matrix[0,0] + user_matrix[1,0]
column_two_count = user_matrix[0,1] + user_matrix[1,1]
column_row_tree_count = column_one_count + column_two_count + row_one_count + row_two_count

matrix_with_rows = Matrix[ [first_number, second_number, row_one_count.to_i], [third_number, fourth_number, row_two_count.to_i],
 [column_one_count.to_i, column_two_count.to_i, column_row_tree_count.to_i] ]
puts "Matrix after adding the sums of rows and columns #{matrix_with_rows}"
matrix_with_rows.each_with_index do |e, row, col|
    puts "#{e} is at postiong #{row} x #{col}"
end







