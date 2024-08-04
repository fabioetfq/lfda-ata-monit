class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def destroy
    if @item.destroy
      redirect_to items_path
    else
      redirect_to item_path(@item)
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :category, :catmat, :description, :supply_unit, :area, :group, :sugestion, :critical, :shelf_time, :consuption_year, :price)
  end
end
