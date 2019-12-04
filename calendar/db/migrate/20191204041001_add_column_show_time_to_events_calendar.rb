class AddColumnShowTimeToEventsCalendar < ActiveRecord::Migration[5.2]
  def change
    add_column :events_calendars, :show_time, :boolean
  end
end
