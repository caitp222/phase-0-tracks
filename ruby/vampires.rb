puts "How many employees will be processed in this session?"
employee_number = gets.chomp
employee_number = employee_number.to_i

while employee_number >= 1

puts "What is your name?"
name = gets.chomp!

puts "What year were you born? How old are you?"
age_answer = gets.chomp
birth_year = age_answer.split.first
birth_year = birth_year.to_i
user_age = age_answer.split.last
user_age = user_age.to_i
calculated_age = 2017 - birth_year

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
bread_answer = gets.chomp
  if bread_answer == "yes"
    likes_garlic = TRUE
  elsif bread_answer == "no"
    likes_garlic = FALSE
  end

puts "Would you like to enroll in the company’s health insurance?"
insurance_answer = gets.chomp
  if insurance_answer == "yes"
  wants_insurance = TRUE
    elsif
    insurance_answer == "no"
    wants_insurance = FALSE
  end

puts "Please list your allergies, one at a time and type 'done' when you're finished."
allergy = gets.chomp
until allergy == "sunshine" || allergy == "done"
puts "Please list your allergies, one at a time:"
allergy = gets.chomp
end


  if
    name == "Drake Cula" || name == "Tu Fang"
    puts "#{name} is definitely a vampire."
  elsif
    calculated_age == user_age && likes_garlic == TRUE && wants_insurance == TRUE
    puts "#{name} is probably not a vampire."
  elsif
    calculated_age != user_age && (likes_garlic == FALSE || wants_insurance == FALSE)
    puts "#{name} is almost certainly a vampire."
  elsif
    (calculated_age != user_age && likes_garlic == FALSE && wants_insurance == FALSE) || allergy == "sunshine"
    puts "#{name} is probably a vampire."
  else
    puts "Results inconclusive."
  end

puts "#{name} gave their age as #{user_age}."
puts "#{name}'s age based on the birth year they gave is #{calculated_age}."
  if likes_garlic == TRUE
    puts "#{name} likes garlic."
  elsif
    likes_garlic == FALSE
    puts "#{name} doesn't like garlic."
  else
    puts "#{name} gave an invalid answer to the garlic question."
  end
  if wants_insurance == TRUE
    puts "#{name} would like to sign up for health insurance."
  elsif
    wants_insurance == FALSE
    puts "#{name} doesn't want health insurance"
  else
    puts "#{name} gave an invalid answer to the insurance question."
  end

employee_number = employee_number - 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."