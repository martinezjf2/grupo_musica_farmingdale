class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :favorite_bible_verse_quote
      t.string :chapter
      t.string :position
      t.string :profile_image 
      # Profile image will be the path of the image within these files
      t.timestamps
    end
  end
end
