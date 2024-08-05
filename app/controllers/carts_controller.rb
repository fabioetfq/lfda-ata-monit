class CartsController < ApplicationController
  before_action :set_cart, only: %i[show edit update destroy]
  def index
    @carts = Cart.all
  end

  def show; end

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      redirect_to cart_path(@cart)
    else
      render :new
    end
  end

  def edit; end

  def update
    @cart.update(params)
    redirect_to items_path
  end

  def destroy
    @cart.destroy
    redirect_to items_path
  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(:item_id, :qty_item)
  end
end
