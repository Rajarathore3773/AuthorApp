class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :b_name
      t.string :b_desc
      t.integer :b_price
      

      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
