// REVERSE FUNCTION
// Write a function that reverses a string
// Declare a variable i as the length of the string
// Make i count down to zero and print the letter at each index


function reverse(str) {
  var word = ''
for (var i = str.length - 1; i >= 0; i--) {
  var word = word + str[i];
      }
    console.log(word);
    return word
  }

// CHANGES MADE AFTER EXPERIMENTING WITH THE CODE
// Subtract 1 from the string length to print starting at last letter
// Add declaration of word as an empty string before 'for'
// Add return at last line in order to store return value as a new variable

var new_word = reverse("hello")

if (new_word == "olleh") {
  console.log("Woo!")
} else {
  console.log("Oh, fudge!")
}

