def messageEncrypter(old_message)
    new_message = "".chomp
    value = 0
    chars = old_message.split('')
    chars.each { |c|
        value = c.ord + 13
        new_c = value.chr
        new_message += new_c.to_s
    }   
new_message
end


def messageDecrypter(old_message)
    new_message = "".chomp
    new_char = "x"
    value = 0
    chars = old_message.split('')
    chars.each { |c|
        value = c.ord - 13
        new_c = value.chr
        new_message += new_c.to_s
    }   
new_message
end

def messageSaver(messages,index)
    puts "What do you want to say?"
    new_message = gets.chomp
    messages[index] = messageEncrypter(new_message)
    puts "Your message ID is #{index}"
messages
end

def messageRetriever(messages) 
    puts "What's the ID of the message you want to read?"
    new_ID = gets.to_i
    if messages[new_ID] != nil || new_ID < 0 || new_ID > messages.size
        puts "The message is: " + messageDecrypter(messages[new_ID])
    else
        puts "Sorry, wrong ID. Try again."
    end
end

def PrintEncrypted(messages)
    for s in messages
        puts s
    end
end

messages = Array.new()
index = 0
while true
    puts "What do you want to do?" +
        "\n(Press ? to see the commands)"
    input = gets.chomp.upcase
    if input=="?" 
        puts "S - Save a new message\n" +
            "R - Retrieve a message\n" +
            "D - Delete a message\n" +
            "E - Exit\n" +
            "P - Print encrypted messages\n"
            input = gets.chomp.upcase
    end
    if input=="S"
        while messages[index] != nil 
            index += 1
        end
        messageSaver(messages, index)
        index += 1
    elsif input == "D" 
        puts "What's the ID of the message you want to delete?"
        new_ID = gets.to_i
        messages[new_ID] = nil
        index = new_ID
    elsif (input == "R")
        messageRetriever(messages)
    elsif (input == "P")
        printEncrypted(messages)
    elsif (input == "E")
        puts "Bye!"
        break
    else
        puts "Wrong input. Try again"
    end
end