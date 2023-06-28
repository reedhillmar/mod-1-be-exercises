class Lovisa
    attr_reader :title, :characteristics

    def initialize(title, characteristics = ['brilliant'])
        @title = title
        @characteristics = characteristics
    end

    def say(words)
        "**;* #{words} **;*"
    end

    def brilliant?
        characteristics.include?('brilliant')
    end

    def kind?
        characteristics.include?('kind')
    end

end