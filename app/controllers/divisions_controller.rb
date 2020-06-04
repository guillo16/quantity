class DivisionsController < ApplicationController

  def show
    @division = Division.find(params[:id])
  end

  def new
    @division = Division.new
  end

  def create
    @division = Division.new(division_params)
    if @division.save!
      redirect_to division_path(@division)
    else
      render :new
    end
  end

  def division_params
    params.require(:division).permit(:title)
  end
end
