// FUNCTION TO FIND THE LONGEST STRING
// Set a variable as the length of the first element in the Array
// Write a function that iterates thru the array, overwriting the variable with any element that is longer than its current value

// FUNCTION CODE

function find_longest_phrase(arr) {
  var longestword = arr[0]
  for (var i = 0; i < arr.length; i++) {
  if (longestword.length < arr[i].length) {
    var longestword = arr[i] }
  }
  return longestword;
}



// DRIVER CODE

var phrases = ["long phrase","longest phrase","longer phrase"];

console.log(find_longest_phrase(phrases))

var berries = ["juniper", "lingonberries", "strawberries", "tons and tons and tons of blueberries", "raspberries"]

console.log(find_longest_phrase(berries))