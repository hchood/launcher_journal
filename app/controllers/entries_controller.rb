class EntriesController < ActionController::Base

  respond_to :html # what does this do?

  # GET /entries
  def index
    @entries = Entry.all.order('created_at DESC')
  end

  #GET /entries/1
  def show
    @entry = Entry.find(params[:id])
  end

  #GET /entries/new
  def new
    @entry = Entry.new
  end

  #POST /entries
  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path
    else
      render 'new'
    end
  end

  #GET /entries/1/edit
  def edit
    @entry = Entry.find(params[:id])
  end

  #POST /entries/1
  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      redirect_to entry_path(@entry)
    else
      render 'edit'
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :user_id, :category_id)
  end
end
