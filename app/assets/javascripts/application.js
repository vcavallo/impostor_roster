// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require twitter/bootstrap
//= require jquery.turbolinks
//= require jquery_ujs

$(document).ready(function() {
  var inabilityInput = $(".new-submission input[name='post[inability]']");
  var inabilityHints = [
    "Wake up on time",
    "Right-click on a Mac",
    "Pump gas",
    "Swipe a MetroCard reliably",
    "Remember which 'their' is correct",
    "Google stuff effectively",
  ]

  inabilityInput.attr(
    "placeholder",
    inabilityHints[Math.floor(Math.random()*inabilityHints.length)]
  );

  $(".new-submission form input[type=submit]").click(function(event) {
    event.preventDefault();
    var field = $(".new-submission input[name='post[category]']").val();
    var months = $(".new-submission input[name='post[months_experience]']").val();
    var inability = $(".new-submission input[name='post[inability]']").val();
    var post = "Someone in the " + field + " field for " + months + " months still can't " + inability;

    if(confirm("Your post will appear like this:\n'" + post + "'.\nOk? Or do you need to fix it?")) {
      $(".new-submission form").submit();
    } else {
      return false;
    }
  });

});

//= require_tree .
//= require turbolinks

