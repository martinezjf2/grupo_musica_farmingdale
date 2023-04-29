class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :link_to_video
      t.string :date_created
      t.timestamps
    end
  end
end
