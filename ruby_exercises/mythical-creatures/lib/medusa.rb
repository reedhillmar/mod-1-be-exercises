class Medusa
    attr_reader :name, :statues

    def initialize(name, statues = [])
        @name = name
        @statues = statues
    end
    
    def stare(victim)
        if statues.length < 3
            @statues << victim
        else
            statues.first.unstone
            statues.shift
            @statues << victim
        end
        
        victim.stone
    end

end

class Person
    attr_reader :name

    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        @stoned
    end

    def stone
        @stoned = true
    end

    def unstone
        @stoned = false
    end
end