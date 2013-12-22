class EntriesController < ActionController::Base

  respond_to :html # what does this do?

  def index
    @entries = Entries.all.order('created_at DESC')
  end
end
