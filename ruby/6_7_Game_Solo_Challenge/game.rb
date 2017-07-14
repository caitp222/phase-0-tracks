# PSEUDOCODE FOR WORD GUESSING GAME
# When user one enters a word, initialize a new instance of GuessWord class and use .chars to split it into an Array1
# As a second part of the initialize method, create Array2 with an equal number of elements, all of which are nil
# When user two enters a letter, run a Compare method that compares it to Array1
# When Compare method finds a match in Array1, it enters that letter into Array2 at the same index
# The Compare method then prints Array2.join to the console
# Add a loop so that this continues for a number of times that is 1.5x the length of the word, or until none of the elemtns of Array2 are nil
# After the maximum number of attempts has expired, use a conditional to print a taunting message if any of the elements in Array1 are still nil.
# If none of the elements are nil before the max number of attempts has expired, print a congratulatory message

# CLASS CODE





# DRIVER CODE