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

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path
    else
      render 'new'
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :user_id)
  end
end
