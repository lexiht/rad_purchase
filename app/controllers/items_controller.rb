class ItemsController < ApplicationController
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @item = @supplier.items.build
  end

  def show
    @supplier = Supplier.find(params[:supplier_id])
    @item = @supplier.items.find(params[:id])
  end
end
