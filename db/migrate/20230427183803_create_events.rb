class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :event_date
      t.time :event_start_time
      t.time :event_end_time
      t.string :location
      t.string :description
      t.string :address
      t.string :city
      t.string :phone_number
      t.string :zip
      t.string :image

      t.timestamps
    end
  end
end
