require 'spec_helper'

describe EntriesController do
  describe '.index' do
    it 'exposes a listing of entries sorted by descending date' do
      entry1 = FactoryGirl.create(:entry, created_at: 3.days.ago)
      entry2 = FactoryGirl.create(:entry, created_at: 1.day.ago)
      entry3 = FactoryGirl.create(:entry)

      # How to write a test for this?  Index should return Event.all.order('created_at DESC')
      # expect(EntriesController.index.events).to eq([entry3, entry2, entry1])
    end
  end

  describe '.show' do
    it 'exposes a single entry'
  end

  describe '.new' do

  end

  describe '.create' do
    it 'saves a new entry to the database'
  end

  describe '.edit' do

  end

  describe '.update' do
    it 'changes the attributes of an existing entry'
  end

  describe '.destroy' do
    it 'deletes an entry from the database'
  end
end
