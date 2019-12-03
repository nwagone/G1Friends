class CalendarController < ApplicationController
    def index
        @event = current_user.events_calendars.all
    end
    
    def allEvents
        @event = current_user.events_calendars.order("date","time_start")
    end
    
    def month
        @event = current_user.events_calendars.all
    end
   
    def show
        @event = EventsCalendar.find(params[:id])
    end
    
    def new
        @event = EventsCalendar.new
    end
    
    def create
        @event = EventsCalendar.new(calendar_params)
        @event.user =current_user
        
        if @event.save
            redirect_to calendar_index_url
        else
            render 'new'
        end
    end

    
    def edit
      @event = EventsCalendar.find(params[:id])
    end
    
    def update
        @event = EventsCalendar.find(params[:id])
        if @event.update(calendar_params)
            redirect_to calendar_index_url
        else
            render 'edit'
        end
    end

    
    def destroy
        @event = EventsCalendar.find(params[:id])
        @event.destroy
        
        redirect_to calendar_index_path
    end

end

private
    def calendar_params
        params.require(:events_calendar).permit(:title, :date, :time_start, :time_end, :description, :color)
    end