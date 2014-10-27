class CreateEventTable < ActiveRecord::Migration
  def change
    create_table :event_tables do |t|
      t.date :date
      t.string :location
      t.text :description
      t.integer :capacity
      t.boolean :requires_id
    end
  end
end
