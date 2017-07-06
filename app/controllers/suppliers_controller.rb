class SuppliersController < ApplicationController
  before_action :find_supplier, except: [:new, :create]

  def new
    @supplier = Supplier.new
  end

  def create
    supplier = Supplier.new(supplier_params)
    if supplier.save
      flash[:notice] = 'You have successfully added a supplier!'
      redirect_to dashboard_url
    else
      flash[:alert] = ''
      supplier.errors.each do |key, value|
        flash[:alert] += "#{key}: #{value}"
      end
      redirect_to new_supplier_url
    end
  end

  def show; end

  def edit; end

  def update
    @supplier.update(supplier_params)
    redirect_to dashboard_url
  end

  def destroy
    @supplier.delete
    redirect_to dashboard_url
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name, :email, :website, :phone)
  end

  def find_supplier
    @supplier = Supplier.find(params[:id])
  end
end
