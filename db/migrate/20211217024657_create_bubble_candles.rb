class CreateBubbleCandles < ActiveRecord::Migration[6.0]
  def change
    create_table :bubble_candles do |t|
      t.string :scent
      t.string :color
      t.decimal :price

      t.timestamps
    end
  end
end
