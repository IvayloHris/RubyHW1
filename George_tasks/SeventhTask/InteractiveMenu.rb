# User should have interactive menu:
# 1.1. View capacity;
# 2.2. View state of Pond;
# 3.3. Add fish( Carp or SheatFish);
# 4.4. Catch fish (concrete instance);
# 5.5. Create new fish (fill himself the creator)))
# 6.6. Finish the game. (edited) 

require_relative "Pond.rb"
require_relative "Fishes.rb"

class InteractiveMenu
 attr_accessor :pond
    
    def initialize
        @pond = Pond.new
    end

    inter = InteractiveMenu.new
    puts "Choose option:\n1: View capacity:\n2: View state of the Pond:\n" +
        "3: Add fish (Carp of SheatFish)!\n4: Catch fish!\n5: Create new fish:\n6: Finish the game!\n*'Menu': Shows the menu!"
    loop do
        
        option = gets.chomp.downcase
        case option
        when "1"
            puts "There are #{inter.pond.method(:show_capacity).call} fishes in the Pond!"
        when "2"
            puts inter.pond.method(:capacity_states).call
        when "3"
            carp = CarpFish.new(rand(1...10), "yellow")
            sheat = SheatFish.new(rand(1...40), rand(7))
            puts "To add carp press 1!\nTo add sheatfish press 2!"
            fish = gets.chomp
            case fish
            when "1"
                inter.pond.method(:obtain_fish).call(carp)
                puts "Carp was added to the Pond!"
            when "2"
                inter.pond.method(:obtain_fish).call(sheat)
                puts "Sheatfish was added to the Pond!"
            end
        when "4"
            fish_num = rand(inter.pond.method(:show_capacity).call)
            inter.pond.method(:lost_fish).call(fish_num)
        when "5"
            puts "To create new carp press 1!\nTo create new sheatfish press 2!"
            new_fish = gets.chomp
            case new_fish
            when "1"
                puts "Carp weight"
                weight = gets.chomp
                puts "Carp color"
                color = gets.chomp
                inter.pond.method(:obtain_fish).call(CarpFish.new(weight, color))
                puts "Carp was added to the Pond!"
            when "2"
                puts "Sheatfish weight"
                weight = gets.chomp
                puts "Sheatfish whisckers"
                whiscker = gets.chomp
                inter.pond.method(:obtain_fish).call(SheatFish.new(weight, whiscker))
                puts "Sheatfish was added to the Pond!"
            end
        when "6"
            puts "Goodbye"
            exit
        when "menu"
            puts "Choose option:\n1: View capacity:\n2: View state of the Pond:\n" +
        "3: Add fish (Carp of SheatFish)!\n4: Catch fish!\n5: Create new fish:\n6: Finish the game!\n*'Menu': Shows the menu!"
        else
            puts "Invalid input!"
        end
    end  
end