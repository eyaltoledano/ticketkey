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

  def new
    # ensure to build new event from brand
  end

  def create
    @brand = Brand.find(event_params[:brand_id])
    @event = @brand.events.build(event_params)
    if @event.save
      respond_to do |format|
        format.html { redirect_to :show }
        format.json { render json: @event }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @event.errors }
      end
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
    params.require(:event).permit(:name, :category, :date_start, :date_end, :brand_id)
  end
end
