class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :picture
      t.string :make
      t.string :model
      t.integer :price
      t.integer :hp
      t.integer :tq
      t.text :des
      t.string :link

      t.timestamps
    end
  end
end
