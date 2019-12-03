class AddColumnNameToEventsCalendar < ActiveRecord::Migration[5.2]
  def change
    add_column :events_calendars, :color, :text
  end
end
