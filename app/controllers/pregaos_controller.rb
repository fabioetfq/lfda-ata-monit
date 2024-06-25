class PregaosController < ApplicationController
  before_action :set_pregao, only: %i(show edit update)

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
    if @pregao.save
      redirect_to pregaos_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @pregao.update(pregao_params)
    redirect_to pregao_path(@pregao)
  end

  private

  def pregao_params
    params.require(:pregao).permit(:num_pregao, :description)
  end

  def set_pregao
    @pregao = Pregao.find(params[:id])
  end

end
