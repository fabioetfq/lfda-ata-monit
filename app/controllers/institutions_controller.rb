class InstitutionsController < ApplicationController
  before_action :set_institution, only: %i[show edit update destroy]
  def index
    @institutions = Institution.all
  end

  def show; end

  def new
    @institution = Institution.new
  end

  def create
    @institution = Institution.new(institution_params)
    if @institution.save
      redirect_to institution_path(@institution), notice: 'Nova instituição salva com sucesso.'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    @institution.update(institution_params)
    redirect_to institution_path(@institution)
  end

  def destroy
    if @institution.destroy
      redirect_to institutions_path
    else
      redirect_to institution_path(@institution)
    end
  end

  private

  def set_institution
    @institution = Institution.find(params[:id])
  end

  def institution_params
    params.require(:institution).permit(:name)
  end
end
