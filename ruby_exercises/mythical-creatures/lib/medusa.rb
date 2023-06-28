# class Medusa
#     attr_reader :name, :statues

#     def initialize(name, statues = [])
#         @name = name
#         @statues = statues
#     end
    
#     def stare(victim)
#         if statues.length < 3
#             @statues << victim
#         else
#             statues.first.unstone
#             statues.shift
#             @statues << victim
#         end
        
#         victim.stone
#     end

# end

# class Person
#     attr_reader :name

#     def initialize(name)
#         @name = name
#         @stoned = false
#     end

#     def stoned?
#         @stoned
#     end

#     def stone
#         @stoned = true
#     end

#     def unstone
#         @stoned = false
#     end
# end


class Medusa
    attr_reader :name, :statues

    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        statues << victim && victim.turn_to_stone

        if statues.count > 3
           statues.first.revive
           statues.shift
        end 
    end
end

class Person
    attr_reader :name, :stoned

    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        stoned
    end

    def turn_to_stone
        @stoned = true
    end

    def revive
        @stoned = false
    end
end