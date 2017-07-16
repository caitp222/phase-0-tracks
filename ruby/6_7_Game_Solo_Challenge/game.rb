# PSEUDOCODE FOR WORD GUESSING GAME

# When user1 enters a word to be guessed, initalize a new instance of Guessword class
# Within initialize method, split word into array1
# Define a guesscount method [parameter: string, return value: integer] that returns a guesscount value of the number of letters in the array + 5
# Define a guess_array method [parameter: string, return value: array] that creates a new array2 where all elements are "-" and length is equal to array1.length
# Define a compare method [parameter: string, return value: array] that takes user2's letter and loops over array1 to find index value of matches. Inserts those values into array2 at matching indexes.
# Set array2 variable to be the array returned by compare method
# Loop until guesscount is 0 or there are no instances of "-" in Array2
    #Add each guess to an array, and use a conditional that only adds to the guesscount if the new guess is not already in the array
# Using conditionals, If guesscount reaches 0, display sarcastic message
# Elsif, Array2 has no instances of "-", display congratulatory message

# GAME CLASS

class Guessword
  attr_reader :guessword_array
  attr_accessor :guess_array

  def initialize(word)
    @guessword_array = word.chars
  end

  def guess_count
    @guessword_array.length + 5
  end

  def guess_array
    @guess_array = []
    @guessword_array.length.times do
      @guess_array << "-"
    end
    @guess_array
  end

  def compare(letter)
      i = 0
        while i < @guessword_array.length
          if @guessword_array[i] == letter
            @guess_array[i] = letter
          end
          i += 1
        end
    p @guess_array
    return @guess_array
  end

end


# guessword = Guessword.new("hello")
# p guessword.guess_array
# p guessword.compare("l")

# USER INTERFACE

puts "Hello! Please enter a word for your friend to guess!"
game_word = Guessword.new(gets.chomp)
  p game_word
game_word.guess_array
  p game_word.guess_array
guess_counter = game_word.guess_count
  p guess_counter

user_guesses = []
puts "Now, let your friend guess letters in the word! Warning: guesses are limited!"
    until guess_counter == 0 || !game_word.guess_array.include?("-")
      letter = gets.chomp
        if user_guesses.include?(letter)
          puts "You've already guessed that letter!"
        elsif !game_word.guessword_array.include?(letter)
          puts "That letter's not in the word! Guess again."
          user_guesses << letter
          p user_guesses
          guess_counter -= 1
        elsif  game_word.guessword_array.include?(letter)
          p game_word.guess_array
          game_word.compare(letter)
          p game_word.guess_array
          user_guesses << letter
          guess_counter -= 1
          puts "#{guess_counter} guesses remaining!"
        end
    end

