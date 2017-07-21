var colors = ["blue","purple","sparkly","multicolored"]
var names = ["Ed","Peanut Butter","Jelly","Wasabi"]

colors.push("mauve")
console.log(colors)

names.push("Theodore")
console.log(names)

// Assign colors to horses

var horse_colors = {};

for (var i = 0; i <= colors.length; i++) {
  horse_colors[(names[i])] = colors[i];
}

console.log(horse_colors)