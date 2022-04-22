//get button reference
var exploreBtn = document.getElementById('exploreBtn');

//add click function
myBtn.addEventListener('click', function(event) {
  addField();
});

//it's more efficient to get the form reference outside of the function, rather than getting it each time
var form = document.getElementById('myForm');

function addField() {
  var input = document.createElement('input');
  form.appendChild(input);
}