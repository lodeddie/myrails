class CreateEventRosters < ActiveRecord::Migration
  def change
    create_table :event_rosters do |t|
      t.references :user, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
