
$(document).on('turbolinks:load', function() {
    $('#calendar').fullCalendar({
       defaultView: 'month',
       events: '/calendars.json'
    });
});

