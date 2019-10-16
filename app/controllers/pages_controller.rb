class PagesController < ApplicationController

  def home
    set_current_brand
    @event = @brand.events.build
  end

end
