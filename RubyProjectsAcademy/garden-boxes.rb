puts "Tell me the width"
width = gets.to_i
puts "Tell me the length"
length = gets.to_i
area = width*length
perimeter = (width+length)*2
carrots = area
corn = area/16*3
beets = area/16*9
puts "The area of your future garden is " + area.to_s
puts "The perimeter of your garden is " + perimeter.to_s
puts "You can plant " + carrots.to_s + " carrots"
puts "You can plant " + corn.to_s + " corn stocks"
puts "You can plant " + beets.to_s + " beets"
