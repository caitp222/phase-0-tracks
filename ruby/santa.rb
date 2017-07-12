class Santa

  attr_reader :reindeer_ranking, :ethnicity
  attr_accessor :gender, :age

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

#BUILD MANY SANTAS

#expand available genders and ethnicities in array
#generate lots of santas
#definite a method that takes an integer as a parameter to generate that number of santas
#within method, use n.times do to generate the santas
#use random method to select an index to use on the gender and ethnicity arrays to select parameters for the initialize method
#change age attribute within the class definition to a setter method
#within santa generator method, set age to random number between 0 and 140

$example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "female", "gender non-conforming", "intersex", "male", "more than one", "none"]
$example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "elf", "dwarf", "orc", "human", "none", "all"]

def santa_generator(n)
  n.times do
    gender_i = rand(0...$example_genders.length)
    ethnicity_i = rand(0...$example_ethnicities.length)
    santa = Santa.new($example_genders[gender_i], $example_ethnicities[ethnicity_i])
    santa.age = rand(0..140)
    p santa.age
    p santa.gender
    p santa.ethnicity
  end
end

santa_generator(100)