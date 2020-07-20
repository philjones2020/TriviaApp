//= require jquery
//= require jquery_ujs

window.alerts = function(input_id, answer) {
	var guess = document.getElementById(input_id).value;
	var formData = new FormData();
	if(guess.toLowerCase()===answer.toLowerCase()){
		alert("Correct answer you gained 4 points");
		formData.append("correct",1);
	}
	else {
		alert("Incorrect you lose 1 point, Correct Answer was: " + answer);
		formData.append("wrong", 1);
	}
	formData.append("authenticity_token", "<%= form_authenticity_token %>");
	var request = new XMLHttpRequest();
	request.open("POST", "http://localhost:3000/quiz/answered");
	request.send(formData);
}