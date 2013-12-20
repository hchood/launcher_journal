class AddUserIdToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :user_id, :integer, null: false
  end
end
