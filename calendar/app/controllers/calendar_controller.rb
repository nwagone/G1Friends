class CalendarController < ApplicationController
    def index
        @event = EventsCalendar.all
    end
   
   # def show
    #    @event = EventsCalendar.find(params[:id])
    #end
    #def new
     #   @event = EventsCalendar.new
    #end
    #def create
     #   @event = EventsCalendar.new(article_params)
      #  
       # if @event.save
        #    redirect_to @EventsCalendar
        #else
         #   render 'new'
        #end
    #end
end