class SessionsController < ApplicationController

  def new
  end

  def create
    params[:email].include?("@") ? brand = Brand.find_by(email: params[:email]) : brand = Brand.find_by(account_name: params[:email])
      if brand && brand.authenticate(params[:password])
        # if submission passes
        session[:brand_id] = brand.id
        redirect_to root_path
      else
        flash[:errors] = brand.errors.full_messages
        render :new
      end
  end

  def destroy
    session.delete :brand_id
    redirect_to root_path
  end

end
