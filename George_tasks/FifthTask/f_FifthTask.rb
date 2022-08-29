countries = {
    Bulgaria: ["Sofia", "Plovdiv", "Varna"],
    USA: ["Washington", "New York", "Chicago"],
    Italy: ["Rome", "Milan", "Turin"],
    Germany: ["Berlin", "Dortmund", "Frankfurt"],
    UK: ["London", "Manchester", "Bristol"]
}

puts "Please enter city: "
user_input = gets.chomp.capitalize

country = countries.find {
    |key, value|
    value.include?(user_input)
}.first

puts "#{user_input} is in #{country}"