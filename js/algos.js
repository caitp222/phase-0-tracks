// FUNCTION CODE
// Find longest phrase
// Set a variable as the length of the first element in the Array
// Write a function that iterates thru the array, overwriting the variable with any element that is longer than its current value

function find_longest_phrase(arr) {
  var longestword = arr[0]
  for (var i = 0; i < arr.length; i++) {
  if (longestword.length < arr[i].length) {
    var longestword = arr[i] }
  }
  return longestword;
}

// Compare key value pairs in two objects
// Write a function that takes two parameters
// Find matching key values using object.keys
// Assign a variable to that key and check to see if their properties also match
// Return true if so, else return false

function compare_objects(obj1, obj2) {
  var obj1_keys = Object.keys(obj1)
  var obj2_keys = Object.keys(obj2)
  var key_matches = []
    for (var i = 0; i < obj1_keys.length; i++) {
     for (var x = 0; x < obj2_keys.length; x++) {
      if (obj1_keys[i] == obj2_keys[x]) {
        key_matches.push(obj1_keys[i])
      }
     }
    }
  var value_matches = []
    for (var i = 0; i < key_matches.length; i++) {
      if (obj1[key_matches[i]] == obj2[key_matches[i]]) {
        value_matches.push(obj1[key_matches[i]])
      }
    }
  if (value_matches.length > 0) {
    return true
  }
  else {return false}
}





// Generate Random Test Data
// Create function with an integer for its parameter
// Write a for statement that performs the following that number of times
// Within function, generate a random number and store it in a variable
// Generate a string of random length (between 1 and 10 characters)

// function random_test_data(num) {
//   var random_array = []
//   var characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
//   for
//   var i = Math.floor(Math.random() * characters.length) + 1
// //random_array.push
// console.log(characters[i])

//   // Math.random() * characters.length])
// return random_array
// }

// console.log(random_test_data())



// DRIVER CODE

var phrases = ["long phrase","longest phrase","longer phrase"];
console.log(find_longest_phrase(phrases))

var berries = ["juniper", "lingonberries", "strawberries", "tons and tons and tons of blueberries", "raspberries"]
console.log(find_longest_phrase(berries))


console.log(compare_objects({name: "Steven", age: 53}, {name: "Tamir", age: 54}));
console.log(compare_objects({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));