class EventsCalendar < ApplicationRecord
    belongs_to :user
    scope :upcoming, -> { where("date = ?",  min: Date.today)}
    
    def start_time
        self.events_calendars.date
    end
end
