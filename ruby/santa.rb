class Santa

  attr_reader :age, :reindeer_ranking, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eats_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!!"
  end

  #Getter and Setter methods

  def celebrates_birthday
    @age += 1
  end

  def gets_mad_at(reindeer_name)
    i = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking << @reindeer_ranking[i]
    @reindeer_ranking.delete_at(i)
  end

end

santa_claus = Santa.new("Female","White")

santa_claus.speak
santa_claus.eats_milk_and_cookies("snickerdoodle")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# p santas

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i],example_ethnicities[i])
# end

# p santas

#Add diverse instances to the Santa class
santas = []
examples = {
  genders: ["female", "gender non-conforming", "intersex", "male", "more than one", "none"],
  ethnicities: ["elf", "dwarf", "orc", "human", "none", "all"]
}


examples[:genders].length.times do |i|
  santas << Santa.new(examples[:genders][i], examples[:ethnicities][i])
end

p santas

#Getter/Setter method driver code

santas[1].celebrates_birthday
p santas[1].age

santas[2].gets_mad_at("Comet")
p santas[2].reindeer_ranking

santas[3].gender=("as yet undiscovered")
p santas[3].gender

p santas[4].ethnicity


