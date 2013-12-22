class EntriesController < ActionController::Base

  respond_to :html # what does this do?

  # GET /entries
  def index
    @entries = Entry.all.order('created_at DESC')
  end

  #GET /entries/1
  def show
    user = User.find(params[:id])
    @entries = Entry.where(user_id: user.id)
  end
end
