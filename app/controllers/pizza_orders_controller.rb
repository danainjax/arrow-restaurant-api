class PizzaOrdersController < ApplicationController
    
    

    def create
        pizza_order = PizzaOrder.new(pizza_order_params)

        if pizza_order.save
        render json: pizza_order, status: :created, location: pizza_order
        else
        render json: pizza_order.errors, status: :unprocessable_entity
        end
    end

    def show
        pizza_order = PizzaOrder.find(params[:id])
      render json: pizza_order
    end

    def index
        pizza_orders = PizzaOrder.all
        render json: pizza_orders
    end

    def destroy
        pizza_order = PizzaOrder.find(params[:id])
        pizza_order.destroy
    end

private
    def pizza_order_params
        params.require(:pizza_order).permit(:order_id, :pizza_ids[])
      end
end
