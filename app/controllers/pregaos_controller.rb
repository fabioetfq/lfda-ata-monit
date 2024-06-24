class PregaosController < ApplicationController
  before_action :set_pregao, only: [:show]

  def index
    @pregaos = Pregao.all
  end

  def show
  end

  def new
    @pregao = Pregao.new
  end

  def create
    @pregao = Pregao.new(pregao_params)
    @pregao.save
    redirect_to pregaos_path
  end

  private

  def pregao_params
    params.require(:pregao).permit(:num_pregao)
  end

  def set_pregao
    @pregao = Pregao.find(params[:id])
  end

end
