require 'spec_helper'

describe Entry do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :user_id }

  it { should belong_to :category }
  it { should belong_to :user }
end
