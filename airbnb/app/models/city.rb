class City < ApplicationRecord
  belongs_to :rent
  #validate the city is unique for the given country
end
