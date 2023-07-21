class AddCategoryToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :category, :string
  end
end
