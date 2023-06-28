# class Werewolf
#     attr_reader :name, :location, :human, :hungry, :victims

#     def initialize(name, location = "")
#         @name = name
#         @location = location
#         @human = true
#         @hungry = false
#         @victims = 0
#     end

#     def human?
#         @human
#     end

#     def change!
#         @human = !@human
#         @hungry = true if @human == false
#     end

#     def wolf?
#         if human == true
#             false
#         else true
#         end
#     end

#     def hungry?
#         @hungry
#     end

#     def consume(victim)
#         if human == false
#             @victims = victims + 1
#             @hungry = false
#             victim.status = :dead
#         end
#     end

# end


class Werewolf
    attr_reader :name, :location, :human, :hungry, :victims

    def initialize(name, location = '')
        @name = name
        @location = location
        @human = true
        @hungry = false
        @victims = 0
    end

    def human?
        human
    end

    def wolf?
        !human
    end

    def change!
        @human = !human
        @hungry = true if human == false
    end

    def hungry?
        hungry
    end

    def consume(victim)
        if human == false
            @victims += 1
            @hungry = false
            victim.status = :dead
        end
    end

end