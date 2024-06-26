class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[show edit update destroy]

  def index
    @suppliers = Supplier.all
  end

  def show
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to supplier_path(@supplier)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @supplier.update(supplier_params)
    redirect_to supplier_path(@supplier)
  end

  def destroy
    if @supplier.destroy
      redirect_to suppliers_path, notice: 'Fornecedor foi removido com sucesso.'
    else
      redirect_to supplier_path(@supplier), alert: 'Fornecedor não foi removido.'
    end
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name, :email, :cnpj)
  end

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end
end
