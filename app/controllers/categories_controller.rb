class CategoriesController < ActionController::Base

  respond_to :html # what does this do?

  # GET /categories
  def index
    @categories = Category.all.order('name ASC')
  end

  #GET /entries/1
  def show
    @categories = Category.find(params[:id])
  end
end
