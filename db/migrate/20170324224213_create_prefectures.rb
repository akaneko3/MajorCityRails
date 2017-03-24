class CreatePrefectures < ActiveRecord::Migration[5.0]
  def change
    create_table :prefectures do |t|
      t.string :name, null: false
      t.references :district, foreign_key: true, null: false, index: true
    end
  end
end
