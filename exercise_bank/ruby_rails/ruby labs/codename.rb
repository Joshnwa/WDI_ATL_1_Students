continue = "y"
while continue == 'y' do

puts "Please enter your first name."
fname = gets.chomp

puts "Please enter your last name"
lname = gets.chomp

puts "Choose between Backwards, Scramble, or Code Name."

answer = gets.chomp

if answer == "Backwards"
puts fname.reverse + " " + lname.reverse

elsif answer == "Scramble"

def name_shuffle(name)
name.split(//).shuffle.join
end

puts name_shuffle(fname) + " " + name_shuffle(lname)

else

f_letter = fname[0].downcase
l_letter = lname[0].downcase

phon_alpha =  { 
"a" => "Alpha",
"b" => "Bravo",
"c" => "Charlie",
"d" => "Delta",
"e" => "Echo",
"f" => "Foxtrot",
"g" => "Golf",
"h" => "Hotel",
"i" => "India",
"j" => "Juliet",
"k" => "Kilo",
"l" => "Lima",
"m" => "Mike",
"n" => "November",
"o" => "Oscar",
"p" => "Papa",
"q" => "Quebec",
"r" => "Romeo",
"s" => "Sierra",
"t" => "Tango",
"u" => "Uniform",
"v" => "Victor",
"w" => "Whiskey",
"x" => "X-ray",
"y" => "Yankee",
"z" => "Zulu"
}

puts phon_alpha[f_letter]

puts phon_alpha[l_letter]

end 

puts "Try Again? (y/n)"
continue = gets.chomp
end
puts "Thanks for playing."