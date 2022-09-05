#Pond:
#It should have the next attributes: 
#Capacity – list that contains all fish from the Pond in the current moment; 
#State – ‘poor’, ‘normal’, ‘rich’. 
#Pond is ‘poor’ if it’s capacity contains less then 5 fishes, ‘normal’.
#If capacity contains from 5 to 10 fishes, and ‘rich’ if it has more than 10 fishes.
#Pond can obtainFish() – it will be added to it’s capacity, and lostFish() – it will be taken from capacity.
#The Pond state changes automatically when it’s capacity reaches the appropriate value. Pond also allows showPapacity() and showState().
#You can also add the optional attributes (as you wish).

require_relative "Fishes.rb"

class Pond
    attr_accessor :capacity

        def initialize
            @capacity = Array.new
        end
    
    def show_capacity
        @capacity.length()
    end

    def capacity_states
        if @capacity.length() == 0
            print "The Pond is empty!"
        elsif @capacity.length() > 0 && @capacity.length < 5
            print "The Pond is poor!"
        elsif @capacity.length() >= 5 && @capacity.length < 10
            print "The Pond is normal!"
        else
            print "The Pond is rich!"
        end
    end

    def lost_fish(number)
        catch_fish = @capacity[number]
        @capacity.delete_at(number)
        if catch_fish.is_a?(CarpFish)
            puts "You cought #{catch_fish.class}, weight: #{catch_fish.weight} kg, color: #{catch_fish.color}!"
        elsif catch_fish.is_a?(SheatFish)
            puts "You cought #{catch_fish.class}, weight: #{catch_fish.weight} kg, whiscker: #{catch_fish.whiscker} cm!"
        else @capacity.empty?
            puts "The Pond is empty!"
        end
    end

    def obtain_fish(fish)
        @capacity.push(fish)
    end
end
