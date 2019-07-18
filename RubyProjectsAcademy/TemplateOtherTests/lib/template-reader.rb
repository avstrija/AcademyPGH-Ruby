class Template
    def initialize
        @givenName = ""
    end

    def return_string(givenString)
      return givenString
    end

    def between_the_braces(givenString)
      #Going to use some regex here and to return whatever is between the braces
      #So these backslashes are allowing us to use the brackts on the interior
      #Apparently this only returns the first one
      #Thats fine for this particular thing though

      givenString[/\[(.*?)\]/, 1]
    end

    def get_variable(givenArg)
      puts givenArg
      @givenName = gets.chomp
      return @givenName
    end

    def replace_variable(givenTemplate)
      puts @givenName
      return givenTemplate.sub! "[first name]", @givenName
    end
end
