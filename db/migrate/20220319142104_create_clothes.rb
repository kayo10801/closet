class CreateClothes < ActiveRecord::Migration[6.0]
  def change
    create_table :clothes do |t|
      t.string :memo
      t.string :date
      t.string :season, null: false
      t.string :color, null: false
      t.timestamps
    end
  end
end
