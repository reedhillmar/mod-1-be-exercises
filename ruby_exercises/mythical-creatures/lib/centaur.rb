# class Centaur
#     attr_reader :name, :breed, :cranky, :tired, :actions

#     def initialize(name, breed)
#         @name = name
#         @breed = breed
#         @cranky = false
#         @standing = true
#         @actions = 0
#         @laying = false
#         @sick = false
#         @rested = true
#     end

#     def shoot
#         if @actions >= 3 or @laying == true
#             "NO!"
#         else
#             @actions = actions + 1
#             @rested = false
#             "Twang!!!"
#         end
#     end

#     def run
#         if @laying == true
#             "NO!"
#         else
#             @actions = actions + 1
#             @rested = false
#             "Clop clop clop clop!"
#         end
#     end

#     def cranky?
#         @cranky = true if @actions >= 3
#         @cranky
#     end

#     def standing?
#         @standing
#     end

#     def laying?
#         @laying
#     end

#     def sleep
#         if @standing == true
#             "NO!"
#         else
#             @actions = 0
#             @cranky = false
#             @rested = true
#         end
#     end

#     def lay_down
#         @standing = false
#         @laying = true
#     end

#     def stand_up
#         @standing = true
#         @laying = false
#     end

#     def rested?
#         @rested
#     end

#     def sick?
#         @sick
#     end

#     def drink_potion
#         if @standing == true && @actions == 0
#             @sick = true
#         elsif @standing == true
#             @actions = 0
#             @rested = true
#         else "NO!"
#         end
#     end

# end


class Centaur
    attr_reader :name, :breed, :actions, :standing, :sick

    def initialize(name, breed)
        @name = name
        @breed = breed
        @actions = 0
        @standing = true
        @sick = false
    end

    def shoot
        return 'NO!' if cranky? or laying?
        @actions += 1
        'Twang!!!'
    end

    def run
        return 'NO!' if cranky? or laying?
        @actions += 1
        'Clop clop clop clop!'
    end

    def cranky?
        return false if actions < 3
        true
    end

    def standing?
        standing
    end

    def laying?
        !standing
    end

    def sleep
        return 'NO!' if standing
        @actions = 0
    end

    def lay_down
        @standing = false
    end

    def stand_up
        @standing = true
    end

    def rested?
        return false if @actions > 0
        true
    end

    def drink_potion
        return 'NO!' if standing == false
        @sick = true if rested?
        @actions = 0
    end

    def sick?
        sick
    end

end