# frozen_string_literal: true

class LocationCardComponent < ViewComponent::Base
  def initialize(obj:, name:, image:)
    @obj = obj
    @name = name
    @image = image
  end

  #TODO figure out helper for passing url so we can use this card much more abstractly
  #TODO Turbo Streams Much better
  #TODO Flipper
  #TODO Testing

end
