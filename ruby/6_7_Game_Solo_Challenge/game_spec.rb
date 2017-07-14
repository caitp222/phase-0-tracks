# PSEUDOCODE FOR TESTING

# Let :guessword = "Hello"
# Guess_Array method should return ["-","-","-","-","-"]
# Compare method with "h" has parameter should return ["H","-","-","-","-"]

describe do
  let (:guessword) {"hello"}

  it "should return guesscount of word length + 5" do
    expect(guessword.guesscount).to eq 10
  end

  it "should return array of dashes" do
    expect(guessword.guess_array).to eq ["-","-","-","-","-"]
  end

  it "should inset guess letter at same index as it appears in guessword array" do
    expect(guessword.compare("h")).to eq ["h","-","-","-","-"]
  end

end
