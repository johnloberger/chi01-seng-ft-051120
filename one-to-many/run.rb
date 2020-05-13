# "Runner file", aka "Driver code", aka "the runnable app"
require_relative 'tweet'
require_relative 'user'
require 'pry'

dad = User.new("coffee_dad")
mom = User.new("matcha_mom")
# p dad.username

Tweet.new("message sample", mom)

tweet = dad.post_tweet("coffee")
fun = dad.post_tweet("fun with #coffee")
chaos = dad.post_tweet("the world is on fire but that's nothing compared to the fate of thos who have made it that way.")

mmm = mom.post_tweet("mmmmatcha")

p mom.tweets

binding.pry
0