window.alerts = function(input_id, answer) {
	var guess = document.getElementById(input_id).value;
	if(guess.toLowerCase()===answer.toLowerCase()){
		alert("Correct Answer");
	}
	else {
		alert("Incorrect, Correct Answer was: " + answer);
	}
}