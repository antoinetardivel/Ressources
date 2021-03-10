class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.text :description
      t.string :website
      t.string :slug

      t.timestamps
    end
  end
end
