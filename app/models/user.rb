class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name

  has_many :entries

  def full_name
    @full_name = "#{first_name} #{last_name}"
  end
end
