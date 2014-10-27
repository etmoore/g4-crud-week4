class CreateEventTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :location
      t.text :description
      t.integer :capacity
      t.boolean :requires_id
    end
  end
end
