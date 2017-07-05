class SuppliersController < ApplicationController
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
      redirect_to new_supplier_path
    end
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name, :email, :website, :phone)
  end
end
