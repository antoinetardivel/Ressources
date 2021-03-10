class AddUserIdToRessources < ActiveRecord::Migration[6.1]
  def change
    add_column :ressources, :user_id, :integer
  end
end
