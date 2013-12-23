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

  # GET /categories/1
  def show
    @category = Category.find(params[:id])
  end

  # POST /articles
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to :categories
    else
      render action: 'new'
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def category_params
    params.require(:category).permit(:name)
  end
end
