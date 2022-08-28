puts "Hello, enter rectangle if you want to calculate the area of a rectangle, " + 
"triangle for area of a triangle, circle for area of a circle or quit to exit:"
loop do
    find_area = gets.chomp.downcase
    case find_area
    when "rectangle"
        puts "Lets calculate the area of a rectangle. \nWhat is the width a?:"
        a = gets.chomp.to_f
        puts "What is the height b?:"
        b = gets.chomp.to_f
        x = a * b 
        puts "The area of the rectangel is #{x}!"
    when "triangle"
        puts "Lets calculate the area of a triangle. \nWhat is the length of the side a?:"
        a = gets.chomp.to_f
        puts "What is the length of the side b?:"
        b = gets.chomp.to_f
        puts "And the length of the side c?:"
        c = gets.chomp.to_f
        y = (a+b+c) / 2
        x = Math.sqrt(y*(y-a)*(y-b)*(y-c))
        puts "The area of the triangle is #{x}!"
    when "circle"
        puts "Lets calculate the area of a circle. \nWhat is the length of the radius r?:"
        r = gets.chomp.to_f
        x = Math::PI * r ** 2
        puts "The area of the circle is #{x}!"
    when "quit"
        puts "Goodbye"
    else
        puts "Invalid input! Please try again!"
        next
    end
    break
end