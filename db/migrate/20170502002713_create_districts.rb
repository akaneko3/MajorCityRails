class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    create_table :districts do |t|
      t.string :name, null: false
    end
  end
end
