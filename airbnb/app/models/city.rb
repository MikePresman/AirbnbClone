class City < ApplicationRecord
  has_many :rent

  validates :city_name, :presence => true
  validates :country, :presence => true

  validate :entry_must_be_unique

  #TODO FIX
  def entry_must_be_unique
    !City.where(city_name: city_name, country: country).exists?
  end

end
