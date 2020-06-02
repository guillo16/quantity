class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
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

  def category_params
    params.require(:category).permit(:title, :division_id)
  end
end
