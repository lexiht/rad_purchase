class DashboardController < ApplicationController
  def index
    @suppliers = Supplier.all
  end
end
