require 'sqlite3'
require 'pry'
require_relative 'db_connection'
require_relative 'movie_ticket'




puts "please enter your price search term"
user_price = gets.chomp

p MovieTicket.query(user_price)
# binding.pry
0

