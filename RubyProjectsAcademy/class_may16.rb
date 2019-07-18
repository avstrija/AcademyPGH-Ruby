# have a list of contacts -
# add to it
# display my contacts

class Contact
    # attr_writer
    # attr_reader
    # these functions are all about what you can do with the variable outside the class
    attr_accessor :name
    attr_accessor :phone_number

    # a function to display a contact
    def display
        puts "#{name}: #{phone_number}"
    end

    # this is what attr_accesors do
    # def name
    #     @name
    # end
    # def name=(string)
    #     @name = string
    # end
end

my_contact = Contact.new
my_contact.name = "Jean"
my_contact.phone_number = "3"

puts "Here's your contact:"
# Contact's display method abstracts away these details.
# puts "#{my_contact.name}: #{my_contact.phone_number}"
my_contact.display