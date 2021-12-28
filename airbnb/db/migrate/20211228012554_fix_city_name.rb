class FixCityName < ActiveRecord::Migration[6.1]
  def change
    rename_column :rents, :available_cities_id, :city_id
  end
end
