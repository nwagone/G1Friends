class CalendarController < ApplicationController
    def index
        @event = EventsCalendar.all
    end
   
    def show
        @event = EventsCalendar.find(params[:event_id])
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
<<<<<<< HEAD
    
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
    redirect_to calendar_index_url
    end

    
=======
    def destroy
        @event = EventsCalendar.find(params[:id])
        @event.destroy
        
        redirect_to calendar_index_path
    end
>>>>>>> cc32c4a7c9e33142a18d5dc97517f9e252f016b3
end

private
    def calendar_params
        params.require(:calendar).permit(:title, :description, :date, :time_start, :time_end)
    end
    
   