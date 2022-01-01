class Rent < ApplicationRecord
  belongs_to :user
  has_one :city
end
