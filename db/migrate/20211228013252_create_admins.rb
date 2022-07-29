class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
