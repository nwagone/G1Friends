class CalendarController < ApplicationController
    def index
        @event = EventsCalendar.order("date","time_start")
    end
   
    def show
        @event = EventsCalendar.find(params[:id])
    end
    
    def new
        @event = EventsCalendar.new
    end
    
    def create
        @event = EventsCalendar.new(calendar_params)
        
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
            redirect_to @event
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
        params.require(:calendar).permit(:title, :description, :date, :time_start, :time_end)
    end
    
   