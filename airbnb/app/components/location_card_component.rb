# frozen_string_literal: true

class LocationCardComponent < ViewComponent::Base
  def initialize(obj:, name:, image:)
    @obj = obj
    @name = name
    @image = image
  end
  
  #fix registration
  #TODO Finish login/signup modal -> consider alpine for click.away
  #TODO Testing
  #TODO figure out helper for passing url so we can use this card much more abstractly
  #TODO Ransack
  #TODO add pundit or rolify
  #TODO Flipper
  #Add rental
  #add experiences
  #add online etc.
  


end
