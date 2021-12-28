class ChangeAvailbileCitiesToCity < ActiveRecord::Migration[6.1]
  def change
    rename_table :available_cities, :city
  end
end
