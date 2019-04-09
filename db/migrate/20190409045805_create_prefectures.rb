class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string :name, null: false
      t.references :district, foreign_key: true, null: false
    end
  end
end
