class Country < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string "country", null: false
      t.string "display_image"
    end
  end
end
