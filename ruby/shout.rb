# #MODULE DECLARATION

# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     ":D " + words +"!!!!"
#   end

# end

# #DRIVER CODE

# p Shout.yell_angrily("Go Away")

# p Shout.yelling_happily("Hello")


#MIXIN MODULE DECLARATION

#Create Mixin module for Shout module declared above
#Create two classes that might shout
#Call the two Shout methods on new instances of the two classes

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    ":D " + words +"!!!!"
  end

end

#CLASS DECLARATIONS

class Disgruntled_employees
    include Shout
  end

class Wedding_guests
    include Shout
  end

disgruntled_employee = Disgruntled_employees.new
wedding_guest = Wedding_guests.new

p disgruntled_employee.yell_angrily("I quit")

p wedding_guest.yelling_happily("Congratulations")
