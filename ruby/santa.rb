class Santa

  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eats_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!!"
  end

end

santa_claus = Santa.new

santa_claus.speak
santa_claus.eats_milk_and_cookies("snickerdoodle")
