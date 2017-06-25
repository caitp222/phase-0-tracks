

def encrypt(str)
  #define i as 0
  i = 0

  #loop through string
  while i < str.length
    #deal with the issue of z
      if str[i] == "z"
        str[i] = "a"
    #otherwise, advance each letter to the next one in the alphabet
      else
        str[i] = str[i].next

      end

    i += 1
  end

  puts str

end

def decrypt(str)
  i = 0

alphabet = "abcdefghijklmnopqrstuvwxyz".reverse!

  while i < str.length
    if str[i] == "a"
      str[i] = "z"
    else
     #find character that index refers to
     letter_index = "#{str[i]}"
     #find number of that character in reversed alphabet
     letter_number = alphabet.index("#{letter_index}")
     #convert to integer
     letter_number = letter_number.to_i
     #re-define the character in the decryption as the next character in reversed alphabet
     str[i] =  alphabet[letter_number + 1]
    end

   i += 1
  end

  puts str

end

#USER INTERFACE/DRIVER CODE

user_encryption = FALSE
user_decryption = FALSE

until user_encryption == true || user_decryption == true
puts "Hello, would you like to decrypt or encrypt a password today?"
  user_needs = gets.chomp

    if user_needs == "encrypt"
      user_encryption = TRUE
      elsif user_needs == "decrypt"
      user_decryption = TRUE
      else puts "Invalid answer, please try again."
    end

end

puts "Please enter the password."
password = gets.chomp

  if user_encryption == TRUE
    puts "This is the encrypted password:"
      encrypt(password)
    elsif user_decryption == TRUE
    puts "This is the decrypted password:"
      decrypt(password)
  end







