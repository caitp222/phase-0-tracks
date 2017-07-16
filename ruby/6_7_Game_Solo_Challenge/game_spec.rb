# PSEUDOCODE FOR TESTING

# Let :guessword = "hello"
# Guess_Array method should return ["-","-","-","-","-"]
# Compare method with "l" as parameter should return ["-","-","l","l","-"]

require_relative 'game'

describe do
  let (:guessword) {Guessword.new("hello")}

  it "should return guesscount of word length + 5" do
    expect(guessword.guess_count).to eq 10
  end

  it "should return array of dashes" do
    expect(guessword.guess_array).to eq ["-","-","-","-","-"]
  end

  it "should inset guessed letter in guess_array" do
    expect(guessword.compare("l")).to eq ["-","-","l","l","-"]
  end

end
