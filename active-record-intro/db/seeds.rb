Like.destroy_all
User.destroy_all
Tweet.destroy_all

dad = User.create(username: "coffee_dad")
mom = User.create(username: "matcha-mom")

one = Tweet.create(user_id: dad.id, message: "revenge is a dish best served percolated.")
two = dad.tweets.create(message: "love coffee")
three = Tweet.create(message: "#coffeee", user: dad)
four = Tweet.create(message: "matcha!!", user: mom)
five = Tweet.create(message: "MATCHAVATION MONDAY", user: mom)

Like.create(user: dad, tweet: four)

6.times do
  Like.create(user_id: User.ids.sample, tweet_id: Tweet.ids.sample)
end