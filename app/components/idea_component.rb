# frozen_string_literal: true

class IdeaComponent < ViewComponent::Base
  def initialize(idea:)
    @idea = idea
  end

  def image
    return if idea.picture.blank?

    image_tag @idea.picture_url, width: '100%'
  end

  private attr_reader :idea
end
