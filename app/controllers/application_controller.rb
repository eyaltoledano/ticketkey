class ApplicationController < ActionController::Base
  helper_method :current_brand
  helper_method :logged_in?
  helper_method :set_current_brand
  helper_method :redirect_if_not_logged_in

  def current_brand
    Brand.find(session[:brand_id])
  end

  def logged_in?
    session[:brand_id].present?
  end

  def set_current_brand
    if logged_in?
      @brand = Brand.find(session[:brand_id])
    else
      redirect_if_not_logged_in
    end
  end

  def redirect_if_not_logged_in
    if !logged_in?
      flash[:notice] = "You need to be logged in to access this page."
      redirect_to login_path
    end
  end
end
