class PagesController < ApplicationController

  def home
    set_current_brand
    @event = @brand.events.build if logged_in?
  end

end
