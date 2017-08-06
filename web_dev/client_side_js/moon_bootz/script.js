// Test
console.log("This script is here!");

// Add border to the image when text is clicked
function addborder() {
  document.getElementById("boots_image").style.border = "3px solid yellow";
  // document.getElementById("boots_image").hidden = false;
}

var faveboots = document.getElementById("favoriteboots");
faveboots.addEventListener("click",addborder);