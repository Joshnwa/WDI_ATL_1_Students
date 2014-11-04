CODE_HASH = {
"a" => "Alligator",
"b" => "Bat",
"c" => "Cheetah",
"d" => "Dog",
"e" => "Elephant",
"f" => "Fish",
"g" => "Giraffe",
"h" => "Hippo",
"i" => "Iguana",
"j" => "Jaguar",
"k" => "Kangaroo",
"l" => "LLama",
"m" => "Monkey",
"n" => "Nutcracker",
"o" => "Ostrich",
"p" => "Panda",
"q" => "Quail",
"r" => "Rooster",
"s" => "Squirrel",
"t" => "Turtle",
"u" => "Unicorn",
"v" => "Viper",
"w" => "Wildcat",
"x" => "Unicorn",
"y" => "Yak",
"z" => "Zebra"
}

def program
validate_first_name = false
validate_last_name = false
validate_option = false

while validate_first_name == false
print "Enter First Name: "
first_name = gets.chomp
if first_name[0] =~ /^[A-z]+$/
validate_first_name = true
else
puts "Only alpha characters please"
end
end

while validate_last_name == false
print "Enter Last Name: "
last_name = gets.chomp
if last_name[0] =~ /^[A-z]+$/
validate_last_name = true
else
puts "Only alpha characters please"
end
end

while validate_option == false 
puts "How will you like to encrypt your name?"
puts "1) Reverse Name"
puts "2) Scramble Name"
puts "3) Code Name"
option = gets.chomp
case option
when "1"
spyname = reverse(first_name, last_name)
validate_option = true
when "2"
spyname = scramble(first_name, last_name)
validate_option = true
when "3"
spyname = code_name(first_name, last_name)
validate_option = true
else
puts "Invalid option"
puts "Try again"
end
end
puts spyname
end

def reverse(first_name, last_name)
(first_name + last_name).downcase.reverse
end 

def scramble(first_name, last_name)
(first_name + last_name).downcase.split("").shuffle.join
end 

def code_name(first_name, last_name)
CODE_HASH[first_name[0].downcase] + " " + CODE_HASH[last_name[0].downcase]
end 

program