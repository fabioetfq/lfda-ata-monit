class ArpsController < ApplicationController
  before_action :set_arp, only: %i[show edit update]
  def index
    @arps = Arp.all
  end

  def show; end

  def new
    @arp = Arp.new
  end

  def create
    @arp = Arp.new(arp_params)
    if @arp.save
      redirect_to arp_path(@arp)
    else
      render :new
    end
  end

  def edit; end

  def update
    @arp.update(arp_params)
    redirect_to arp_path(@arp)
  end

  private

  def set_arp
    @arp = Arp.find(params[:id])
  end

  def arp_params
    params.require(:arp).permit(:num_arp, :num_sei, :supplier_id, :pregao_id, :manager_id, :manager_sub_id, :supervisor_id, :supervisor_sub_id)
  end
end
