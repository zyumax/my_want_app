class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string  :name
      t.integer :price
      t.string  :maker_name
      t.string  :note
      t.integer :evaluation
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
