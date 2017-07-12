## METHOD DECLARATIONS

class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num)
    age = num * 7
    puts "Your dog is #{age} in dog years."
    age
  end

  def stop_that(item)
  puts "Stop eating #{item} off the floor!"
  end

end

## DRIVER CODE

# duchess = Puppy.new
# fido = Puppy.new
# spot = Puppy.new

# puts "What toy do you want Fido to fetch?"
# toy = gets.chomp
# fido.fetch(toy)

# puts "How many times should Duchess bark?"
# num = gets.chomp.to_i
# duchess.speak(num)

# puts "Let's make Spot roll over!"
# spot.roll_over

# puts "How old is Fido in human years?"
# age = gets.chomp.to_i
# fido.dog_years(age)

# puts "What does Duchess have in her mouth?"
# item = gets.chomp
# duchess.stop_that(item)

## METHOD DECLARATIONS

class Cat

  def initialize
    puts "New cat!!"
  end

  def get_off(item)
    puts "Get off the #{item}!"
  end

  def hairties(num)
    puts "Your cat ate #{num} of your hairties, go get some more."
  end

  def cat_years(num)
    if num <= 2
      age = num * 12.5
    else
      age = (2 * 12.5) + ((num - 2) * 4)
    end
    puts "Your cat is #{age} in cat years."
    age
  end

end

## DRIVER CODE

cats = []
50.times do
  cat = Cat.new
  cats.push(cat)
end
p cats

# PREDEFINED, RUN 50 TIMES
cats.each do |cat|
  cat.get_off("the computer")
  cat.hairties(103)
  cat.cat_years(3)
end

# USER INTERFACE
# cats.each do |cat|
#   puts "Where is your cat?"
#   item = gets.chomp
#   cat.get_off(item)

#   puts "How many hairties are you missing?"
#   num = gets.chomp.to_i
#   if num == 0
#     puts "Your cat has learned to not eat your hairties-- Congrats!"
#   else
#     cat.hairties(num)
#   end

#   puts "How old is your cat in human years?"
#   num = gets.chomp.to_i
#   cat.cat_years(num)
# end

# INITIAL SOLUTION
# eleanor = Cat.new
# fluffy = Cat.new
# xena = Cat.new

# puts "Where is Eleanor?"
# item = gets.chomp
# eleanor.get_off(item)

# puts "How many hairties are you missing?"
# num = gets.chomp.to_i
# fluffy.hairties(num)

# puts "How old is Xena in human years?"
# num = gets.chomp.to_i
# xena.cat_years(num)