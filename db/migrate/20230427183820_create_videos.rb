class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :link_to_video
      t.date :date_created
      t.timestamps
    end
  end
end
