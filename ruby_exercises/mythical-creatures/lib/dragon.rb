class Dragon
    attr_reader :name, :rider, :color, :food

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @food = 0
    end
    
    def eat
        @food = food + 1
    end

    def hungry?
        return true if @food <= 2
        false
    end
end