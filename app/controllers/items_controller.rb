class ItemsController < ApplicationController
  before_action :find_supplier
  before_action :find_item, except: [:new, :create]

  def new
    @item = @supplier.items.build
  end

  def show; end

  def create
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

  def edit; end

  def update
    @item.update(item_params)
    redirect_to supplier_path(@supplier)
  end

  def destroy
    @item.delete
    redirect_to supplier_path(@supplier)
  end

  private

  def item_params
    params.require(:item).permit(:name, :product_code, :description, :quantity, :price)
  end

  def find_supplier
    @supplier = Supplier.find(params[:supplier_id])
  end

  def find_item
    @item = @supplier.items.find(params[:id])
  end
end
