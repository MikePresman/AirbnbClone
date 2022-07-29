# frozen_string_literal: true

class LargeCardComponent < ViewComponent::Base
  def initialize(name:)
    @name = name
  end
end
