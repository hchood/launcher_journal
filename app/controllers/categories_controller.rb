class CategoriesController < ActionController::Base

  respond_to :html # what does this do?

  # GET /categories
  def index
    @categories = Category.all.order('name ASC')
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

end
