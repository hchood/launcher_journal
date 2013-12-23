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
end
