class CreatePublishes < ActiveRecord::Migration[7.0]
  def change
    create_table :publishes do |t|
       t.datetime :p_date
       t.string   :p_country



      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
