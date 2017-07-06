class ItemsController < ApplicationController
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @item = @supplier.items.build
  end

  def show
    @supplier = Supplier.find(params[:supplier_id])
    @item = @supplier.items.find(params[:id])
  end

  def create
    @supplier = Supplier.find(params[:supplier_id])
    @item = @supplier.items.new(item_params)
    if @item.save
      flash[:notice] = 'You have successfully added an item!'
      redirect_to supplier_path(@supplier)
    else
      flash[:alert] = ''
      supplier.errors.each do |key, value|
        flash[:alert] += "#{key}: #{value}"
      end
      redirect_to new_supplier_item_path
    end
  end

  def edit
    @supplier = Supplier.find(params[:supplier_id])
    @item = @supplier.items.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:supplier_id])
    @item = @supplier.items.find(params[:id])
    @item.update(item_params)
    redirect_to supplier_path(@supplier)
  end

  private

  def item_params
    params.require(:item).permit(:name, :product_code, :description, :quantity, :price)
  end
end
