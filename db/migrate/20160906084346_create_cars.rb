class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|

      t.string :title
      t.text :details
      t.float :price
      t.float :discount
      t.string :photo

      t.timestamps
    end
  end
end
