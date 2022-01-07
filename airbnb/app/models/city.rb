class City < ApplicationRecord
  has_many :rent

  validates :city_name, :presence => true
  validates :country, :presence => true

  validate :entry_is_unique, on: [:create, :update]

  def entry_is_unique
    errors.add(:city, ("City not unique")) if City.where(city_name: city_name, country: country).exists?
  end
end
