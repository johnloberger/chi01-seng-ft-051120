DB = SQLite3::Database.new('chinook.db')
DB.results_as_hash = true