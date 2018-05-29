class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :origin_id
      t.integer :destination_id
      t.datetime :departure
      t.integer :duration

      t.timestamps
    end
  end
end
