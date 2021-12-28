class AddCityImageColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :city, :display_image, :string
  end
end
