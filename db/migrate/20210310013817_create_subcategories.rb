class CreateSubcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :subcategories do |t|
      t.string :title
      t.string :color
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
