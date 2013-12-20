class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false

  has_many :entries, inverse_of: :category
end
