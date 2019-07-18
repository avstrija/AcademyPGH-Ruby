braille_dict = {
    " " => "      ",
    "a" => "+_____",
	"b" => "+_+___",
	"c" => "++____",
	"d" => "++_+__",
	"e" => "+__+__",
	"f" => "+++___",
	"g" => "++++__",
	"h" => "+_++__",
	"i" => "_++___",
	"j" => "_+++__",
	"k" => "+_+_+_",
	"l" => "++_+__",
	"m" => "++__+_",
	"n" => "++_++_",
	"o" => "+__++_",
	"p" => "+++_+_",
	"q" => "+++++_",
	"r" => "+_+++_",
	"s" => "_++_+_",
	"t" => "_++++_",
	"u" => "+___++",
	"v" => "+_+_++",
	"w" => "_+++_+",
	"x" => "++__++",
	"y" => "++_+++",
	"z" => "+__+++",
	"#" => "_+_+++",
	"1" => "+_____",
	"2" => "+_+___",
	"3" => "++____",
	"4" => "++_+__",
	"5" => "+__+__",
	"6" => "+++___",
	"7" => "++++__",
	"8" => "+_++__",
	"9" => "_++___",
	"0" => "_+++__",
}
sample_text = "This is some text\nNew line here\nAnd one more line"
text = sample_text.downcase.split("\n")
for i in 0..(text.length-1)
    output_line1 = ""
    output_line2 = ""
    output_line3 = ""
    chars = text[i].split('')
    chars.each { |c|
        if braille_dict[c] != nil
            output_line1 += "#{braille_dict[c][0,2]} "
            output_line2 += "#{braille_dict[c][2,2]} "
            output_line3 += "#{braille_dict[c][4,2]} "
        end 
} 
    puts output_line1
    puts output_line2
    puts output_line3
    puts ""
end
