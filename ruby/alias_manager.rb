
def code_name(name)


    def name_swap(name)
    #Split name into two at the space, then swap those two around and rejoin

      new_name = name.split(' ')
      new_name[0], new_name[1] = new_name[1], new_name[0]
      new_name = new_name.join(" ")

    end

    def next_vowel(name)

    #Create array of vowels, then create array of characters from the name
    #If a letter from new_name array is also in vowels, switch it to the next vowel in the Vowels array

      vowels = ["a","e","i","o","u"]
      new_name = name.downcase
      new_name = new_name.chars
      new_name.map! do |char|
        if char == vowels.last
          char = vowels.first
        elsif vowels.include?(char)
          i = vowels.index(char)
          char = vowels[i + 1]
        elsif vowels.include?(char) == false
          char = char
        end
      end
  new_name = new_name.join
  end

  def next_consonant(name)

    #Define vowels
      vowels = ["a","e","i","o","u"]
    #Create an array of the alphabet but extracting the vowels
      consonants = []
      ("a".."z").each do |char|
      consonants.push(char)
      end
      consonants.each do
      consonants.delete_if {|char|
      vowels.include?char}
      end

    new_name = name.downcase
    new_name = new_name.chars
    new_name.map! do |char|
      if char == "z"
        char = "a"
      elsif char == " "
        char = char
      elsif vowels.include?(char) == true
       char = char
      elsif consonants.include?(char) == true
        i = consonants.index(char)
        char = consonants[i + 1]
      end
  end
  new_name = new_name.join
  end


  #Run three pre-defined methods on the name
  code_name = name_swap(name)
  code_name = next_vowel(code_name)
  code_name = next_consonant(code_name)
  #Upcase the first letters of the name
  code_name = code_name.chars
  i = code_name.index(" ")
  code_name[0].upcase!
  code_name[i+1].upcase!
  code_name.join
end

#p name_swap("Felicia Torres")
#p next_vowel("Felicia Torres")
#p next_consonant("Felicia Torres")
#p code_name("Felicia Torres")
#p code_name("Zinedine Zidane")

#if code_name("Felicia Torres") == "Vussit Gimodoe"
#  puts "Finished"
#elsif puts "Almost there!"
#end


#DRIVER CODE

if Time.now.hour < 12
  puts "Good Morning."
  elsif puts "Good Afternoon."
end

list_of_spies = {}
user_continues = true

puts "Please enter the names of your spies, then type 'quit' when done."

until user_continues == false

  user_input = gets.chomp
    if user_input == "quit"
      user_continues = false
    elsif
    spy_name = code_name(user_input)
    p spy_name
    list_of_spies[user_input] = spy_name
    end

end


puts "Here is your new team:"
list_of_spies.each do |real_name, coded_name|
  puts "#{coded_name}, formerly known as #{real_name}."
end

