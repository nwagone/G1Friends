// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.minicolors
//= require jquery_ujs
//= require rails-ujs
//= require jquery-ui/datepicker
//= require activestorage
//= require turbolinks
//= require pickadate/picker
//= require pickadate/picker.date
//= require pickadate/picker.time
//= require_tree .
//= daterangepicker
//= require jquery.timepicker.js
//= require Datepair
//= require jquery.datepair.js
//= require fullcalendar/locale-all
//= require moment
//= require fullcalendar/gcal
//= require fullcalendar




 $( function() {
    $( "#datepicker" ).datepicker({ dateFormat: 'yy-mm-dd' });
     $( ".timepicker" ).timepicker();
     $('#calendar').fullCalendar({});
     $("#eventOnCalendar").style.color="blue";
  } );
document.addEventListener('turbolinks:load', function () { eventCalendar(); })




	
	
	
	

