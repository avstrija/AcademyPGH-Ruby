class Sort

    def sort_array(my_array)
        for i in (0..my_array.length-2)
            for j in (i..my_array.length-1)
                tmp = my_array[i]
                if (tmp.ord > my_array[j].ord)
                    puts tmp
                    puts tmp.ord
                    my_array[i] = my_array[j]
                    my_array[j] = tmp
                end
        end
        end
    my_array
    end
end

array = [1, 7, 'b', 3, "h", 5, "horse", 6, 2, 7, 'z', 'a']
sort = Sort.new
puts sort.sort_array(array)