class CreateEventhub < ActiveRecord::Migration[5.2]
  def change
    create_table :eventhubs do |t|
      t.integer :attendee_id, index: true
      t.integer :attended_event_id, index: true

      t.timestamps
    end
  end
end
