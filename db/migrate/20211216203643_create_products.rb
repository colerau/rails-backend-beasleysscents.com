class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :scent
      t.string :color
      t.decimal :price

      t.timestamps
    end
  end
end
