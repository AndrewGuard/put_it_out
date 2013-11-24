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
//= require_tree .

$(function() {
  $("a[data-remote=true]").on("ajax:success", function(event, data) {
    $("a[data-remote=true]").replaceWith(data);
  });

function countUpTimer(){
	totalSeconds = document.getElementById("exact_seconds").val();
	secondsLabel = document.getElementById("seconds");
	minutesLabel = document.getElementById("minutes");
	hoursLabel = document.getElementById("hours");
	daysLabel = document.getElementById("days");


}







});
