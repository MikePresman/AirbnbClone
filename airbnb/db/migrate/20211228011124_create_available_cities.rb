class CreateAvailableCities < ActiveRecord::Migration[6.1]
  def change
    create_table :available_cities do |t|
      t.string "city_name", null: false
      t.string "country", null: false
      t.timestamps
    end
  end
end
