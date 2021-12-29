class CreateProfile < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string "username"
      t.string "display_name"
      t.integer "age"
      t.date "date_of_birth"
      t.belongs_to :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
