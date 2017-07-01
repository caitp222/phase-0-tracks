# Build an empty array

client_preferences = {
}

#Ask the designer for client info

puts "What is the client's name?"
client_preferences[:name] = gets.chomp

# Prompt user to correct their typing if needed
puts "You entered #{client_preferences[:name]}, is this correct? (y/n)"
correct_spelling = gets.chomp

  if correct_spelling == "y"
  elsif correct_spelling == "n"
    puts "Please re-enter your name."
    client_preferences[:name] = gets.chomp
  end


puts "How many children does #{client_preferences[:name]} have?"
client_preferences[:children] = gets.chomp

puts "What decor theme does #{client_preferences[:name]} currently have in their home?"
client_preferences[:current_decor_theme] = gets.chomp

puts "What decor would #{client_preferences[:name]} prefer to have in their home?"
client_preferences[:preferred_decor_theme] = gets.chomp

puts "Are you sure that #{client_preferences[:name]} wants #{client_preferences[:preferred_decor_theme]} in their home? (y/n)"
correct_preferred_decor = gets.chomp

  if correct_preferred_decor == "y"
  elsif correct_preferred_decor == "n"
    puts "What would they really want?"
    client_preferences[:preferred_decor_theme] = gets.chomp
  end

# Print hash to screen
p "This is the data you have entered:"
p client_preferences

# Give designer opportunity for corrections
puts "Is this correct? (y/n)"
correct_hash = gets.chomp

  if correct_hash == "y"
  elsif correct_hash == "n"
    puts "What do you want to change?"
      designer_correction = gets.chomp
          if designer_correction == "name"
            puts "Enter correct answer:"
            client_preferences[:name] = gets.chomp
          elsif designer_correction == "children"
            puts "Enter correct answer:"
            client_preferences[:children] = gets.chomp
          elsif designer_correction == "current decor theme"
            puts "Enter correct answer:"
            client_preferences[:current_decor_theme] = gets.chomp
          elsif designer_correction == "preferred decor theme"
            puts "Enter correct answer:"
            client_preferences[:preferred_decor_theme] = gets.chomp
          end
  end

# Print the hash
p client_preferences
