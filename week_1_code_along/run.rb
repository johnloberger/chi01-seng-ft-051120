require 'pry'
require_relative "brewery"
require_relative "beer_enthusiast"
require_relative "visit"



####### BeerEnthusiast INSTANCES ########
nick = BeerEnthusiast.new("Nick")
steven = BeerEnthusiast.new("Steven")
claud = BeerEnthusiast.new("Claud")
sid = BeerEnthusiast.new("Sid")
alex = BeerEnthusiast.new("Alex")



####### Brewery INSTANCES ########
founders = Brewery.new("Founders", 33)
three_floyds = Brewery.new("Three Floyds", 19)
bells = Brewery.new("Bells", 27)
goose_island = Brewery.new("Goose Island", 44)
creston = Brewery.new("Creston", 11)
vivant = Brewery.new("Brewery Vivant", 7)


####### Visit INSTANCES ########
visit_one = Visit.new(founders, steven, 1000)
visit_two = Visit.new(three_floyds, claud, 23)
visit_three = Visit.new(creston, alex, 88)
visit_four = Visit.new(bells, sid, 3)
visit_five = Visit.new(vivant, nick, 38)
visit_six = Visit.new(goose_island, steven, 999)
visit_seven = Visit.new(three_floyds, steven, 30)

binding.pry

"the end of code"
