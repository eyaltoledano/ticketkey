class EventsController < ApplicationController
  def index
    @events = Event.order(created_at: :desc)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @events }
    end
  end

  def show
    @event = Event.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @event }
    end
  end

  def create
    set_current_brand
    @event = @brand.events.build(event_params)
    if @event.save
      # binding.pry
      render json: @event, status: 201
    else
      render json: @event.errors, status: 400
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    respond_to do |format|
      format.html { redirect_to :index }
      format.json { render json: event }
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      respond_to do |format|
        format.html { redirect_to :show }
        format.json { render json: @event }
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @event }
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :category, :date_start, :date_end, :brand_id, :venue_id)
  end
end
