# class Wizard
#     attr_reader :name, :bearded, :spells_cast

#     def initialize(name, bearded = true)
#         @name = name
#         @bearded = bearded
#         @spells_cast = 0
#     end

#     def bearded?
#         return true if @bearded == true
#         false
#     end

#     def incantation(root)
#         "sudo #{root}"
#     end

#     def cast(spell)
#         @spells_cast = spells_cast + 1
#         "#{spell.upcase}!"
#     end

#     def rested?
#         return true if @spells_cast <= 2
#         false
#     end
# end


class Wizard
    attr_reader :name, :bearded

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @spells_cast = 0
    end

    def bearded?
        @bearded
    end

    def incantation(words)
        "sudo #{words}"
    end

    def rested?
        @spells_cast < 3
    end

    def cast(words)
        @spells_cast += 1
        "#{words.upcase}!"
    end
end