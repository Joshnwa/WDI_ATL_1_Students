puts "please enter your text"
text=gets.chomp
puts "Whats your name?"
name=gets.downcase.chomp
# #puts name.reverse

# # --- THIS IS THE METHOD TO REVERSE---
# # paragraph= text.split(" ")
# # paragraph.each do |word|
# # if word != name
# # print word + " "
# # else
# # print name.reverse + " "
# # end
# # end
#  # --- THIS IS THE METHOD TO SHUFFLE THE NAME ----




name2=name.to_s
name3= name2.split(//).shuffle.join

paragraph= text.split(" ")
paragraph.each do |word|
if word != name
print word + " "
else
print name3 + " "
end
end


# name3= name2.each_char{|c| print c, ','}
# puts name3.chomp
#name3= name2.split(//)
# name4=name3.chars.to_a;
# name4.split(',')
#chars.to_a


#-------- THIS IS ANOTHER WAY TO SHUFFLE ====>>>>>  sort_by{rand}

# def shuffle(name)
# name.shuffle
# puts name
# end
# paragraph= text.split(" ")
# paragraph.each do |word|
# if word != name
# print word + " "
# else
# print shuffle(name) + " "
# end
# end

#puts name.shuffle.to_s