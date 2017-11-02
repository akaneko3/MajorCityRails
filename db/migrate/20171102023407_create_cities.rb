class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.references :prefecture, foreign_key: true, null: false
      t.date :designated, null: false
      t.decimal :area, null: false, precision: 7, scale: 2
      t.integer :population, null: false
    end
  end
end
