class AddLanguageToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :language, :string
  end
end
