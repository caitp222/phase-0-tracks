# PSEUDOCODE FOR TESTING

# Let :guessword = "hello"
# Guess_Array method should return ["-","-","-","-","-"]
# Compare method with "h" as parameter should return ["","-","-","-","-"]

require_relative 'game'

describe do
  let (:guessword) {Guessword.new("hello")}

  it "should return guesscount of word length + 5" do
    expect(guessword.guesscount).to eq 10
  end

  it "should return array of dashes" do
    expect(guessword.guess_array("hello")).to eq ["-","-","-","-","-"]
  end

  it "should inset guess letter at same index as it appears in guessword array" do
    expect(guessword.compare("l")).to eq ["-","-","l","l","-"]
  end

end
