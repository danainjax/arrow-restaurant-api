class Api::V1::OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]

  # GET /orders
  def index
    orders = Order.all
    # render json: orders
    render json: OrderSerializer.new(orders)
  end

  # GET /orders/1
  def show
      # render json: @order
    render json: OrderSerializer.new(@order)
  end

  # POST /orders
  def create
    
    # @order = Order.create(order_params)
    @order = Order.create(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      sub_total: params[:sub_total],
      tax: params[:tax],
      total: params[:total],
      pizza_ids: params[:pizza_ids],
      comments: params[:comments],
      
    )
    render json: OrderSerializer.new(@order)
    # if @order.save
    #   render json: OrderSerializer.new(@order), status: :created, location: @order
    # else
    #   render json: OrderSerializer.new(@order.errors), status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /orders/1
  def update
    
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    
    @order.destroy
  end

  private

  
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:name, :email, :phone, :sub_total, :tax, :total, :comments, :pizza_ids)
    end
end
