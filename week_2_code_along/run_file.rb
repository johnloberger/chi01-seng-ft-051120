require 'bundler'
Bundler.setup
require_relative 'dragon.rb'
require_relative 'rider.rb'
require_relative 'saddle.rb'
require 'pry'


###  Dragon Instances ###
carl = Dragon.new("Carl", "grey", "male", false)
steph = Dragon.new("Steph", "yellow", "female", true)
jeff = Dragon.new("Jeff", "green", "male", true)
jasimine = Dragon.new("Jasimine", "purple", "female", true)
drogon = Dragon.new("Drogon", "black", "male", true)



###  Rider Instances ###
daenarys = Rider.new("Daenarys")
aerys = Rider.new("Aerys")
zoe = Rider.new("Zoe")
sid = Rider.new("Sid")
alex = Rider.new("Alex")
nick = Rider.new("Nick")
derek = Rider.new("Derek")
duke = Rider.new("Duke")


###  Saddle Instances ###
saddle_one = Saddle.new(steph, zoe)
saddle_two = Saddle.new(jeff, zoe)
saddle_three = Saddle.new(drogon, zoe)
saddle_four = Saddle.new(steph, sid)
saddle_five = Saddle.new(jasimine, sid)
saddle_six = Saddle.new(jasimine, alex)
# saddle_seven = Saddle.new(carl, derek)
saddle_eight = Saddle.new(drogon, derek)
saddle_nine = Saddle.new(jeff, nick)
saddle_ten = Saddle.new(jasimine, duke)


def all_instances
  #  Returns an array of all of the dragon, saddle, and rider instances
  Dragon.all + Saddle.all + Rider.all
end



binding.pry

"last thing"
