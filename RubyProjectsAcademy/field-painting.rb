puts "Enter the radius of your center circle: "
radius = gets.to_i
include Math
area = PI * radius * radius
paint = area / 100
puts "How many buckets of paint do you have?"
buckets = gets.to_i
puts "It will take #{(area / 100).ceil} buckets of paint to cover the #{radius}' radius circle."

if buckets >= area/100.ceil
    puts "You have enough paint."
else
    puts "You don't have enough paint."
end

puts "What color is your paint?"
color = gets.chomp.downcase

red = paint
blue = area / 120
green = area / 90
yellow = area / 70
output = 0
cost = 0

if color == "red"
    output = red
    cost = output * 25
elsif color == "blue"
    output = blue
    cost = output * 28
elsif color == "green"
    output = green
    cost = output * 33
elsif color == "yellow"
    output = yellow
    cost = output * 22
else
    color = "unknown"
end

puts "It will take #{output.ceil} buckets of #{color} paint to cover the #{radius}' 
radius circle. It will cost you $#{cost}." 