console.log("this script is here!");

function addborder() {
  document.getElementById("boots_image").style.border = "3px solid yellow";
}

var faveboots = document.getElementById("favoriteboots");
faveboots.addEventListener("click",addborder);