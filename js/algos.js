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
  // I couldn't find a short way of doing this that didn't involve
  // built-in fancy methods found on Google
// Write a function that takes two parameters
// Find matching key values by creating two arrays of keys, then iterating over them looking for matches, then pushing matches to new array
// Loop over items in new array, seeing if the values of those keys are the same in each object, add matching values to another new array
// Return true if the new array has any items in it, else return false

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
// Create function
  // Input: integer (num)
  // Output: array of strings
// Create a random number (x) between 1 and 10
// Declare a variable that is the alphabet
// Create a string made of x amount of letters selected at random from the alphabet
// Do this num times

function random_test_data(num) {
  var test_data = []
  for (var z = 0; z < num; z++) {
    var random_string = []
    x = Math.floor((Math.random() * 10) + 1);
      for (var i = 0; i < x; i++) {
        var alphabet = "abcdefghijklmnopqrstuvwxyz";
        y = Math.floor((Math.random() * alphabet.length) + 1);
        random_string.push(alphabet[y]);
      }
    test_data.push(random_string.join(""));
  }
  return test_data
}




// DRIVER CODE

var phrases = ["long phrase","longest phrase","longer phrase"];
console.log(find_longest_phrase(phrases))

var berries = ["juniper", "lingonberries", "strawberries", "tons and tons and tons of blueberries", "raspberries"]
console.log(find_longest_phrase(berries))


console.log(compare_objects({name: "Steven", age: 53}, {name: "Tamir", age: 54}));
console.log(compare_objects({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));

var test1 = random_test_data(4);
console.log(test1);
console.log(find_longest_phrase(test1));

var test2 = random_test_data(10);
console.log(find_longest_phrase(test2));

console.log(random_test_data(7));
