puts "How much did it cost?"
cost = gets.to_f
puts "How much did they pay?"
paid = gets.to_f
output = ""
change_dollars = (paid-cost).floor
change_cents = (((paid-cost)%1).round(2)*100).to_i

while change_dollars > 0 || change_cents > 0
    if change_dollars >= 100
        output += (paid/100).to_s + " hundreds"
        if change_dollars%100 != 0
            change_dollars = change_dollars%100
            output += ", "
        end
    end
    if change_dollars >= 20
        output += (change_dollars/20).to_s + " twenties"
        if change_dollars%20 != 0
            change_dollars = change_dollars%20
            output += ", "
        end
    end
    if change_dollars >= 10
        output += (change_dollars/10).to_s + " tens"
        if change_dollars%10 != 0
            change_dollars = change_dollars%10
            output += ", "
        end
    end
    if change_dollars >= 5
        output += (change_dollars/5).to_s + " fives"
        if change_dollars%5 != 0
            change_dollars = change_dollars%5
            output += ", "
        end
    end
    if change_dollars >= 1
        output += (change_dollars).to_s + " ones"
        change_dollars = 0
        if change_cents != 0
            output += ", "
        end
    end
    if change_cents >= 25
        output += (change_cents/25).to_s + " quarters"
        if change_cents%25 != 0
            change_cents = change_cents%25
            output += ", "
        end
    end
    if change_cents >= 10
        output += (change_cents/10).to_s + " dimes"
        if change_cents%10 != 0
            change_cents = change_cents%10
            output += ", "
        end
    end
    if change_cents >= 5
        output += (change_cents/5).to_s + " nickels"
        if change_cents%5 != 0
            change_cents = change_cents%5
            output += ", "
        end
    end
    if change_cents >= 1
        output += (change_cents).to_s + " cents"
        change_cents = 0
    end
end
puts output
    


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

