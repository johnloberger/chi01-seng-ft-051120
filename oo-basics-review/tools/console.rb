require_relative '../config/environment.rb'
require 'pry'

# puts "in Console"

charlie = Player.new("Charlie", "M")
mike = Player.new("Mike", "L")

not_mikes = Jersey.new("L", "away", 0, charlie)
nine_nine = Jersey.new("M", "home", 99)
nine_nine_away = Jersey.new("M", "away", 99, charlie)
ten = Jersey.new("M", "sponsor appreciation day", 10)
six = Jersey.new("L", "home", 6)
sixteen = Jersey.new("S", "away", 16)


charlie.assign_jersey(nine_nine)

p charlie.possible_jerseys

# binding.pry
0