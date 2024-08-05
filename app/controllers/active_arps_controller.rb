class ActiveArpsController < ApplicationController
  before_action :set_active_arp, only: %i[show]
  def index
    @active_arps = ActiveArp.all
  end

  def show; end

  def new
    @active_arp = ActiveArp.new
  end

  def create
    @active_arp = ActiveArp.new(active_arp_params)
    if @active_arp.save
      redirect_to active_arps_path
    else
      byebug
      render :new
    end
  end

  private

  def active_arp_params
    params.require(:active_arp).permit(:arp_id, :item_id, :item_value, :unit, :qty_item, :date_start, :validity, :institution_id)
  end

  def set_active_arp
    @active_arp = ActiveArp.find(params[:id])
  end
end
