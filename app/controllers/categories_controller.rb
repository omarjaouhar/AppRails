class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update, :destroy]
  def index
    #@session = session[:user_id]
    #flash.now[:success] = "Slaut !"
    cookies[:username] = {
      value: "Omar",
      expires: 1.month.from_now
    }

    @categories = Category.all

    respond_to do |format|
      format.html
      format.json {render json: @categories}
    end  
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
    if @category.update(category_params)
      redirect_to categories_path, flash: {notice: "Category updated"}
    else
      render 'edit' 
    end  
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
