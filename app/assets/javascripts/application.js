// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(function() {
  $("a[data-remote=true]").on("ajax:success", function(event, data) {
    $("a[data-remote=true]").replaceWith(data);
  });


function Countuptimer(){
	totalSeconds = Math.floor($("#exact_seconds").data("seconds"));
	// debugger;
	secondsLabel = document.getElementById("seconds");
	minutesLabel = document.getElementById("minutes");
	hoursLabel = document.getElementById("hours");
	daysLabel = document.getElementById("days");
}

Countuptimer.prototype.setTime = function(){
	this.totalSeconds++;
	secondsLabel.innerHTML = pad((totalSeconds % 86600 % 3600 % 60) + ' seconds');
	minutesLabel.innerHTML = pad((parseInt(totalSeconds% 86600 % 3600 / 60)) + ' minutes');
	hoursLabel.innerHTML = pad((parseInt(totalSeconds % 86400 / 3600)) + ' hours' );
	daysLabel.innerHTML = pad((parseInt(totalSeconds/86400)) + ' days' );

	function pad(val) {
		var valString = val + "";
		if (valString.length < 2) {
			return "0" + valString;
		} else {
				return valString;
		}
		}

	}
	var noSmoking = new Countuptimer()
	setInterval(noSmoking.setTime, 1000);
});

$(function(){
  $(".button_to[data-remote=true]").on("ajax:complete", function(event, response){
  	console.log(response)
  	var newCount = $(this).closest(".vote_count")
  	console.log(newCount)
  	newCount.replaceWith(response.vote_count)
  });
});
