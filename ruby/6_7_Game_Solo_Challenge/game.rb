# PSEUDOCODE FOR WORD GUESSING GAME

# When user1 enters a word to be guessed, initalize a new instance of Guessword class
# Within initialize method, split word into array1
# Define a guesscount method [parameter: string, return value: integer] that returns a guesscount value of the number of letters in the array + 5
# Define a guess_array method [parameter: string, return value: array] that creates a new array2 where all elements are "-" and length is equal to array1.length
# Define a compare method [parameter: string, return value: array] that takes user2's letter and loops over array1 to find index value of matches. Inserts those values into array2 at matching indexes.
# Set array2 variable to be the array returned by compare method
# Loop until guesscount is 0 or there are no instances of "-" in Array2
# Using conditionals, If guesscount reaches 0, display sarcastic message
# Elsif, Array2 has no instances of "-", display congratulatory message

# GAME CLASS

class Guessword
  attr_reader :guessword_array, :guess_array

  def initialize(word)
    @guessword_array = word.chars
  end

  def guesscount
    @guessword_array.length + 5
  end

  def guess_array(word)
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
      return @guess_array
  end

end


guessword = Guessword.new("hello")
guessword.guess_array("hello")
p guessword.compare("o")

# USER INTERFACE
