class RemovePrayersTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :prayers
  end
end
