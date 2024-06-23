class PregaosController < ApplicationController
 # before_action :pregao_params
  def new
    @pregao = Pregao.new
  end

  def create
    @pregao = Pregao.new(pregao_params)
    @pregao.save
    redirect_to pregaos_path
  end

  def index
    @pregaos = Pregao.all
  end

  private

  def pregao_params
    params.require(:pregao).permit(:num_pregao)
  end

  # def set_pregao
  #   @pregao = Pregao.find(params[:id])
  # end

end
