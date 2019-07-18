class Calculator

def calculate (my_string)
    nums = []
    secondary_operands = my_string.gsub(/\+|\-/, " ").split
    puts secondary_operands
    for item in secondary_operands
        new_operand = 0
        if item.include?("%") || item.include?("/") || item.include?("*")
            primary_nums = item.gsub(/\%|\/|\*/, " ").split
            
            (0..primary_nums.length-1).each {|i| 
                primary_nums[i] = primary_nums[i].to_i
            }
            i = 0
                item.each_char do |c|
                    if (c == ('%') || c == ('/') || c == ('*'))
                        case (c)
                            when '/'
                                if primary_nums[i + 1] == 0
                                    return "Cannot divide by zero"
                                else 
                                    primary_nums[i + 1] = primary_nums[i] / primary_nums[i + 1]
                                end
                            when '*'
                                    primary_nums[i + 1] *= primary_nums[i]
                            when '%'
                                    primary_nums[i + 1] = primary_nums[i] % primary_nums[i + 1]
                            end
                        i += 1
                        new_operand = primary_nums[primary_nums.length - 1]
                        nums = nums.push(new_operand)
                    end
                end
        else 
            new_operand = item.to_i
            nums = nums.push(new_operand)
        end
    end

    j = 0
    my_string.each_char do |c|
        if c == ('+') || c == ('-')
            case (c)
            when '+'
                nums[j + 1] += nums[j]
            when '-'
                nums[j + 1] = nums[j] - nums[j + 1]
            end
            j += 1
        end
    end
nums[nums.length-1]
end
end