def get_user_input
    puts "Enter number:"
    user_input = gets.chomp.to_i
end

num = get_user_input

def is_prime(num)
    return false if num <= 1
    Math.sqrt(num).to_i.downto(2) {|i| return false if num % i == 0}
    true
end

is_prime_number = is_prime(num)

if num < 0 || num > 1000
    puts "Invalid number, please try again"
    num
elsif num != ""
    puts "This is not a number, please try again"
    num
elsif num.between?(0, 1000)
    puts is_prime(num)
end