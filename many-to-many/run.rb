# "Runner file", aka "Driver code", aka "the runnable app"
require_relative 'tweet'
require_relative 'user'
require_relative 'like'
require 'pry'

dad = User.new("coffee_dad")
mom = User.new("matcha_mom")

Tweet.new("message sample", mom)

tweet = dad.post_tweet("coffee")
fun = dad.post_tweet("fun with #coffee")
chaos = dad.post_tweet("the world is on fire but that's nothing compared to the fate of thos who have made it that way.")

mmm = mom.post_tweet("mmmmatcha")

dad.like_tweet(mmm)
mom.like_tweet(mmm)
dad.like_tweet(fun)

p Like.all

p mmm.likes.count

binding.pry
0