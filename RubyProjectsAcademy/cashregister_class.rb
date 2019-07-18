class CashConverter
    def convert(number)
    result = ""
    @denominations.each do |denomination|
        while number >= denomination[:value]
            value = denomination[:value]
            result << ((number/value).floor).to_s + denomination[:name]
            if denomination[:name] == " twent" || denomination[:name] == " penn"
                if (number/value).floor > 1
                    result << "ie"
                else
                    result << "y"
                end
            elsif (number/value).floor > 1
                result << "s"
            end

            if(number%value>0)
                number = (number%value).round(2)
                result += ", "
            else 
                number = 0
            end
        end
    end
    result
    end

def initialize
    @denominations =[]
    
    add_denomination(" hundred", 100)
    add_denomination(" twent", 20)
    add_denomination(" ten", 10)
    add_denomination(" five", 5)
    add_denomination(" one", 1)
    add_denomination(" quarter", 0.25)
    add_denomination(" dime", 0.1)
    add_denomination(" nickel", 0.05)
    add_denomination(" penn", 0.01)
end

def add_denomination(name, value)
    @denominations << {name: name, value: value}
end
end

puts "How much did it cost?"
cost = gets.to_f
puts "How much did they pay?"
paid = (gets.to_f).round(2)
output = ""

convert = CashConverter.new

puts convert.convert(paid-cost)
    


# Create a cash register application that will
#  Take in a cost of goods sold and cash given
    # // and will return the change to be given and
    # // the appropriate bills and coins to give

    # // ex:
    # // How much did it cost?
    # // 3.43
    # // How much did they pay?
    # // 10
    # // They get 6.57 in change
    # // 1 five, 1 one, 2 quarters, 1 nickle, 2 pennies



    # // Bonus:
    # // As a bonus, any time the change being returned ends in a 3,
    # // give the correct change but with random
    # // denominations instead of largest to smallest

    # // ex:
    # // ...
    # // They get 3.33 in change
    # // 1 one, 8 quarters, 2 dimes, 1 nickle, 8 pennies (this should be random, not this result)
