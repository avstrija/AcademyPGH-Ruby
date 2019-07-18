class MorseCode

	def convert (message)

		morse_dict = {
		"a" => ".-",
		"b" => "-...",
		"c" => "-.-.",
		"d" => "-..",
		"e" => ".",
		"f" => "..-.",
		"g" => "--.",
		"h" => "....",
		"i" => "..",
		"j" => ".---",
		"k" => "-.-",
		"l" => ".-..",
		"m" => "--",
		"n" => "-.",
		"o" => "---",
		"p" => ".--.",
		"q" => "--.-",
		"r" => ".-.",
		"s" => "...",
		"t" => "-",
		"u" => "..-",
		"v" => "...-",
		"w" => ".--",
		"x" => "-..-",
		"y" => "-.--",
		"z" => "--..",
		" " => " ",
		"1" => ".----",
		"2" => "..---",
		"3" => "...--",
		"4" => "....-",
		"5" => ".....",
		"6" => "-....",
		"7" => "--...",
		"8" => "---..",
		"9" => "----.",
		"0" => "-----"
		}
		morse_text = ""
		chars = message.downcase.split('')
		chars.each { |c|
		if morse_dict[c] != nil
			morse_text += "#{morse_dict[c]} "
		end
		}
	return morse_text
	end
	# puts "What message should I translate to Morse code?"
# puts morse_text
end