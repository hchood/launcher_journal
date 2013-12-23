class Entry < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :user_id

  belongs_to :category, inverse_of: :entries
  belongs_to :user, inverse_of: :entries

  def category_name
    if category.nil?
      ""
    else
      category.name
    end
  end
end
