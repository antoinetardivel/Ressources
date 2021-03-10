class AddSubcategoryToRessources < ActiveRecord::Migration[6.1]
  def change
    add_reference :ressources, :subcategory, null: true, foreign_key: true
  end
end
