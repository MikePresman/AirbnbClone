class CreateRent < ActiveRecord::Migration[6.1]
  def change
    create_table :rents do |t|
      t.integer "average_score"
      t.string "rent_name", null: false
      t.integer "price", null: false

      t.belongs_to :user, foreign_key: true, null: false
      t.belongs_to :available_cities, foreign_key: true
      
      t.timestamps
    end
  end
end
