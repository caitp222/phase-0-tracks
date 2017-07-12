#MODULE DECLARATION

module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    ":D " + words +"!!!!"
  end

end

#DRIVER CODE

p Shout.yell_angrily("Go Away")

p Shout.yelling_happily("Hello")