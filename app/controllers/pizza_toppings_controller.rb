class PizzaToppingsController < ApplicationController
  before_action :set_pizza_topping, only: [:show, :update, :destroy]

  # GET /pizza_toppings
  def index
    @pizza_toppings = PizzaTopping.all

    render json: @pizza_toppings
  end

  # GET /pizza_toppings/1
  def show
    render json: @pizza_topping
  end

  # POST /pizza_toppings
  def create
    @pizza_topping = PizzaTopping.new(pizza_topping_params)

    if @pizza_topping.save
      render json: @pizza_topping, status: :created, location: @pizza_topping
    else
      render json: @pizza_topping.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pizza_toppings/1
  def update
    if @pizza_topping.update(pizza_topping_params)
      render json: @pizza_topping
    else
      render json: @pizza_topping.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pizza_toppings/1
  def destroy
    @pizza_topping.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_topping
      @pizza_topping = PizzaTopping.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pizza_topping_params
      params.require(:pizza_topping).permit(:pizza_id, :topping_id)
    end
end
