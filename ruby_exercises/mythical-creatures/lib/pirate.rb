class Pirate
    attr_reader :name, :job, :atrocities, :booty

    def initialize(name, job = 'Scallywag')
        @name = name
        @job = job
        @atrocities = 0
        @booty = 0
    end

    def cursed?
        return true if @atrocities >= 3
        false
    end

    def commit_heinous_act
        @atrocities = atrocities + 1
    end

    def broke?
        return true if @booty == 0
        false
    end

    def rich?
        return true if @booty == 1000
        false
    end

    def plunder
        @booty = booty + 100
    end

end