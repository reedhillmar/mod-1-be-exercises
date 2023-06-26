class Centaur
    attr_reader :name, :breed, :cranky, :tired, :actions

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @actions = 0
        @laying = false
        @sick = false
        @rested = true
    end

    def shoot
        if @actions >= 3 or @laying == true
            "NO!"
        else
            @actions = actions + 1
            @rested = false
            "Twang!!!"
        end
    end

    def run
        if @laying == true
            "NO!"
        else
            @actions = actions + 1
            @rested = false
            "Clop clop clop clop!"
        end
    end

    def cranky?
        @cranky = true if @actions >= 3
        @cranky
    end

    def standing?
        @standing
    end

    def laying?
        @laying
    end

    def sleep
        if @standing == true
            "NO!"
        else
            @actions = 0
            @cranky = false
            @rested = true
        end
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def stand_up
        @standing = true
        @laying = false
    end

    def rested?
        @rested
    end

    def sick?
        @sick
    end

    def drink_potion
        if @standing == true && @actions == 0
            @sick = true
        elsif @standing == true
            @actions = 0
            @rested = true
        else "NO!"
        end
    end

end