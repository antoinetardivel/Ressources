class CreateRessources < ActiveRecord::Migration[6.1]
  def change
    create_table :ressources do |t|
      t.string :title
      t.text :description
      t.text :mini_description
      t.string :link
      t.string :link2
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
