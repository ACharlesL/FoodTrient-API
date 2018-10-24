class AddUserToFridges < ActiveRecord::Migration[5.2]
  def change
    add_reference :fridges, :user, foreign_key: true
  end
end
