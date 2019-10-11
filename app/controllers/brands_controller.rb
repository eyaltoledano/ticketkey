class BrandsController < ApplicationController
  def index
    @brands = Brand.order(created_at: :desc)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @brands }
    end
  end

  def show
    @brand = Brand.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @brand }
    end
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      respond_to do |format|
        format.html { redirect_to :show }
        format.json { render json: @brand }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @brand.errors }
      end
    end
  end

  def destroy
    brand = Brand.find(params[:id])
    brand.destroy
    respond_to do |format|
      format.html { redirect_to :index }
      format.json { render json: brand }
    end

  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if brand.update(brand_params)
      respond_to do |format|
        format.html { redirect_to :show }
        format.json { render json: @brand }
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @brand }
      end
    end
  end

  private

  def brand_params
    params.require(:brand).permit(:name, :description, :email, :password_digest)
  end
end
