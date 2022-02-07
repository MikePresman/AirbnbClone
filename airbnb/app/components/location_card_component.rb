# frozen_string_literal: true

class LocationCardComponent < ViewComponent::Base
  def initialize(obj:, name:, image:)
    @obj = obj
    @name = name
    @image = image
  end


  #TODO fix docker volume being on the repo
  #TODO figure out helper for passing url so we can use this card much more abstractly
  #TODO Flipper
  #TODO Testing

end
