require 'spec_helper'

describe Category do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of(:name).case_insensitive }

  it { should have_many :entries }
end
