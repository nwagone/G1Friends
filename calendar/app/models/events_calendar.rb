class EventsCalendar < ApplicationRecord
    belongs_to :user
    scope :upcoming, -> { where("date = ?", Date.today)}
    
 
end
