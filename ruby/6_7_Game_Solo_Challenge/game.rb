# PSEUDOCODE FOR WORD GUESSING GAME

# When user1 enters a word to be guessed, initalize a new instance of Guessword class
# Within initialize method, split word into array1
# Define a guesscount method [parameter: string, return value: integer] that returns a guesscount value of the number of letters in the array + 5
# Define a guess_array method [parameter: string, return value: array] that creates a new array2 where all elements are "-" and length is equal to array1.length
# Define a compare method [parameter: string, return value: array] that takes user2's letter and loops over array1 to find index value of matches. Inserts those values into array2 at matching indexes.
# Set array2 variable to be the array returned by compare method
# Loop until guesscount is 0 or there are no instances of "-" in Array2
    #Add each guess to an array, and use a conditional that only adds to the guesscount if the new guess is not already in the array
# Using conditionals, if guesscount reaches 0 before the word is guessed, display sarcastic message. If the word is guessed, display congratulatory message


# GAME CLASS DECLARATION

class Guessword
  attr_reader :guessword_array
  attr_accessor :guessed_array

  def initialize(word)
    @guessword_array = word.chars
  end

  def guess_count
    @guessword_array.length + 5
  end

  def guess_array
    @guessed_array = []
    @guessword_array.length.times do
      @guessed_array << "-"
    end
    @guessed_array
  end

  def compare(letter)
      i = 0
        while i < @guessword_array.length
          if @guessword_array[i] == letter
            @guessed_array[i] = letter
          end
        i += 1
        end
    @guessed_array
  end

end


# USER INTERFACE

puts "Hello! Please enter a word for your friend to guess!"
game_word = Guessword.new(gets.chomp)
game_word.guess_array
guess_counter = game_word.guess_count

user_guesses = []
puts "Now, let your friend guess letters in the word! Warning: guesses are limited!"
    until guess_counter == 0 || !game_word.guessed_array.include?("-")
      letter = gets.chomp
        if user_guesses.include?(letter)
          puts "You've already guessed that letter!"
        elsif !game_word.guessword_array.include?(letter)
          puts "That letter's not in the word!"
          user_guesses << letter
          guess_counter -= 1
        elsif  game_word.guessword_array.include?(letter)
          puts "Correct!"
          p game_word.compare(letter).join
          user_guesses << letter
          guess_counter -= 1
          puts "#{guess_counter} guesses remaining!"
        end
    end
    if guess_counter == 0
        puts "You've run out of guesses, you suck!"
    elsif !game_word.guessed_array.include?("-")
        puts "Get you, you guessed the word!"
    end

