require 'pry'
require_relative "brewery"
require_relative "beer_enthusiast"
require_relative "visit"



####### BeerEnthusiast INSTANCES ########

steven = BeerEnthusiast.new("Steven")




####### Brewery INSTANCES ########
founders = Brewery.new("Founders", 33)
three_floyds = Brewery.new("Three Floyds", 19)
bells = Brewery.new("Bells", 27)
goose_island = Brewery.new("Goose Island", 44)
creston = Brewery.new("Creston", 11)
vivant = Brewery.new("Brewery Vivant", 7)


####### Visit INSTANCES ########
visit_one = Visit.new(founders, steven, 1000)

visit_six = Visit.new(goose_island, steven, 999)
visit_seven = Visit.new(three_floyds, steven, 30)

steven.breweries_visited

"the end of code"
