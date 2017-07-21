var colors = ["blue","purple","sparkly","multicolored"]
var names = ["Ed","Peanut Butter","Jelly","Wasabi"]

colors.push("mauve")
console.log(colors)

names.push("Theodore")
console.log(names)

// Assign colors to horses

var horse_colors = {};

for (var i = 0; i < colors.length; i++) {
  horse_colors[(names[i])] = colors[i];
}

console.log(horse_colors)

// Two ways of looping through an object

for (var key in horse_colors) {
  console.log(key);
}

console.log(Object.values(horse_colors));


// Constructor function for a car

function Car(color, year, model) {
  this.color = color;
  this.year = year;
  this.model = model;
  this.engine = function() {console.log("Vrooom Vroom!!");};
  console.log("New car is ready.");
}

var myCar = new Car("blue", 2017, "Toyota");
console.log(myCar.color);
myCar.engine();
console.log(myCar);

var yourCar = new Car("grafitte", 1985, "Ford");
console.log(yourCar.year);
yourCar.engine();