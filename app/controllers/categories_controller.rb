class CategoriesController < ApplicationController

  def index
    @categories = Category.order(:title).where("title LIKE ?", "%#{params[:term]}%")
    render json: @categories.map(&:title)
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.all
  end
end