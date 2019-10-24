class CategoriesController < ApplicationController
  def index
  end
  def show
    @category = Category.find_by_id(params[:id])
    @posts = @category.posts.all
  end
  def new
    @category = Category.new
  end
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category.id)
    else
      render :new
    end
  end
  def edit
    @category = Category.find_by_id(params[:id])
  end
  def update
    @category = Category.find_by_id(params[:id])
    if @category.update(category_params)
      redirect_to category_path(@category.id)
    else
      render :edit
    end
  end
  def destroy
    @category = Category.find_by_id(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
