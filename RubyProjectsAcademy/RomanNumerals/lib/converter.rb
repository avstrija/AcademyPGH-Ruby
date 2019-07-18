class RomanConverter
    def convert(number)
    result = ""
    @denominations.each do |denomination|
        while number >= denomination[:value]
            number -= denomination[:value]
            result << denomination[:name]
        end
    end
    result
    end

def initialize
    @denominations =[]

    add_denomination("M", 1000)
    add_denomination("CM", 900)
    add_denomination("D", 500)
    add_denomination("CD", 400)
    add_denomination("C", 100)
    add_denomination("XC", 90)
    add_denomination("L", 50)
    add_denomination("XL", 40)
    add_denomination("X", 10)
    add_denomination("IX", 9)
    add_denomination("V", 5)
    add_denomination("IV", 4)
    add_denomination("I", 1)
end

def add_denomination(name, value)
    @denominations << {name: name, value: value}
end
end