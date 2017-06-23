puts " What's your hamster's name?"
name = gets.chomp

puts "How loud is your hamster from 1 to 10?"
level = gets.chomp
level = level.to_i

puts "What color is your hamster?"
color = gets.chomp

puts "Would anyone want your hamster?"
likeability = gets.chomp

if likeability == "y"
  likeability = TRUE
else likeability = FALSE
end


puts "How old is your hamster?"
age = gets.chomp

if age == ""
  age = nil
  else
    age = age.to_i
end

puts "The hamster's name is #{name}."
puts "The hamster is #{level} on a loudness scale."
puts "The hamster is #{color}."

if likeability == TRUE
  puts "This is a great hamster!"
else
  puts "This is a terrible hamster!"
end

if age == nil
puts "The hamster's age is unknown."
else
  puts "The hamster is #{age} years-old."
end