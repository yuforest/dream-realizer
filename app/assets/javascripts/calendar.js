
$(document).on('turbolinks:load', function() {
    $('#calendar').fullCalendar({
       defaultView: 'month',
       events: '/calendars.json'
    });
});

// $(document).ready(ready)
// $(document).on('page: load', ready)