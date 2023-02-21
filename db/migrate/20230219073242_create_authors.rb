class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :a_name 
      t.string :a_age
      t.string :a_country
      t.string :a_email
      t.integer :a_contact

      t.timestamps
    end
  end
end
