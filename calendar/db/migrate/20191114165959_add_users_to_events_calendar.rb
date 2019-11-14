class AddUsersToEventsCalendar < ActiveRecord::Migration[5.2]
  def change
    add_reference :events_calendars, :user, foreign_key: true
  end
end
