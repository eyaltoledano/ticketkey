class TicketsController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @tickets = @event.tickets.order(created_at: :desc)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @tickets }
    end
  end

  def show
    @event = Event.find(params[:event_id])
    @ticket = @event.tickets.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @ticket }
      # How to only include brand.id, brand.name, brand.description in the json?
    end
  end

  def create
    @event = Event.find(params[:event_id])
    @tickets = @event.tickets.build(ticket_params)
    @ticket.brand = @event.brand
    if @ticket.save
      respond_to do |format|
        format.html { redirect_to :show }
        format.json { render json: @ticket }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @ticket.errors }
      end
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @tickets = @event.tickets.find(params[:id])
    ticket.destroy
    respond_to do |format|
      format.html { redirect_to :index }
      format.json { render json: ticket }
    end
  end

  def update
    @event = Event.find(params[:event_id])
    @tickets = @event.tickets.find(params[:id])
    if @ticket.update(ticket_params)
      respond_to do |format|
        format.html { redirect_to :show }
        format.json { render json: @ticket }
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @ticket }
      end
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:price, :description, :valid_start, :valid_end, :seating_info, :brand_id, :event_id)
  end
end
