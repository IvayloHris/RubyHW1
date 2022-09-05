#Fish. It has weight.
#Fish has two derived classes: SheatFish and Carp.
#SheatFish should have whisckerLength, Carp should have color.
#You can also add optional attributes (as you wish).

class Fishes
    attr_accessor :weight

    def initialize(weight)
        @weight = weight
    end

end

class SheatFish < Fishes
    attr_accessor :whiscker

    def initialize(weight, whiscker)
        super(weight)
        @whiscker = whiscker
    end

end

class CarpFish < Fishes
    attr_accessor :color
    
    def initialize(weight, color)
        super(weight)
        @color = color
    end
   
end