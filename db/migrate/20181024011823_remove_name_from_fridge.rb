class RemoveNameFromFridge < ActiveRecord::Migration[5.2]
  def change
    remove_column :fridges, :name, :string
  end
end
