class ProductsController < ApplicationController

  def show
    @product = @category.product.find(params[:id])
  end

end