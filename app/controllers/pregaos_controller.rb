class PregaosController < ApplicationController
  before_action :set_pregao
  def new
    @pregao = Pregao.new
  end

  def create
    @pregao = Pregao.new(pregao_params)
    if @pregao.save
      redirect_to pregao_path(@pregao)
    else
      redirect_to new_pregao_path
    end
  end

  private

  def pregao_params
    params.require(:pregao).permit(:num_pregao)
  end

  def set_pregao
    @pregao = Pregao.find(params[:id])
  end

end
