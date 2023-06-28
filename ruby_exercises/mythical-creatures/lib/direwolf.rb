# class Direwolf
#     attr_reader :name, :home, :size, :starks_to_protect

#     def initialize(name, home = 'Beyond the Wall', size = 'Massive')
#         @name = name
#         @home = home
#         @size = size
#         @starks_to_protect = []
#     end

#     def protects(stark)
#         if @starks_to_protect.count < 2
#             starks_to_protect << stark if @home == stark.location

#             stark.protected
#         end
#     end

#     def hunts_white_walkers?
#         if @starks_to_protect.count == 0
#             true
#         else
#             false
#         end
#     end

#     def leaves(stark)
#         @starks_to_protect.delete(stark)
#         stark.unprotected
#         stark
#     end

# end

# class Stark
#     attr_reader :name, :location, :safe, :house_words

#     def initialize(name, location = 'Winterfell')
#         @name = name
#         @location = location
#         @safe = false
#         @house_words = 'Winter is Coming'
#     end

#     def safe?
#         @safe
#     end

#     def protected
#         @safe = true
#     end

#     def unprotected
#         @safe = false
#     end

#     def name?
#         @name
#     end

# end


class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect

    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        starks_to_protect << stark && stark.protect if home == stark.location && starks_to_protect.count < 2
    end

    def hunts_white_walkers?
        starks_to_protect.count == 0
    end

    def leaves(stark)
        starks_to_protect.delete(stark)
        stark.abandon
        stark
    end

end

class Stark
    attr_reader :name, :location, :house_words, :safe

    def initialize(name, location = 'Winterfell')
        @name = name
        @location = location
        @house_words = 'Winter is Coming'
        @safe = false
    end

    def safe?
        safe
    end

    def protect
        @safe = true
    end

    def abandon
        @safe = false
    end

end