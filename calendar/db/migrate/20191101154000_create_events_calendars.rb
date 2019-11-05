class CreateEventsCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :events_calendars do |t|
      t.string :title
      t.time :time_start
      t.time :time_end
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
