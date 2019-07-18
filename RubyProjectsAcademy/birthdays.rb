puts "What month were you born?"
month = gets.chomp 

if (month == "january" || month == "february" || month == "december")
    puts "you were born in winter"
elsif (month == "march" || month == "april" || month == "may")
    puts "you were born in spring"
end

case month 
    when "january", "february", "december"
        puts "you were born in winter"
    when "march", "april", "may"
        puts "you were born in spring"
end

puts "the value of month is #{month}"