


$(document).on('turbolinks:load', function() {
    var size = $('.fc-toolbar').length
    console.log(size)
     if (size == 0){
    $('#calendar').fullCalendar({
       defaultView: 'month',
       events: '/calendars.json'
    });
    };
   
});

