


$(document).on('turbolinks:load', function() {
    var size = $('.fc-toolbar').length
    console.log(size)
     if (size != 0) {
    　location.reload();
    }
    $('#calendar').fullCalendar({
       defaultView: 'month',
       events: '/calendars.json'
    });

    // };
   
});

