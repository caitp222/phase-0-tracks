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
  }

// CHANGES MADE AFTER EXPERIMENTING WITH THE CODE
// Subtract 1 from the string length to print starting at last letter
// Add declaration of word as an empty string before 'for'

reverse("hello")


