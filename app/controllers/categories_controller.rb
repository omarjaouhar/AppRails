class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update, :destroy]
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.create(category_params)
    redirect_to category_path(@category.id)
  end  

  def update
    @category.update(category_params)
    redirect_to category_path(@category.id)
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:name, :slug)
    end  

    def find_category
      @category = Category.find(params[:id])
    end  
end
