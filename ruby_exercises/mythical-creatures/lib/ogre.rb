class Ogre
    attr_reader :name, :home, :swings, :encounter_counter

    def initialize(name, home = 'Swamp')
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(human)
        human.encounter
        @encounter_counter += 1
        
        @swings += 1 if human.notices_ogre?
    end

    def swing_at(human)
        @swings += 1
    end

    def apologize(human)
        human.wake_up
    end

end

class Human
    attr_reader :name, :encounter_counter

    def initialize(name = 'Jane')
        @name = name
        @encounter_counter = 0
    end

    def encounter
        @encounter_counter += 1
    end

    def notices_ogre?
        @encounter_counter % 3 == 0
    end

    def knocked_out?
        if @encounter_counter % 6 == 0 && @encounter_counter > 0
            true
        else
            false
        end
    end

    def wake_up
        @encounter_counter = 0
    end

end