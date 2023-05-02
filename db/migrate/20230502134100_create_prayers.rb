class CreatePrayers < ActiveRecord::Migration[6.0]
  def change
    create_table :prayers do |t|
      t.string :name
      t.string :url_path
      t.timestamps
    end
  end
end
