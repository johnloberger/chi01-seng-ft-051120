require 'bundler'
Bundler.require

DB = {
  conn: SQLite3::Database.new('db/twitter.db')
}

DB[:conn].results_as_hash = true

require_relative '../lib/orm_object.rb'
require_relative '../lib/user.rb'
require_relative '../lib/tweet.rb'
require_relative '../lib/tweets_app.rb'
require_relative '../lib/diveable.rb'
require_relative '../lib/animal.rb'
require_relative '../lib/dog.rb'
require_relative '../lib/fish.rb'
require_relative '../lib/submarine.rb'
