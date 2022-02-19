# frozen_string_literal: true

class LocationCardComponent < ViewComponent::Base
  def initialize(obj:, name:, image:, link:)
    @obj = obj
    @name = name
    @image = image
  end
  
  # TODO figure out helper for passing url so we can use this card much more abstractly
  # TODO Testing -> RSpec
  # TODO Ransack
  # TODO Rolify 
  # TODO Flipper
  # TODO Pre-commit. Secrets and rubocop
  # TODO Ahoy gem

  #Add rental
  #add experiences
  #add online etc.


end