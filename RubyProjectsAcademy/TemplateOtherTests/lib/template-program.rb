require './template-reader'

template = Template.new
template.get_variable("What is your name?")
puts template.replace_variable("My name is [first name]")