# class Dragon
#     attr_reader :name, :rider, :color, :food

#     def initialize(name, color, rider)
#         @name = name
#         @color = color
#         @rider = rider
#         @food = 0
#     end
    
#     def eat
#         @food = food + 1
#     end

#     def hungry?
#         return true if @food <= 2
#         false
#     end
# end

class Dragon
    attr_reader :name, :rider, :color, :times_ate

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @times_ate = 0
    end

    def hungry?
        return true if @times_ate < 3
        false
    end

    def eat
        @times_ate += 1
    end
end