class VenuesController < ApplicationController
  def index
    @venues = Venue.order(created_at: :desc)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @venues }
    end
  end

  def show
    @venue = Venue.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @venue }
    end
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      respond_to do |format|
        format.html { redirect_to :show }
        format.json { render json: @venue }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @venue.errors }
      end
    end
  end

  def destroy
    venue = Venue.find(params[:id])
    venue.destroy
    respond_to do |format|
      format.html { redirect_to :index }
      format.json { render json: venue }
    end

  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    if venue.update(venue_params)
      respond_to do |format|
        format.html { redirect_to :show }
        format.json { render json: @venue }
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @venue }
      end
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :description, :address)
  end
end
