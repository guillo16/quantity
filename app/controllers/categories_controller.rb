class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]
  def show
    @products = @category.products
    if params["created_at"]
      @products = @category.products.order(created_at: :desc)
    elsif params["flavor"]
      @products = Product.where(flavor: params["flavor"])
    elsif params["condition"]
      @products = @category.products.where(condition: params["condition"])
    elsif params[:price]
      @products = @category.products.where("price <= ?", params[:price]).reverse_order
    else
      @products
    end
    @categories = Category.all
    @divisions = Division.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title, :division_id)
  end
end

