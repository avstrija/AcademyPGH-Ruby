class Template
    def initialize
        @tmplt_arr = ""
    end

    def assign_template(str)
        @tmplt_arr = str.split
    end

    def display_template
    @tmplt_arr.join(" ")
    end

    def fill_template(user_arr)
        if @tmplt_arr.length == 0 
            return ""
        elsif user_arr.length == 0
            return display_template()
        elsif @tmplt_arr.length == 1
            return user_arr[0]
        else 
            output = @tmplt_arr
            ind = 0
            brackets = ["[", "{", "<"]
            (0..@tmplt_arr.length-1).each {|x|
                if @tmplt_arr[x].start_with?(brackets) && ind < user_arr.length
                    output[x] = user_arr[ind]
                    ind += 1
                end 
            }
        end
    output.join(" ")
    end
end