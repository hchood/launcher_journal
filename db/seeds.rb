require 'csv'

filename = Rails.root.join('db/data/entries_seed.csv')

CSV.foreach(filename, headers: true) do |row|
  category_hash = { name: row['category'] }
  Category.find_or_create_by(category_hash)

  user_hash = {
    first_name: row ['first_name'],
    last_name: row['last_name']
  }
  User.find_or_create_by(user_hash)

  entry_hash = {
    title: row['title'],
    description: row['description'],
    category_id: Category.find_by(name: row['category']).id,
    user_id: User.find_by(first_name: row['first_name'], last_name: row['last_name']).id
  }
  Entry.find_or_create_by(entry_hash)
end
