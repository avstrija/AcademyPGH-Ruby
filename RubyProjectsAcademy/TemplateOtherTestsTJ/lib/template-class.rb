class Template 
    def initialize
        @template = []
    end
    def generator(str)
        @template = str.split
        
        (0..array.length-1).each {|i|
            if array[i].start_with?("[")
                j = i
                new_arr = []
                while true
                    new_arr << array[j]
                    if array[j].end_with?("]")
                        break
                    end
                    j += 1
                end
                output << new_arr.join(" ").tr("[]", "")
            end
        }
    @template
    end

    def sub_stuff(str_old, str_new)
        @template.join(" ").gsub(str_old, str_new)
    end
    
    def final
    @template.join(" ")
    end
end