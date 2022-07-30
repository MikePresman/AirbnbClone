# frozen_string_literal: true

class LocationCardComponent < ViewComponent::Base
  def initialize(obj:, name:, image:)
    @obj = obj
    @name = name
    @image = image
  end
end